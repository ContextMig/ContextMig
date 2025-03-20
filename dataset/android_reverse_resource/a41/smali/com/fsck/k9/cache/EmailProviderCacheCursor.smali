.class public Lcom/fsck/k9/cache/EmailProviderCacheCursor;
.super Landroid/database/CursorWrapper;
.source "EmailProviderCacheCursor.java"


# instance fields
.field private mCache:Lcom/fsck/k9/cache/EmailProviderCache;

.field private mFolderIdColumn:I

.field private mHiddenRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageIdColumn:I

.field private mPosition:I

.field private mThreadRootColumn:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 6
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    .line 32
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mHiddenRows:Ljava/util/List;

    .line 34
    invoke-static {p1, p3}, Lcom/fsck/k9/cache/EmailProviderCache;->getCache(Ljava/lang/String;Landroid/content/Context;)Lcom/fsck/k9/cache/EmailProviderCache;

    move-result-object v4

    iput-object v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mCache:Lcom/fsck/k9/cache/EmailProviderCache;

    .line 36
    const-string v4, "id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mMessageIdColumn:I

    .line 37
    const-string v4, "folder_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mFolderIdColumn:I

    .line 38
    const-string v4, "root"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mThreadRootColumn:I

    .line 40
    iget v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mMessageIdColumn:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mFolderIdColumn:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mThreadRootColumn:I

    if-ne v4, v5, :cond_1

    .line 41
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The supplied cursor needs to contain the following columns: id, folder_id, root"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    iget v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mMessageIdColumn:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 48
    .local v2, "messageId":J
    iget v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mFolderIdColumn:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 49
    .local v0, "folderId":J
    iget-object v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mCache:Lcom/fsck/k9/cache/EmailProviderCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/fsck/k9/cache/EmailProviderCache;->isMessageHidden(Ljava/lang/Long;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    iget-object v4, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mHiddenRows:Ljava/util/List;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "folderId":J
    .end local v2    # "messageId":J
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 57
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mHiddenRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getInt(I)I
    .locals 8
    .param p1, "columnIndex"    # I

    .prologue
    .line 61
    iget v6, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mMessageIdColumn:I

    invoke-virtual {p0, v6}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->getLong(I)J

    move-result-wide v2

    .line 62
    .local v2, "messageId":J
    iget v6, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mThreadRootColumn:I

    invoke-virtual {p0, v6}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->getLong(I)J

    move-result-wide v4

    .line 64
    .local v4, "threadRootId":J
    invoke-virtual {p0, p1}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "columnName":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mCache:Lcom/fsck/k9/cache/EmailProviderCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/fsck/k9/cache/EmailProviderCache;->getValueForMessage(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 76
    :goto_0
    return v6

    .line 71
    :cond_0
    iget-object v6, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mCache:Lcom/fsck/k9/cache/EmailProviderCache;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/fsck/k9/cache/EmailProviderCache;->getValueForThread(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 76
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mHiddenRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-super {p0}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mPosition:I

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mHiddenRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-super {p0}, Landroid/database/CursorWrapper;->isLast()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mPosition:I

    invoke-virtual {p0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 111
    iget-object v2, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mHiddenRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v2

    .line 124
    :goto_0
    return v2

    .line 115
    :cond_0
    iput p1, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mPosition:I

    .line 116
    move v1, p1

    .line 117
    .local v1, "newPosition":I
    iget-object v2, p0, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->mHiddenRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    .local v0, "hiddenRow":I
    if-le v0, v1, :cond_2

    .line 124
    .end local v0    # "hiddenRow":I
    :cond_1
    invoke-super {p0, v1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v2

    goto :goto_0

    .line 121
    .restart local v0    # "hiddenRow":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 122
    goto :goto_1
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/cache/EmailProviderCacheCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
