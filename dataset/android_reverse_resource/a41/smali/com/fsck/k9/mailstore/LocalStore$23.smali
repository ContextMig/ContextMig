.class Lcom/fsck/k9/mailstore/LocalStore$23;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->getFoldersAndUids(Ljava/util/List;Z)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$folderMap:Ljava/util/Map;

.field final synthetic val$messageIds:Ljava/util/List;

.field final synthetic val$threadedList:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;ZLjava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->val$messageIds:Ljava/util/List;

    iput-boolean p3, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->val$threadedList:Z

    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->val$folderMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDataFromCursor(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1264
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1265
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1266
    .local v1, "uid":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "folderName":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->val$folderMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1269
    .local v2, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 1270
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    .restart local v2    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->val$folderMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1277
    .end local v0    # "folderName":Ljava/lang/String;
    .end local v1    # "uid":Ljava/lang/String;
    .end local v2    # "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1279
    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selectionSet"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1241
    iget-boolean v1, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->val$threadedList:Z

    if-eqz v1, :cond_0

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT m.uid, f.name FROM threads t LEFT JOIN messages m ON (t.message_id = m.id) LEFT JOIN folders f ON (m.folder_id = f.id) WHERE m.empty = 0 AND m.deleted = 0 AND t.root"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/mailstore/LocalStore$23;->getDataFromCursor(Landroid/database/Cursor;)V

    .line 1260
    :goto_0
    return-void

    .line 1252
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT m.uid, f.name FROM messages m LEFT JOIN folders f ON (m.folder_id = f.id) WHERE m.empty = 0 AND m.id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .restart local v0    # "sql":Ljava/lang/String;
    invoke-virtual {p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/mailstore/LocalStore$23;->getDataFromCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getListItem(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->val$messageIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListSize()I
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->val$messageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public postDbWork()V
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$23;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 1285
    return-void
.end method
