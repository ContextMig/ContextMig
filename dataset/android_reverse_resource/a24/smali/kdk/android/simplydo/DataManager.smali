.class public Lkdk/android/simplydo/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkdk/android/simplydo/DataManager$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "simplydo.db"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field private helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-direct {v0, p1}, Lkdk/android/simplydo/DataManager$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    .line 77
    return-void
.end method

.method private countInactiveItemsInList(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "listId"    # I

    .prologue
    .line 306
    const-string v2, "select count(*) from items where list_id=? and active=1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 307
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 308
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    long-to-int v0, v2

    .line 309
    .local v0, "rv":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 311
    return v0
.end method

.method private countItemsInList(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "listId"    # I

    .prologue
    .line 295
    const-string v2, "select count(*) from items where list_id=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 296
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 297
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    long-to-int v0, v2

    .line 298
    .local v0, "rv":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 300
    return v0
.end method


# virtual methods
.method public createItem(ILjava/lang/String;)I
    .locals 7
    .param p1, "list_id"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v4, "SimplyDo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataManager.createItem(): Insert item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v4, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v4}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "insert into items (list_id,label,active) values (?,?,?)"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 234
    .local v3, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x1

    int-to-long v5, p1

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 235
    const/4 v4, 0x2

    invoke-virtual {v3, v4, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 236
    const/4 v4, 0x3

    const-wide/16 v5, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 237
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1

    .line 238
    .local v1, "id":J
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 239
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 241
    const-string v4, "SimplyDo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataManager.createItem(): Inserted item and got id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 244
    const-string v4, "SimplyDo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataManager.createItem(): Attempt to insert item failed. Got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from executeInsert()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    long-to-int v4, v1

    return v4
.end method

.method public createList(Ljava/lang/String;)V
    .locals 5
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v2, "SimplyDo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v2, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v2}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 221
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "insert into lists (label) values (?)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 222
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 224
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 225
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 226
    return-void
.end method

.method public deleteInactive(I)V
    .locals 5
    .param p1, "list_id"    # I

    .prologue
    .line 251
    const-string v2, "SimplyDo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting inactive items from list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v2}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 254
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "delete from items where list_id=? and active=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 255
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 256
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 257
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 258
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 259
    return-void
.end method

.method public deleteItem(I)V
    .locals 5
    .param p1, "itemId"    # I

    .prologue
    .line 281
    const-string v2, "SimplyDo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v2, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v2}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 285
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "delete from items where id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 286
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 287
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 288
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 289
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 290
    return-void
.end method

.method public deleteList(I)V
    .locals 7
    .param p1, "list_id"    # I

    .prologue
    const/4 v6, 0x1

    .line 263
    const-string v3, "SimplyDo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v3}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 267
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "delete from items where list_id=?"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 268
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    int-to-long v3, p1

    invoke-virtual {v1, v6, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 269
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 270
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 272
    const-string v3, "delete from lists where id=?"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 273
    .local v2, "stmt2":Landroid/database/sqlite/SQLiteStatement;
    int-to-long v3, p1

    invoke-virtual {v2, v6, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 274
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 275
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 277
    return-void
.end method

.method public fetchItems(ILjava/util/List;)V
    .locals 10
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ItemDesc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "rv":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ItemDesc;>;"
    iget-object v1, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v1}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 109
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "items"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "label"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "active"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "star"

    aput-object v4, v2, v3

    const-string v3, "list_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 112
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    new-instance v9, Lkdk/android/simplydo/ItemDesc;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-direct {v9, v3, v4, v1, v2}, Lkdk/android/simplydo/ItemDesc;-><init>(ILjava/lang/String;ZZ)V

    .line 121
    .local v9, "list":Lkdk/android/simplydo/ItemDesc;
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    .end local v9    # "list":Lkdk/android/simplydo/ItemDesc;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_2
    const-string v1, "SimplyDo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchItems returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 132
    return-void

    .line 116
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public fetchLists()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkdk/android/simplydo/ListDesc;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 81
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v10, "rv":Ljava/util/List;, "Ljava/util/List<Lkdk/android/simplydo/ListDesc;>;"
    iget-object v1, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v1}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "lists"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v2, v11

    const-string v4, "label"

    aput-object v4, v2, v12

    const-string v7, "id desc"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 86
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    new-instance v9, Lkdk/android/simplydo/ListDesc;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2, v11, v11}, Lkdk/android/simplydo/ListDesc;-><init>(ILjava/lang/String;II)V

    .line 91
    .local v9, "list":Lkdk/android/simplydo/ListDesc;
    invoke-virtual {v9}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lkdk/android/simplydo/DataManager;->countItemsInList(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v1

    invoke-virtual {v9, v1}, Lkdk/android/simplydo/ListDesc;->setTotalItems(I)V

    .line 92
    invoke-virtual {v9}, Lkdk/android/simplydo/ListDesc;->getId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lkdk/android/simplydo/DataManager;->countInactiveItemsInList(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v1

    invoke-virtual {v9, v1}, Lkdk/android/simplydo/ListDesc;->setActiveItems(I)V

    .line 93
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    .end local v9    # "list":Lkdk/android/simplydo/ListDesc;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_2
    const-string v1, "SimplyDo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchLists returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 103
    return-object v10
.end method

.method public moveItem(II)V
    .locals 5
    .param p1, "itemId"    # I
    .param p2, "toListId"    # I

    .prologue
    .line 205
    const-string v2, "SimplyDo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v2}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 208
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "update items set list_id=? where id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 209
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 210
    const/4 v2, 0x2

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 211
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 212
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 213
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 214
    return-void
.end method

.method public updateItemActiveness(IZ)V
    .locals 5
    .param p1, "itemId"    # I
    .param p2, "active"    # Z

    .prologue
    .line 137
    const-string v2, "SimplyDo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting active property of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v2}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 144
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "update items set active=? where id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 145
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x1

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x1

    :goto_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    const/4 v2, 0x2

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 150
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 154
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 155
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 159
    return-void

    .line 145
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public updateItemLabel(ILjava/lang/String;)V
    .locals 5
    .param p1, "itemId"    # I
    .param p2, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v2, "SimplyDo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating label of item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v2}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 181
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "update items set label=? where id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 182
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 183
    const/4 v2, 0x2

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 184
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 185
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 187
    return-void
.end method

.method public updateItemStarness(IZ)V
    .locals 5
    .param p1, "itemId"    # I
    .param p2, "star"    # Z

    .prologue
    .line 164
    const-string v2, "SimplyDo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting star property of  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v2}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 167
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "update items set star=? where id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 168
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x1

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x1

    :goto_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 169
    const/4 v2, 0x2

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 170
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 172
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 173
    return-void

    .line 168
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public updateListLabel(ILjava/lang/String;)V
    .locals 5
    .param p1, "listId"    # I
    .param p2, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v2, "SimplyDo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating label of list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lkdk/android/simplydo/DataManager;->helper:Lkdk/android/simplydo/DataManager$DatabaseHelper;

    invoke-virtual {v2}, Lkdk/android/simplydo/DataManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 195
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "update lists set label=? where id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 196
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 197
    const/4 v2, 0x2

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 198
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 199
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 200
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 201
    return-void
.end method
