.class Lcom/fsck/k9/mailstore/migrations/MigrationTo43;
.super Ljava/lang/Object;
.source "MigrationTo43.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixOutboxFolders(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V
    .locals 15
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "migrationsHelper"    # Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;

    .prologue
    .line 23
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v5

    .line 24
    .local v5, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    .line 25
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 29
    .local v1, "context":Landroid/content/Context;
    new-instance v9, Lcom/fsck/k9/mailstore/LocalFolder;

    const-string v10, "OUTBOX"

    invoke-direct {v9, v5, v10}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V

    .line 30
    .local v9, "oldOutbox":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalFolder;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 31
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v10, "name"

    const-string v11, "K9MAIL_INTERNAL_OUTBOX"

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v10, "folders"

    const-string v11, "name = ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "OUTBOX"

    aput-object v14, v12, v13

    invoke-virtual {p0, v10, v2, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    const-string v10, "Renamed folder OUTBOX to %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "K9MAIL_INTERNAL_OUTBOX"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_0
    const v10, 0x7f07038b

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "localizedOutbox":Ljava/lang/String;
    new-instance v8, Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-direct {v8, v5, v6}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V

    .line 40
    .local v8, "obsoleteOutbox":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v8}, Lcom/fsck/k9/mailstore/LocalFolder;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 42
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)Ljava/util/List;

    move-result-object v7

    .line 44
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 47
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v5, v10}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V

    .line 48
    .local v3, "drafts":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v8, v7, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    .line 52
    .end local v3    # "drafts":Lcom/fsck/k9/mailstore/LocalFolder;
    :cond_1
    invoke-virtual {v8}, Lcom/fsck/k9/mailstore/LocalFolder;->delete()V

    .line 53
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/fsck/k9/mailstore/LocalFolder;->delete(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v6    # "localizedOutbox":Ljava/lang/String;
    .end local v7    # "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    .end local v8    # "obsoleteOutbox":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v9    # "oldOutbox":Lcom/fsck/k9/mailstore/LocalFolder;
    :cond_2
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v4

    .line 56
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "Error trying to fix the outbox folders"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
