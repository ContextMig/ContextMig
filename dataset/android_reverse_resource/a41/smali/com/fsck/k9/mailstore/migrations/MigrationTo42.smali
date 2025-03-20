.class Lcom/fsck/k9/mailstore/migrations/MigrationTo42;
.super Ljava/lang/Object;
.source "MigrationTo42.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from41MoveFolderPreferences(Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V
    .locals 18
    .param p0, "migrationsHelper"    # Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;

    .prologue
    .line 19
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v9

    .line 20
    .local v9, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-interface/range {p0 .. p0}, Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v12

    .line 22
    .local v12, "storage":Lcom/fsck/k9/preferences/Storage;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 23
    .local v10, "startTime":J
    invoke-virtual {v12}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v3

    .line 25
    .local v3, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/fsck/k9/mailstore/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v7

    .line 26
    .local v7, "folders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Folder;

    .line 27
    .local v6, "folder":Lcom/fsck/k9/mail/Folder;
    instance-of v14, v6, Lcom/fsck/k9/mailstore/LocalFolder;

    if-eqz v14, :cond_0

    .line 28
    move-object v0, v6

    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder;

    move-object v8, v0

    .line 29
    .local v8, "lFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v8, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->save(Lcom/fsck/k9/preferences/StorageEditor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v3    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .end local v6    # "folder":Lcom/fsck/k9/mail/Folder;
    .end local v7    # "folders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .end local v8    # "lFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v9    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .end local v10    # "startTime":J
    .end local v12    # "storage":Lcom/fsck/k9/preferences/Storage;
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "Could not replace Preferences in upgrade from DB_VERSION 41"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v2, v13, v14}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 33
    .restart local v3    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .restart local v7    # "folders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .restart local v9    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    .restart local v10    # "startTime":J
    .restart local v12    # "storage":Lcom/fsck/k9/preferences/Storage;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 35
    .local v4, "endTime":J
    const-string v13, "Putting folder preferences for %d folders back into Preferences took %d ms"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 36
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sub-long v16, v4, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    .line 35
    invoke-static {v13, v14}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
