.class public Lcom/fsck/k9/preferences/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field private static storages:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/fsck/k9/preferences/Storage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DB_NAME:Ljava/lang/String;

.field private DB_VERSION:I

.field private context:Landroid/content/Context;

.field private volatile storage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private workingChangedKeys:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private workingDB:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private workingStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/preferences/Storage;->storages:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    .line 30
    const-string v0, "preferences_storage"

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->DB_NAME:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    .line 34
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/preferences/Storage;->context:Landroid/content/Context;

    .line 187
    iput-object p1, p0, Lcom/fsck/k9/preferences/Storage;->context:Landroid/content/Context;

    .line 188
    invoke-direct {p0}, Lcom/fsck/k9/preferences/Storage;->loadValues()V

    .line 189
    return-void
.end method

.method public static getStorage(Landroid/content/Context;)Lcom/fsck/k9/preferences/Storage;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 143
    sget-object v2, Lcom/fsck/k9/preferences/Storage;->storages:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/preferences/Storage;

    .line 144
    .local v1, "tmpStorage":Lcom/fsck/k9/preferences/Storage;
    if-eqz v1, :cond_0

    .line 145
    const-string v2, "Returning already existing Storage"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 156
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string v2, "Creating provisional storage"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    new-instance v1, Lcom/fsck/k9/preferences/Storage;

    .end local v1    # "tmpStorage":Lcom/fsck/k9/preferences/Storage;
    invoke-direct {v1, p0}, Lcom/fsck/k9/preferences/Storage;-><init>(Landroid/content/Context;)V

    .line 150
    .restart local v1    # "tmpStorage":Lcom/fsck/k9/preferences/Storage;
    sget-object v2, Lcom/fsck/k9/preferences/Storage;->storages:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/preferences/Storage;

    .line 151
    .local v0, "oldStorage":Lcom/fsck/k9/preferences/Storage;
    if-eqz v0, :cond_1

    .line 152
    const-string v2, "Another thread beat us to creating the Storage, returning that one"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_1
    const-string v2, "Returning the Storage we created"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 156
    goto :goto_0
.end method

.method private keyChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    .local v0, "changedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-void
.end method

.method private liveUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Storage;->keyChange(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private loadValues()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v14, 0x0

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 163
    .local v6, "startTime":J
    const-string v8, "Loading preferences from DB into Storage"

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 167
    .local v4, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/preferences/Storage;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 169
    const-string v8, "SELECT primkey, value FROM preferences_storage"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 170
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "key":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "value":Ljava/lang/String;
    const-string v8, "Loading key \'%s\', value = \'%s\'"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v8, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 177
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 178
    if-eqz v4, :cond_0

    .line 179
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 181
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 182
    .local v2, "endTime":J
    const-string v9, "Preferences load took %d ms"

    new-array v10, v11, [Ljava/lang/Object;

    sub-long v12, v2, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-static {v9, v10}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    throw v8

    .line 177
    .end local v2    # "endTime":J
    :cond_1
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 178
    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 181
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 182
    .restart local v2    # "endTime":J
    const-string v8, "Preferences load took %d ms"

    new-array v9, v11, [Ljava/lang/Object;

    sub-long v10, v2, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v8, v9}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method private openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 26

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/preferences/Storage;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/preferences/Storage;->DB_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 44
    .local v13, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_c

    .line 45
    const-string v3, "Updating preferences to urlencoded username/password"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const-string v3, "accountUuids"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/fsck/k9/preferences/Storage;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, "accountUuids":Ljava/lang/String;
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    .line 49
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 50
    .local v23, "uuids":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    const/4 v3, 0x0

    move/from16 v24, v3

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    aget-object v22, v23, v24

    .line 52
    .local v22, "uuid":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".storeUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/fsck/k9/preferences/Storage;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 53
    .local v17, "storeUriStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".transportUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/fsck/k9/preferences/Storage;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 55
    .local v18, "transportUriStr":Ljava/lang/String;
    new-instance v19, Ljava/net/URI;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 56
    .local v19, "uri":Ljava/net/URI;
    const/4 v4, 0x0

    .line 57
    .local v4, "newUserInfo":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 58
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 60
    .local v20, "userInfoParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-static {v3}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 61
    .local v21, "usernameEnc":Ljava/lang/String;
    const-string v16, ""

    .line 62
    .local v16, "passwordEnc":Ljava/lang/String;
    const-string v11, ""

    .line 63
    .local v11, "authType":Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-static {v5}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 66
    :cond_0
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x2

    if-le v3, v5, :cond_1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v5, v20, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 70
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .end local v11    # "authType":Ljava/lang/String;
    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 74
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v2, "newUri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 76
    .local v15, "newTransportUriStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".transportUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v15}, Lcom/fsck/k9/preferences/Storage;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v2    # "newUri":Ljava/net/URI;
    .end local v15    # "newTransportUriStr":Ljava/lang/String;
    :cond_3
    new-instance v19, Ljava/net/URI;

    .end local v19    # "uri":Ljava/net/URI;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v19    # "uri":Ljava/net/URI;
    const/4 v4, 0x0

    .line 81
    const-string v3, "imap"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 82
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 83
    .restart local v20    # "userInfoParts":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 84
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-static {v3}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 85
    .restart local v21    # "usernameEnc":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-static {v3}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 87
    .restart local v16    # "passwordEnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 118
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .restart local v2    # "newUri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 120
    .local v14, "newStoreUriStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".storeUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v14}, Lcom/fsck/k9/preferences/Storage;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v2    # "newUri":Ljava/net/URI;
    .end local v4    # "newUserInfo":Ljava/lang/String;
    .end local v14    # "newStoreUriStr":Ljava/lang/String;
    .end local v17    # "storeUriStr":Ljava/lang/String;
    .end local v18    # "transportUriStr":Ljava/lang/String;
    .end local v19    # "uri":Ljava/net/URI;
    :cond_5
    :goto_2
    add-int/lit8 v3, v24, 0x1

    move/from16 v24, v3

    goto/16 :goto_0

    .line 89
    .restart local v4    # "newUserInfo":Ljava/lang/String;
    .restart local v17    # "storeUriStr":Ljava/lang/String;
    .restart local v18    # "transportUriStr":Ljava/lang/String;
    .restart local v19    # "uri":Ljava/net/URI;
    .restart local v20    # "userInfoParts":[Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    aget-object v11, v20, v3

    .line 90
    .restart local v11    # "authType":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-static {v3}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 91
    .restart local v21    # "usernameEnc":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v20, v3

    invoke-static {v3}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 93
    .restart local v16    # "passwordEnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 95
    .end local v11    # "authType":Ljava/lang/String;
    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :cond_7
    const-string v3, "pop3"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 96
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v20

    .line 97
    .restart local v20    # "userInfoParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-static {v3}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 99
    .restart local v21    # "usernameEnc":Ljava/lang/String;
    const-string v16, ""

    .line 100
    .restart local v16    # "passwordEnc":Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_8

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-static {v5}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 104
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    goto/16 :goto_1

    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :cond_9
    const-string v3, "webdav"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v5, ":"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v20

    .line 107
    .restart local v20    # "userInfoParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-static {v3}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 109
    .restart local v21    # "usernameEnc":Ljava/lang/String;
    const-string v16, ""

    .line 110
    .restart local v16    # "passwordEnc":Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_a

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v5, v20, v5

    invoke-static {v5}, Lcom/fsck/k9/helper/UrlEncodingHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 114
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_1

    .line 122
    .end local v4    # "newUserInfo":Ljava/lang/String;
    .end local v16    # "passwordEnc":Ljava/lang/String;
    .end local v17    # "storeUriStr":Ljava/lang/String;
    .end local v18    # "transportUriStr":Ljava/lang/String;
    .end local v19    # "uri":Ljava/net/URI;
    .end local v20    # "userInfoParts":[Ljava/lang/String;
    .end local v21    # "usernameEnc":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 123
    .local v12, "e":Ljava/lang/Exception;
    const-string v3, "ooops"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v12, v3, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 128
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v22    # "uuid":Ljava/lang/String;
    .end local v23    # "uuids":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 131
    .end local v10    # "accountUuids":Ljava/lang/String;
    :cond_c
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    if-eq v3, v5, :cond_d

    .line 132
    const-string v3, "Creating Storage database"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const-string v3, "DROP TABLE IF EXISTS preferences_storage"

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v3, "CREATE TABLE preferences_storage (primkey TEXT PRIMARY KEY ON CONFLICT REPLACE, value TEXT)"

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fsck/k9/preferences/Storage;->DB_VERSION:I

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 138
    :cond_d
    return-object v13
.end method

.method private readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v8, 0x0

    .line 316
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 318
    .local v9, "value":Ljava/lang/String;
    :try_start_0
    const-string v1, "preferences_storage"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "primkey = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 327
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 329
    const-string v0, "Loading key \'%s\', value = \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    invoke-static {v8}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 335
    return-object v9

    .line 332
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method private writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 339
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "primkey"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "preferences_storage"

    const-string v4, "primkey"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 345
    .local v2, "result":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 346
    const-string v1, "Error writing key \'%s\', value = \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v1, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method doInTransaction(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "dbWork"    # Ljava/lang/Runnable;

    .prologue
    .line 228
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 229
    .local v2, "newStorage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    .line 230
    iget-object v3, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 232
    invoke-direct {p0}, Lcom/fsck/k9/preferences/Storage;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 233
    .local v1, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v0, "changedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 240
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 241
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 242
    iput-object v2, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v3, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 245
    iget-object v3, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 246
    iget-object v3, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 247
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 250
    return-void

    .line 244
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 245
    iget-object v4, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 246
    iget-object v4, p0, Lcom/fsck/k9/preferences/Storage;->workingChangedKeys:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 247
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method public edit()Lcom/fsck/k9/preferences/StorageEditor;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/fsck/k9/preferences/StorageEditor;

    invoke-direct {v0, p0}, Lcom/fsck/k9/preferences/StorageEditor;-><init>(Lcom/fsck/k9/preferences/Storage;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 273
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 277
    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .restart local p2    # "defValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 281
    iget-object v2, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 289
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .line 286
    .restart local p2    # "defValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v2, "Could not parse int"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 294
    iget-object v2, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 302
    .end local p2    # "defValue":J
    :goto_0
    return-wide p2

    .line 299
    .restart local p2    # "defValue":J
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v2, "Could not parse long"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v1, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 311
    .end local p2    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method put(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "insertables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "INSERT INTO preferences_storage (primkey, value) VALUES (?, ?)"

    .line 200
    .local v2, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 202
    .local v3, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    .local v4, "value":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 206
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 207
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 208
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 209
    invoke-direct {p0, v1, v4}, Lcom/fsck/k9/preferences/Storage;->liveUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 212
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingDB:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences_storage"

    const-string v2, "primkey = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/fsck/k9/preferences/Storage;->workingStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-direct {p0, p1}, Lcom/fsck/k9/preferences/Storage;->keyChange(Ljava/lang/String;)V

    .line 225
    return-void
.end method
