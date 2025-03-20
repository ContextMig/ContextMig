.class public Lcom/fsck/k9/helper/MergeCursorWithUniqueId;
.super Lcom/fsck/k9/helper/MergeCursor;
.source "MergeCursorWithUniqueId.java"


# static fields
.field private static final MAX_CURSORS:J = 0x8000L

.field private static final MAX_ID:J = 0xffffffffffffL

.field private static final SHIFT:I = 0x30


# instance fields
.field private mColumnCount:I

.field private mIdColumnIndex:I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/util/Comparator;)V
    .locals 4
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/database/Cursor;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/database/Cursor;>;"
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/helper/MergeCursor;-><init>([Landroid/database/Cursor;Ljava/util/Comparator;)V

    .line 13
    iput v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mColumnCount:I

    .line 14
    iput v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mIdColumnIndex:I

    .line 20
    array-length v0, p1

    int-to-long v0, v0

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This class only supports up to 32768 cursors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mColumnCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 29
    invoke-super {p0}, Lcom/fsck/k9/helper/MergeCursor;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mColumnCount:I

    .line 32
    :cond_0
    iget v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mColumnCount:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->getUniqueIdColumnIndex()I

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/helper/MergeCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->getUniqueIdColumnIndex()I

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/fsck/k9/helper/MergeCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 6
    .param p1, "columnIndex"    # I

    .prologue
    const/16 v5, 0x30

    .line 55
    invoke-virtual {p0}, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->getUniqueIdColumnIndex()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->getPerCursorId()J

    move-result-wide v0

    .line 57
    .local v0, "id":J
    const-wide v2, 0xffffffffffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sorry, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can only handle \'_id\' values up to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bits."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_0
    iget v2, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mActiveCursorIndex:I

    int-to-long v2, v2

    shl-long/2addr v2, v5

    add-long/2addr v2, v0

    .line 65
    .end local v0    # "id":J
    :goto_0
    return-wide v2

    :cond_1
    invoke-super {p0, p1}, Lcom/fsck/k9/helper/MergeCursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected getPerCursorId()J
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mIdColumnIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    const-string v0, "_id"

    invoke-super {p0, v0}, Lcom/fsck/k9/helper/MergeCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mIdColumnIndex:I

    .line 81
    :cond_0
    iget v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mIdColumnIndex:I

    invoke-super {p0, v0}, Lcom/fsck/k9/helper/MergeCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getUniqueIdColumnIndex()I
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mColumnCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 70
    invoke-super {p0}, Lcom/fsck/k9/helper/MergeCursor;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mColumnCount:I

    .line 73
    :cond_0
    iget v0, p0, Lcom/fsck/k9/helper/MergeCursorWithUniqueId;->mColumnCount:I

    return v0
.end method
