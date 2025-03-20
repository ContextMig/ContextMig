.class public Lcom/dropbox/sync/android/DbxTable;
.super Ljava/lang/Object;
.source "DbxTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxTable$1;,
        Lcom/dropbox/sync/android/DbxTable$QueryResult;,
        Lcom/dropbox/sync/android/DbxTable$ResolutionRule;
    }
.end annotation


# instance fields
.field private final mDatastore:Lcom/dropbox/sync/android/DbxDatastore;

.field private final mId:Ljava/lang/String;

.field private final mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 417
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 418
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/DbxDatastore;Ljava/lang/String;J)V
    .locals 3
    .param p1, "ds"    # Lcom/dropbox/sync/android/DbxDatastore;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "nativeHandle"    # J

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Datastore can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxTable;->mDatastore:Lcom/dropbox/sync/android/DbxDatastore;

    .line 145
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ID can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxTable;->mId:Ljava/lang/String;

    .line 147
    iput-wide p3, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    .line 148
    return-void
.end method

.method static checkId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxTable;->isValidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxTable;->throwIllegalTableId(Ljava/lang/String;)V

    .line 347
    :cond_0
    return-object p0
.end method

.method static checkWriteId(Ljava/lang/String;)V
    .locals 1
    .param p0, "tableId"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxTable;->isReservedId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxTable;->throwIllegalTableId(Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method

.method static isReservedId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 351
    if-eqz p0, :cond_0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 339
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ID can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxTable;->nativeIsValidId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native nativeFree(J)J
.end method

.method private static native nativeGet(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeGetOrInsert(JLjava/lang/String;[Ljava/lang/String;[J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeGetOrInsertEmpty(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeInsert(J[Ljava/lang/String;[J)J
.end method

.method private static native nativeInsertEmpty(J)J
.end method

.method private static native nativeIsValidId(Ljava/lang/String;)Z
.end method

.method private static native nativeQuery(J[Ljava/lang/String;[J)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeQueryAll(J)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static native nativeSetSimplePattern(JLjava/lang/String;Ljava/lang/String;)J
.end method

.method static throwIllegalTableId(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 421
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal table ID \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method checkBeforeWrite()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxTable;->checkWriteId(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method checkBeforeWrite(Ljava/lang/String;)V
    .locals 0
    .param p1, "recordId"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxTable;->checkBeforeWrite()V

    .line 366
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->checkWriteId(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method checkBeforeWrite(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "recordId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p2, "fieldNames":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxTable;->checkBeforeWrite(Ljava/lang/String;)V

    .line 376
    invoke-static {p2}, Lcom/dropbox/sync/android/DbxFields;->checkWriteFieldNames(Ljava/lang/Iterable;)V

    .line 377
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    if-ne p0, p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v1

    .line 382
    :cond_1
    instance-of v3, p1, Lcom/dropbox/sync/android/DbxTable;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 383
    check-cast v0, Lcom/dropbox/sync/android/DbxTable;

    .line 385
    .local v0, "ot":Lcom/dropbox/sync/android/DbxTable;
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxTable;->mDatastore:Lcom/dropbox/sync/android/DbxDatastore;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxTable;->mDatastore:Lcom/dropbox/sync/android/DbxDatastore;

    invoke-virtual {v3, v4}, Lcom/dropbox/sync/android/DbxDatastore;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxTable;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxTable;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/DbxTable;->nativeFree(J)J

    .line 153
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 154
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 196
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/dropbox/sync/android/DbxTable;->nativeGet(JLjava/lang/String;)J

    move-result-wide v0

    .line 197
    .local v0, "handle":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Lcom/dropbox/sync/android/DbxRecord;

    invoke-direct {v2, p0, v0, v1}, Lcom/dropbox/sync/android/DbxRecord;-><init>(Lcom/dropbox/sync/android/DbxTable;J)V

    .line 200
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDatastore()Lcom/dropbox/sync/android/DbxDatastore;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable;->mDatastore:Lcom/dropbox/sync/android/DbxDatastore;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxTable;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrInsert(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxTable;->checkBeforeWrite(Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/dropbox/sync/android/DbxTable;->nativeGetOrInsertEmpty(JLjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lcom/dropbox/sync/android/DbxRecord;-><init>(Lcom/dropbox/sync/android/DbxTable;J)V

    return-object v0
.end method

.method public getOrInsert(Ljava/lang/String;Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "fields"    # Lcom/dropbox/sync/android/DbxFields;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxFields;->fieldMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/sync/android/DbxTable;->getOrInsert(Ljava/lang/String;Ljava/util/Map;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method getOrInsert(Ljava/lang/String;Ljava/util/Map;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;)",
            "Lcom/dropbox/sync/android/DbxRecord;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/dropbox/sync/android/DbxTable;->checkBeforeWrite(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 233
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 234
    .local v1, "values":[J
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 236
    .local v0, "names":[Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v1, p2}, Lcom/dropbox/sync/android/NativeValue;->fillFieldMap([Ljava/lang/String;[JLjava/util/Map;)V

    .line 237
    new-instance v2, Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxRecord;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3, v0, v1}, Lcom/dropbox/sync/android/DbxTable;->nativeGetOrInsert(JLjava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v4

    invoke-direct {v2, p0, v4, v5}, Lcom/dropbox/sync/android/DbxRecord;-><init>(Lcom/dropbox/sync/android/DbxTable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-static {v1}, Lcom/dropbox/sync/android/NativeValue;->freeNativeValues([J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/dropbox/sync/android/NativeValue;->freeNativeValues([J)V

    throw v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 391
    const/16 v0, 0x1f

    .line 392
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 393
    .local v1, "result":I
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxTable;->mDatastore:Lcom/dropbox/sync/android/DbxDatastore;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxDatastore;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 394
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxTable;->mId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 395
    return v1
.end method

.method public insert()Lcom/dropbox/sync/android/DbxRecord;
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxTable;->checkBeforeWrite()V

    .line 250
    new-instance v0, Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    invoke-static {v2, v3}, Lcom/dropbox/sync/android/DbxTable;->nativeInsertEmpty(J)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lcom/dropbox/sync/android/DbxRecord;-><init>(Lcom/dropbox/sync/android/DbxTable;J)V

    return-object v0
.end method

.method public insert(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 1
    .param p1, "fields"    # Lcom/dropbox/sync/android/DbxFields;

    .prologue
    .line 258
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxFields;->fieldMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxTable;->insert(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    return-object v0
.end method

.method insert(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;)",
            "Lcom/dropbox/sync/android/DbxRecord;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/dropbox/sync/android/DbxTable;->checkBeforeWrite(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 267
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 268
    .local v1, "values":[J
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 270
    .local v0, "names":[Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v1, p1}, Lcom/dropbox/sync/android/NativeValue;->fillFieldMap([Ljava/lang/String;[JLjava/util/Map;)V

    .line 271
    new-instance v2, Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    invoke-static {v4, v5, v0, v1}, Lcom/dropbox/sync/android/DbxTable;->nativeInsert(J[Ljava/lang/String;[J)J

    move-result-wide v4

    invoke-direct {v2, p0, v4, v5}, Lcom/dropbox/sync/android/DbxRecord;-><init>(Lcom/dropbox/sync/android/DbxTable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {v1}, Lcom/dropbox/sync/android/NativeValue;->freeNativeValues([J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/dropbox/sync/android/NativeValue;->freeNativeValues([J)V

    throw v2
.end method

.method public query()Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v3, "out":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxRecord;>;"
    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    invoke-static {v6, v7}, Lcom/dropbox/sync/android/DbxTable;->nativeQueryAll(J)[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, v0, v1

    .line 285
    .local v4, "outHandle":J
    new-instance v6, Lcom/dropbox/sync/android/DbxRecord;

    invoke-direct {v6, p0, v4, v5}, Lcom/dropbox/sync/android/DbxRecord;-><init>(Lcom/dropbox/sync/android/DbxTable;J)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v4    # "outHandle":J
    :cond_0
    new-instance v6, Lcom/dropbox/sync/android/DbxTable$QueryResult;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v3, v7}, Lcom/dropbox/sync/android/DbxTable$QueryResult;-><init>(Lcom/dropbox/sync/android/DbxTable;Ljava/util/List;Lcom/dropbox/sync/android/DbxTable$1;)V

    return-object v6
.end method

.method public query(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .locals 2
    .param p1, "fields"    # Lcom/dropbox/sync/android/DbxFields;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxFields;->fieldMap()Ljava/util/Map;

    move-result-object v0

    .line 300
    .local v0, "rawFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxTable;->query()Lcom/dropbox/sync/android/DbxTable$QueryResult;

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxTable;->query(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxTable$QueryResult;

    move-result-object v1

    goto :goto_0
.end method

.method query(Ljava/util/Map;)Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;)",
            "Lcom/dropbox/sync/android/DbxTable$QueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v8

    new-array v5, v8, [J

    .line 317
    .local v5, "values":[J
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v8

    new-array v3, v8, [Ljava/lang/String;

    .line 319
    .local v3, "names":[Ljava/lang/String;
    :try_start_0
    invoke-static {v3, v5, p1}, Lcom/dropbox/sync/android/NativeValue;->fillFieldMap([Ljava/lang/String;[JLjava/util/Map;)V

    .line 320
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v4, "out":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxRecord;>;"
    iget-wide v8, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    invoke-static {v8, v9, v3, v5}, Lcom/dropbox/sync/android/DbxTable;->nativeQuery(J[Ljava/lang/String;[J)[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v6, v0, v1

    .line 322
    .local v6, "outHandle":J
    new-instance v8, Lcom/dropbox/sync/android/DbxRecord;

    invoke-direct {v8, p0, v6, v7}, Lcom/dropbox/sync/android/DbxRecord;-><init>(Lcom/dropbox/sync/android/DbxTable;J)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v6    # "outHandle":J
    :cond_0
    new-instance v8, Lcom/dropbox/sync/android/DbxTable$QueryResult;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v4, v9}, Lcom/dropbox/sync/android/DbxTable$QueryResult;-><init>(Lcom/dropbox/sync/android/DbxTable;Ljava/util/List;Lcom/dropbox/sync/android/DbxTable$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-static {v5}, Lcom/dropbox/sync/android/NativeValue;->freeNativeValues([J)V

    return-object v8

    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "out":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxRecord;>;"
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lcom/dropbox/sync/android/NativeValue;->freeNativeValues([J)V

    throw v8
.end method

.method public setResolutionRule(Ljava/lang/String;Lcom/dropbox/sync/android/DbxTable$ResolutionRule;)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "rule"    # Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    .prologue
    .line 186
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Rule name can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxTable;->mNativeHandle:J

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxFields;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->toNativeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/sync/android/DbxTable;->nativeSetSimplePattern(JLjava/lang/String;Ljava/lang/String;)J

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<DbxTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxTable;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
