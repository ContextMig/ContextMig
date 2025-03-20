.class public Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseIdComparator;
.super Ljava/lang/Object;
.source "MessageListFragmentComparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/fragment/MessageListFragmentComparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReverseIdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mIdColumn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseIdComparator;->mIdColumn:I

    return-void
.end method


# virtual methods
.method public compare(Landroid/database/Cursor;Landroid/database/Cursor;)I
    .locals 6
    .param p1, "cursor1"    # Landroid/database/Cursor;
    .param p2, "cursor2"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, -0x1

    .line 69
    iget v5, p0, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseIdComparator;->mIdColumn:I

    if-ne v5, v4, :cond_0

    .line 70
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseIdComparator;->mIdColumn:I

    .line 72
    :cond_0
    iget v5, p0, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseIdComparator;->mIdColumn:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 73
    .local v0, "o1Id":J
    iget v5, p0, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseIdComparator;->mIdColumn:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 74
    .local v2, "o2Id":J
    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 64
    check-cast p1, Landroid/database/Cursor;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$ReverseIdComparator;->compare(Landroid/database/Cursor;Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method
