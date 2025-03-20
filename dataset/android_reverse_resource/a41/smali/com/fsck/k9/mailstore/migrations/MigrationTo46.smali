.class Lcom/fsck/k9/mailstore/migrations/MigrationTo46;
.super Ljava/lang/Object;
.source "MigrationTo46.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessagesFlagColumns(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V
    .locals 23
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "migrationsHelper"    # Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;

    .prologue
    .line 16
    const-string v2, "ALTER TABLE messages ADD read INTEGER default 0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    const-string v2, "ALTER TABLE messages ADD flagged INTEGER default 0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    const-string v2, "ALTER TABLE messages ADD answered INTEGER default 0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    const-string v2, "ALTER TABLE messages ADD forwarded INTEGER default 0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "flags"

    aput-object v3, v4, v2

    .line 23
    .local v4, "projection":[Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 24
    .local v12, "cv":Landroid/content/ContentValues;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v13, "extraFlags":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Flag;>;"
    const-string v3, "messages"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 28
    .local v11, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 30
    .local v20, "id":J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 32
    .local v15, "flagList":Ljava/lang/String;
    const/16 v22, 0x0

    .line 33
    .local v22, "read":Z
    const/16 v17, 0x0

    .line 34
    .local v17, "flagged":Z
    const/4 v10, 0x0

    .line 35
    .local v10, "answered":Z
    const/16 v19, 0x0

    .line 37
    .local v19, "forwarded":Z
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 38
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 40
    .local v18, "flags":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v16, v18, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .local v16, "flagStr":Ljava/lang/String;
    :try_start_1
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;

    move-result-object v14

    .line 44
    .local v14, "flag":Lcom/fsck/k9/mail/Flag;
    sget-object v5, Lcom/fsck/k9/mailstore/migrations/MigrationTo46$1;->$SwitchMap$com$fsck$k9$mail$Flag:[I

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Flag;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 40
    .end local v14    # "flag":Lcom/fsck/k9/mail/Flag;
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    .restart local v14    # "flag":Lcom/fsck/k9/mail/Flag;
    :pswitch_1
    const/4 v10, 0x1

    .line 47
    goto :goto_2

    .line 54
    :pswitch_2
    const/16 v17, 0x1

    .line 55
    goto :goto_2

    .line 58
    :pswitch_3
    const/16 v19, 0x1

    .line 59
    goto :goto_2

    .line 62
    :pswitch_4
    const/16 v22, 0x1

    .line 63
    goto :goto_2

    .line 73
    :pswitch_5
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 77
    .end local v14    # "flag":Lcom/fsck/k9/mail/Flag;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 84
    .end local v16    # "flagStr":Ljava/lang/String;
    .end local v18    # "flags":[Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v2, "flags"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;->serializeFlags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "read"

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    const-string v2, "flagged"

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 87
    const-string v2, "answered"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 88
    const-string v2, "forwarded"

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    const-string v2, "messages"

    const-string v3, "id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 93
    invoke-interface {v13}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 96
    .end local v10    # "answered":Z
    .end local v15    # "flagList":Ljava/lang/String;
    .end local v17    # "flagged":Z
    .end local v19    # "forwarded":Z
    .end local v20    # "id":J
    .end local v22    # "read":Z
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 99
    const-string v2, "CREATE INDEX IF NOT EXISTS msg_read ON messages (read)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    const-string v2, "CREATE INDEX IF NOT EXISTS msg_flagged ON messages (flagged)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
