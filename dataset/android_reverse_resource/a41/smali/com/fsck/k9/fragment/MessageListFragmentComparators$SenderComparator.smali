.class public Lcom/fsck/k9/fragment/MessageListFragmentComparators$SenderComparator;
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
    name = "SenderComparator"
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
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/database/Cursor;Landroid/database/Cursor;)I
    .locals 3
    .param p1, "cursor1"    # Landroid/database/Cursor;
    .param p2, "cursor2"    # Landroid/database/Cursor;

    .prologue
    .line 161
    invoke-static {p1}, Lcom/fsck/k9/fragment/MlfUtils;->getSenderAddressFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "sender1":Ljava/lang/String;
    invoke-static {p2}, Lcom/fsck/k9/fragment/MlfUtils;->getSenderAddressFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "sender2":Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 165
    const/4 v2, 0x0

    .line 171
    :goto_0
    return v2

    .line 166
    :cond_0
    if-nez v0, :cond_1

    .line 167
    const/4 v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    if-nez v1, :cond_2

    .line 169
    const/4 v2, -0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 157
    check-cast p1, Landroid/database/Cursor;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$SenderComparator;->compare(Landroid/database/Cursor;Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method
