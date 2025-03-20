.class public Lcom/fsck/k9/fragment/MessageListFragmentComparators$DateComparator;
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
    name = "DateComparator"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/database/Cursor;Landroid/database/Cursor;)I
    .locals 5
    .param p1, "cursor1"    # Landroid/database/Cursor;
    .param p2, "cursor2"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x4

    .line 112
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 113
    .local v0, "o1Date":J
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 114
    .local v2, "o2Date":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 115
    const/4 v4, -0x1

    .line 119
    :goto_0
    return v4

    .line 116
    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 117
    const/4 v4, 0x0

    goto :goto_0

    .line 119
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 108
    check-cast p1, Landroid/database/Cursor;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$DateComparator;->compare(Landroid/database/Cursor;Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method
