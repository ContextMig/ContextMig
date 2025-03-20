.class Lcom/fsck/k9/mailstore/migrations/MigrationTo55;
.super Ljava/lang/Object;
.source "MigrationTo55.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFtsSearchTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V
    .locals 20
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "migrationsHelper"    # Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;

    .prologue
    .line 22
    const-string v13, "CREATE VIRTUAL TABLE messages_fulltext USING fts4 (fulltext)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v10

    .line 25
    .local v10, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v10}, Lcom/fsck/k9/mailstore/LocalStore;->getMessageFulltextCreator()Lcom/fsck/k9/message/extractors/MessageFulltextCreator;

    move-result-object v8

    .line 28
    .local v8, "fulltextCreator":Lcom/fsck/k9/message/extractors/MessageFulltextCreator;
    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v10, v13}, Lcom/fsck/k9/mailstore/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v5

    .line 29
    .local v5, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .local v2, "cv":Landroid/content/ContentValues;
    new-instance v6, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v6}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 31
    .local v6, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v13, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v6, v13}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 33
    .local v4, "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getAllMessageUids()Ljava/util/List;

    move-result-object v12

    .line 34
    .local v12, "messageUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 35
    .local v11, "messageUid":Ljava/lang/String;
    invoke-virtual {v4, v11}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v9

    .line 36
    .local v9, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v6, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    .line 38
    invoke-virtual {v8, v9}, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;->createFulltext(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "fulltext":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 40
    const-string v15, "fulltext for msg id %d is %d chars long"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 42
    const-string v15, "docid"

    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    const-string v15, "fulltext"

    invoke-virtual {v2, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v15, "messages_fulltext"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    .end local v5    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    .end local v6    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v7    # "fulltext":Ljava/lang/String;
    .end local v9    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v11    # "messageUid":Ljava/lang/String;
    .end local v12    # "messageUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v13, "error indexing fulltext - skipping rest, fts index is incomplete!"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v3, v13, v14}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .end local v3    # "e":Lcom/fsck/k9/mail/MessagingException;
    :cond_1
    return-void

    .line 46
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    .restart local v5    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    .restart local v6    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .restart local v7    # "fulltext":Ljava/lang/String;
    .restart local v9    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .restart local v11    # "messageUid":Ljava/lang/String;
    .restart local v12    # "messageUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string v15, "no fulltext for msg id %d :("

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v9}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
