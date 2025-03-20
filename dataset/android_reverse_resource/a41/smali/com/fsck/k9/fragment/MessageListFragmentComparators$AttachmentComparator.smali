.class public Lcom/fsck/k9/fragment/MessageListFragmentComparators$AttachmentComparator;
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
    name = "AttachmentComparator"
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
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/database/Cursor;Landroid/database/Cursor;)I
    .locals 6
    .param p1, "cursor1"    # Landroid/database/Cursor;
    .param p2, "cursor2"    # Landroid/database/Cursor;

    .prologue
    const/16 v5, 0xc

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_0

    move v0, v2

    .line 83
    .local v0, "o1HasAttachment":I
    :goto_0
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_1

    move v1, v2

    .line 84
    .local v1, "o2HasAttachment":I
    :goto_1
    sub-int v2, v0, v1

    return v2

    .end local v0    # "o1HasAttachment":I
    .end local v1    # "o2HasAttachment":I
    :cond_0
    move v0, v3

    .line 82
    goto :goto_0

    .restart local v0    # "o1HasAttachment":I
    :cond_1
    move v1, v3

    .line 83
    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 78
    check-cast p1, Landroid/database/Cursor;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$AttachmentComparator;->compare(Landroid/database/Cursor;Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method
