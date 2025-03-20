.class Lcom/fsck/k9/mailstore/migrations/MigrationTo51;
.super Ljava/lang/Object;
.source "MigrationTo51.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    }
.end annotation


# static fields
.field private static final DATA_LOCATION__IN_DATABASE:I = 0x1

.field private static final DATA_LOCATION__MISSING:I = 0x0

.field private static final DATA_LOCATION__ON_DISK:I = 0x2

.field private static final MESSAGE_PART_TYPE__HIDDEN_ATTACHMENT:I = 0x6

.field private static final MESSAGE_PART_TYPE__UNKNOWN:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanUpOldAttachmentDirectory(Ljava/io/File;)V
    .locals 9
    .param p0, "attachmentDirOld"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    const-string v1, "Old attachment directory doesn\'t exist: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    .line 170
    .local v0, "file":Ljava/io/File;
    const-string v5, "deleting stale attachment file: %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 172
    const-string v5, "Failed to delete stale attachement file: %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    const-string v1, "deleting old attachment directory"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    const-string v1, "Failed to delete old attachement directory: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static copyMessageMetadataToNewTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 183
    const-string v0, "INSERT INTO messages (id, deleted, folder_id, uid, subject, date, sender_list, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, preview, mime_type, normalized_subject_hash, empty, read, flagged, answered) SELECT id, deleted, folder_id, uid, subject, date, sender_list, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, preview, mime_type, normalized_subject_hash, empty, read, flagged, answered FROM messages_old"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static db51MigrateMessageFormat(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V
    .locals 36
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "migrationsHelper"    # Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;

    .prologue
    .line 62
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->renameOldMessagesTableAndCreateNew(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->copyMessageMetadataToNewTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    invoke-interface/range {p1 .. p1}, Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v26

    .line 68
    .local v26, "account":Lcom/fsck/k9/Account;
    sget-object v4, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v4}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v4

    .line 69
    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/Account;->getLocalStorageProviderId()Ljava/lang/String;

    move-result-object v8

    .line 68
    invoke-virtual {v4, v5, v8}, Lcom/fsck/k9/mailstore/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 70
    .local v19, "attachmentDirNew":Ljava/io/File;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->renameOldAttachmentDirAndCreateNew(Lcom/fsck/k9/Account;Ljava/io/File;)Ljava/io/File;

    move-result-object v18

    .line 72
    .local v18, "attachmentDirOld":Ljava/io/File;
    const-string v5, "messages_old"

    const/4 v4, 0x6

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "flags"

    aput-object v8, v6, v4

    const/4 v4, 0x2

    const-string v8, "html_content"

    aput-object v8, v6, v4

    const/4 v4, 0x3

    const-string v8, "text_content"

    aput-object v8, v6, v4

    const/4 v4, 0x4

    const-string v8, "mime_type"

    aput-object v8, v6, v4

    const/4 v4, 0x5

    const-string v8, "attachment_count"

    aput-object v8, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 76
    .local v35, "msgCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "migrating %d messages"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v28, "cv":Landroid/content/ContentValues;
    :goto_0
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 79
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 80
    .local v6, "messageId":J
    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 81
    .local v33, "messageFlags":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, "htmlContent":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 83
    .local v14, "textContent":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 84
    .local v15, "mimeType":Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v27

    .line 87
    .local v27, "attachmentCount":I
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-static {v0, v6, v7, v1, v2}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->updateFlagsForMessage(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V

    .line 88
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->loadHeaderFromHeadersTable(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/fsck/k9/mail/internet/MimeHeader;

    move-result-object v10

    .line 90
    .local v10, "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    invoke-static {}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->getNewRootState()Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object v11

    .line 92
    .local v11, "structureState":Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    const/16 v34, 0x0

    .line 95
    .local v34, "messageHadSpecialFormat":Z
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_2

    const-string v4, "multipart/encrypted"

    .line 96
    invoke-static {v15, v4}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v30, 0x1

    .line 97
    .local v30, "isMaybePgpMimeEncrypted":Z
    :goto_1
    if-eqz v30, :cond_0

    move-object/from16 v5, p0

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    .line 99
    invoke-static/range {v5 .. v11}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->migratePgpMimeEncryptedContent(Landroid/database/sqlite/SQLiteDatabase;JLjava/io/File;Ljava/io/File;Lcom/fsck/k9/mail/internet/MimeHeader;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object v32

    .line 101
    .local v32, "maybeStructureState":Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    if-eqz v32, :cond_0

    .line 102
    move-object/from16 v11, v32

    .line 103
    const/16 v34, 0x1

    .line 107
    .end local v32    # "maybeStructureState":Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    :cond_0
    if-nez v34, :cond_1

    .line 108
    if-nez v27, :cond_3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "text/plain"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "text/html"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const-string v8, "multipart/alternative"

    aput-object v8, v4, v5

    .line 109
    invoke-static {v15, v4}, Lcom/fsck/k9/helper/Utility;->isAnyMimeType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v31, 0x1

    .line 110
    .local v31, "isSimpleStructured":Z
    :goto_2
    if-eqz v31, :cond_4

    move-object/from16 v12, p0

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .line 111
    invoke-static/range {v12 .. v17}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->migrateSimpleMailContent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeHeader;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object v11

    .line 121
    .end local v31    # "isSimpleStructured":Z
    :cond_1
    :goto_3
    invoke-virtual/range {v28 .. v28}, Landroid/content/ContentValues;->clear()V

    .line 122
    const-string v4, "mime_type"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v4, "message_part_id"

    invoke-static {v11}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->access$000(Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    const-string v4, "attachment_count"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v4, "messages"

    const-string v5, "id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 126
    .end local v10    # "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    .end local v11    # "structureState":Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .end local v30    # "isMaybePgpMimeEncrypted":Z
    .end local v34    # "messageHadSpecialFormat":Z
    :catch_0
    move-exception v29

    .line 127
    .local v29, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "error inserting into database"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v29

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 132
    .end local v6    # "messageId":J
    .end local v13    # "htmlContent":Ljava/lang/String;
    .end local v14    # "textContent":Ljava/lang/String;
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v27    # "attachmentCount":I
    .end local v28    # "cv":Landroid/content/ContentValues;
    .end local v29    # "e":Ljava/io/IOException;
    .end local v33    # "messageFlags":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    throw v4

    .line 96
    .restart local v6    # "messageId":J
    .restart local v10    # "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    .restart local v11    # "structureState":Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .restart local v13    # "htmlContent":Ljava/lang/String;
    .restart local v14    # "textContent":Ljava/lang/String;
    .restart local v15    # "mimeType":Ljava/lang/String;
    .restart local v27    # "attachmentCount":I
    .restart local v28    # "cv":Landroid/content/ContentValues;
    .restart local v33    # "messageFlags":Ljava/lang/String;
    .restart local v34    # "messageHadSpecialFormat":Z
    :cond_2
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 109
    .restart local v30    # "isMaybePgpMimeEncrypted":Z
    :cond_3
    const/16 v31, 0x0

    goto :goto_2

    .line 114
    .restart local v31    # "isSimpleStructured":Z
    :cond_4
    :try_start_3
    const-string v15, "multipart/mixed"

    move-object/from16 v17, p0

    move-wide/from16 v20, v6

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    .line 116
    invoke-static/range {v17 .. v25}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->migrateComplexMailContent(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeHeader;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    goto :goto_3

    .line 132
    .end local v6    # "messageId":J
    .end local v10    # "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    .end local v11    # "structureState":Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .end local v13    # "htmlContent":Ljava/lang/String;
    .end local v14    # "textContent":Ljava/lang/String;
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v27    # "attachmentCount":I
    .end local v30    # "isMaybePgpMimeEncrypted":Z
    .end local v31    # "isSimpleStructured":Z
    .end local v33    # "messageFlags":Ljava/lang/String;
    .end local v34    # "messageHadSpecialFormat":Z
    :cond_5
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 135
    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->cleanUpOldAttachmentDirectory(Ljava/io/File;)V

    .line 137
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->dropOldMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    return-void
.end method

.method private static dropOldMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 158
    const-string v0, "Migration succeeded, dropping old tables."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const-string v0, "DROP TABLE messages_old"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v0, "DROP TABLE attachments"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v0, "DROP TABLE headers"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private static insertAttachments(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;JLcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 15
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "attachmentDirOld"    # Ljava/io/File;
    .param p2, "attachmentDirNew"    # Ljava/io/File;
    .param p3, "messageId"    # J
    .param p5, "structureState"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    .prologue
    .line 420
    const-string v1, "attachments"

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "size"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "mime_type"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "store_data"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "content_uri"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "content_id"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "content_disposition"

    aput-object v3, v2, v0

    const-string v3, "message_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 425
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 420
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 428
    .local v13, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 430
    .local v4, "id":J
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 431
    .local v6, "size":I
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "name":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 433
    .local v8, "mimeType":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 434
    .local v9, "storeData":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 435
    .local v10, "contentUriString":Ljava/lang/String;
    const/4 v0, 0x6

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 436
    .local v11, "contentId":Ljava/lang/String;
    const/4 v0, 0x7

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "contentDisposition":Ljava/lang/String;
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 439
    invoke-static/range {v0 .. v12}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertMimeAttachmentPart(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p5

    .line 442
    goto :goto_0

    .line 444
    .end local v4    # "id":J
    .end local v6    # "size":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "storeData":Ljava/lang/String;
    .end local v10    # "contentUriString":Ljava/lang/String;
    .end local v11    # "contentId":Ljava/lang/String;
    .end local v12    # "contentDisposition":Ljava/lang/String;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 447
    return-object p5

    .line 444
    :catchall_0
    move-exception v0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static insertBodyAsMultipartAlternative(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "structureState"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .param p2, "mimeHeader"    # Lcom/fsck/k9/mail/internet/MimeHeader;
    .param p3, "textContent"    # Ljava/lang/String;
    .param p4, "htmlContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 559
    if-nez p2, :cond_0

    .line 560
    new-instance p2, Lcom/fsck/k9/mail/internet/MimeHeader;

    .end local p2    # "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    invoke-direct {p2}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    .line 562
    .restart local p2    # "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    :cond_0
    const-string v7, "Content-Type"

    .line 563
    invoke-virtual {p2, v7}, Lcom/fsck/k9/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "boundary"

    .line 562
    invoke-static {v7, v8}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "boundary":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 565
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_1
    const-string v7, "Content-Type"

    const-string v8, "multipart/alternative; boundary=\"%s\";"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v0, v9, v3

    .line 568
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 567
    invoke-virtual {p2, v7, v8}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    if-nez p3, :cond_2

    if-eqz p4, :cond_5

    :cond_2
    move v2, v6

    .line 573
    .local v2, "dataLocation":I
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 574
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v7, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    const-string v7, "data_location"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const-string v7, "mime_type"

    const-string v8, "multipart/alternative"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v7, "header"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v7, "boundary"

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->applyValues(Landroid/content/ContentValues;)V

    .line 581
    const-string v7, "message_parts"

    invoke-virtual {p0, v7, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 582
    .local v4, "multipartAlternativePartId":J
    invoke-virtual {p1, v4, v5}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextMultipartChild(J)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p1

    .line 584
    if-eqz p3, :cond_3

    .line 585
    invoke-static {p0, p1, v10, p3, v3}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertTextualPartIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p1

    .line 588
    :cond_3
    if-eqz p4, :cond_4

    .line 589
    invoke-static {p0, p1, v10, p4, v6}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertTextualPartIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p1

    .line 592
    :cond_4
    return-object p1

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "dataLocation":I
    .end local v4    # "multipartAlternativePartId":J
    :cond_5
    move v2, v3

    .line 570
    goto :goto_0
.end method

.method private static insertMimeAttachmentPart(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 26
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "attachmentDirOld"    # Ljava/io/File;
    .param p2, "attachmentDirNew"    # Ljava/io/File;
    .param p3, "structureState"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .param p4, "id"    # J
    .param p6, "size"    # I
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "mimeType"    # Ljava/lang/String;
    .param p9, "storeData"    # Ljava/lang/String;
    .param p10, "contentUriString"    # Ljava/lang/String;
    .param p11, "contentId"    # Ljava/lang/String;
    .param p12, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 454
    const-string v20, "processing attachment %d, %s, %s, %s, %s"

    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 455
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object p7, v21, v22

    const/16 v22, 0x2

    aput-object p8, v21, v22

    const/16 v22, 0x3

    aput-object p9, v21, v22

    const/16 v22, 0x4

    aput-object p10, v21, v22

    .line 454
    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    if-nez p12, :cond_0

    .line 462
    const-string p12, "attachment"

    .line 465
    :cond_0
    new-instance v15, Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-direct {v15}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    .line 466
    .local v15, "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    const-string v20, "Content-Type"

    const-string v21, "%s;\r\n name=\"%s\""

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p8, v22, v23

    const/16 v23, 0x1

    aput-object p7, v22, v23

    .line 467
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 466
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v20, "Content-Disposition"

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v22, "%s;\r\n filename=\"%s\";\r\n size=%d"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p12, v23, v24

    const/16 v24, 0x1

    aput-object p7, v23, v24

    const/16 v24, 0x2

    .line 470
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    .line 469
    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 468
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-eqz p11, :cond_1

    .line 472
    const-string v20, "Content-ID"

    move-object/from16 v0, v20

    move-object/from16 v1, p11

    invoke-virtual {v15, v0, v1}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_1
    if-eqz p10, :cond_4

    const/4 v11, 0x1

    .line 477
    .local v11, "hasData":Z
    :goto_0
    if-eqz v11, :cond_8

    .line 479
    :try_start_0
    invoke-static/range {p10 .. p10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 480
    .local v7, "contentUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    .line 481
    .local v17, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 482
    .local v6, "attachmentId":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v20, v20, p4

    if-nez v20, :cond_5

    const/4 v13, 0x1

    .line 484
    .local v13, "isMatchingAttachmentId":Z
    :goto_1
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    .local v4, "attachmentFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    .line 487
    .local v12, "isExistingAttachmentFile":Z
    if-nez v13, :cond_6

    .line 488
    const-string v20, "mismatched attachment id. mark as missing"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    const/4 v5, 0x0

    .line 503
    .end local v4    # "attachmentFile":Ljava/io/File;
    .end local v6    # "attachmentId":Ljava/lang/String;
    .end local v7    # "contentUri":Landroid/net/Uri;
    .end local v12    # "isExistingAttachmentFile":Z
    .end local v13    # "isMatchingAttachmentId":Z
    .end local v17    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "attachmentFileToMove":Ljava/io/File;
    :goto_2
    if-nez v5, :cond_2

    .line 504
    const-string v20, "matching attachment is in local cache"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    :cond_2
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, "inline"

    move-object/from16 v0, v20

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    const/4 v10, 0x1

    .line 508
    .local v10, "hasContentTypeAndIsInline":Z
    :goto_3
    if-eqz v10, :cond_a

    const/4 v14, 0x6

    .line 511
    .local v14, "messageType":I
    :goto_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 512
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v20, "type"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    const-string v20, "mime_type"

    move-object/from16 v0, v20

    move-object/from16 v1, p8

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v20, "decoded_body_size"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    const-string v20, "display_name"

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v20, "header"

    invoke-virtual {v15}, Lcom/fsck/k9/mail/internet/MimeHeader;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v20, "encoding"

    const-string v21, "binary"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v21, "data_location"

    if-eqz v5, :cond_b

    const/16 v20, 0x2

    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v20, "content_id"

    move-object/from16 v0, v20

    move-object/from16 v1, p11

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v20, "server_extra"

    move-object/from16 v0, v20

    move-object/from16 v1, p9

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->applyValues(Landroid/content/ContentValues;)V

    .line 523
    const-string v20, "message_parts"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 524
    .local v18, "partId":J
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextChild(J)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p3

    .line 526
    if-eqz v5, :cond_3

    .line 527
    new-instance v20, Ljava/io/File;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    .line 528
    .local v16, "moveOk":Z
    if-nez v16, :cond_3

    .line 529
    const-string v20, "Moving attachment to new dir failed!"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    .end local v16    # "moveOk":Z
    :cond_3
    return-object p3

    .line 475
    .end local v5    # "attachmentFileToMove":Ljava/io/File;
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v10    # "hasContentTypeAndIsInline":Z
    .end local v11    # "hasData":Z
    .end local v14    # "messageType":I
    .end local v18    # "partId":J
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 482
    .restart local v6    # "attachmentId":Ljava/lang/String;
    .restart local v7    # "contentUri":Landroid/net/Uri;
    .restart local v11    # "hasData":Z
    .restart local v17    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 490
    .restart local v4    # "attachmentFile":Ljava/io/File;
    .restart local v12    # "isExistingAttachmentFile":Z
    .restart local v13    # "isMatchingAttachmentId":Z
    :cond_6
    if-nez v12, :cond_7

    .line 491
    :try_start_1
    const-string v20, "attached file doesn\'t exist. mark as missing"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 492
    const/4 v5, 0x0

    .restart local v5    # "attachmentFileToMove":Ljava/io/File;
    goto/16 :goto_2

    .line 494
    .end local v5    # "attachmentFileToMove":Ljava/io/File;
    :cond_7
    move-object v5, v4

    .restart local v5    # "attachmentFileToMove":Ljava/io/File;
    goto/16 :goto_2

    .line 496
    .end local v4    # "attachmentFile":Ljava/io/File;
    .end local v5    # "attachmentFileToMove":Ljava/io/File;
    .end local v6    # "attachmentId":Ljava/lang/String;
    .end local v7    # "contentUri":Landroid/net/Uri;
    .end local v12    # "isExistingAttachmentFile":Z
    .end local v13    # "isMatchingAttachmentId":Z
    .end local v17    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 498
    .local v9, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 499
    .restart local v5    # "attachmentFileToMove":Ljava/io/File;
    goto/16 :goto_2

    .line 501
    .end local v5    # "attachmentFileToMove":Ljava/io/File;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "attachmentFileToMove":Ljava/io/File;
    goto/16 :goto_2

    .line 507
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 508
    .restart local v10    # "hasContentTypeAndIsInline":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 518
    .restart local v8    # "cv":Landroid/content/ContentValues;
    .restart local v14    # "messageType":I
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_5
.end method

.method private static insertTextualPartIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "structureState"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .param p2, "mimeHeader"    # Lcom/fsck/k9/mail/internet/MimeHeader;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "isHtml"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 597
    if-nez p2, :cond_0

    .line 598
    new-instance p2, Lcom/fsck/k9/mail/internet/MimeHeader;

    .end local p2    # "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    invoke-direct {p2}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    .line 600
    .restart local p2    # "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    :cond_0
    const-string v9, "Content-Type"

    if-eqz p4, :cond_1

    const-string v8, "text/html; charset=\"utf-8\""

    :goto_0
    invoke-virtual {p2, v9, v8}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v8, "Content-Transfer-Encoding"

    const-string v9, "quoted-printable"

    invoke-virtual {p2, v8, v9}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    if-eqz p3, :cond_2

    .line 608
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 609
    .local v1, "contentOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;

    invoke-direct {v5, v1, v10}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 611
    .local v5, "quotedPrintableOutputStream":Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write([B)V

    .line 612
    invoke-virtual {v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->flush()V

    .line 614
    const/4 v3, 0x1

    .line 615
    .local v3, "dataLocation":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 616
    .local v0, "contentBytes":[B
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    .line 623
    .end local v1    # "contentOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "quotedPrintableOutputStream":Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
    .local v4, "decodedBodySize":I
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 624
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v8, "type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v8, "data_location"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    const-string v9, "mime_type"

    if-eqz p4, :cond_3

    const-string v8, "text/html"

    :goto_2
    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v8, "header"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v8, "data"

    invoke-virtual {v2, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 629
    const-string v8, "decoded_body_size"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    const-string v8, "encoding"

    const-string v9, "quoted-printable"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v8, "charset"

    const-string v9, "utf-8"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1, v2}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->applyValues(Landroid/content/ContentValues;)V

    .line 634
    const-string v8, "message_parts"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 635
    .local v6, "partId":J
    invoke-virtual {p1, v6, v7}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextChild(J)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object v8

    return-object v8

    .line 600
    .end local v0    # "contentBytes":[B
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "dataLocation":I
    .end local v4    # "decodedBodySize":I
    .end local v6    # "partId":J
    :cond_1
    const-string v8, "text/plain; charset=\"utf-8\""

    goto :goto_0

    .line 618
    :cond_2
    const/4 v3, 0x0

    .line 619
    .restart local v3    # "dataLocation":I
    const/4 v0, 0x0

    .line 620
    .restart local v0    # "contentBytes":[B
    const/4 v4, 0x0

    .restart local v4    # "decodedBodySize":I
    goto :goto_1

    .line 626
    .restart local v2    # "cv":Landroid/content/ContentValues;
    :cond_3
    const-string v8, "text/plain"

    goto :goto_2
.end method

.method private static loadHeaderFromHeadersTable(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/fsck/k9/mail/internet/MimeHeader;
    .locals 13
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "messageId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 639
    const-string v1, "headers"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v4

    const-string v3, "message_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    .line 641
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 639
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 643
    .local v8, "headersCursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v9, Lcom/fsck/k9/mail/internet/MimeHeader;

    invoke-direct {v9}, Lcom/fsck/k9/mail/internet/MimeHeader;-><init>()V

    .line 644
    .local v9, "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 646
    .local v10, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 647
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v9, v10, v11}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 651
    .end local v9    # "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v9    # "mimeHeader":Lcom/fsck/k9/mail/internet/MimeHeader;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 649
    return-object v9
.end method

.method private static migrateComplexMailContent(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;JLjava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeHeader;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 15
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "attachmentDirOld"    # Ljava/io/File;
    .param p2, "attachmentDirNew"    # Ljava/io/File;
    .param p3, "messageId"    # J
    .param p5, "htmlContent"    # Ljava/lang/String;
    .param p6, "textContent"    # Ljava/lang/String;
    .param p7, "mimeHeader"    # Lcom/fsck/k9/mail/internet/MimeHeader;
    .param p8, "structureState"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    const-string v5, "Processing mail with complex data structure as multipart/mixed"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    const-string v5, "Content-Type"

    .line 347
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "boundary"

    .line 346
    invoke-static {v5, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "boundary":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 349
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v4

    .line 351
    :cond_0
    const-string v5, "Content-Type"

    const-string v6, "multipart/mixed; boundary=\"%s\";"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 352
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 351
    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v6}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v11, "cv":Landroid/content/ContentValues;
    const-string v5, "type"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v5, "data_location"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v5, "mime_type"

    const-string v6, "multipart/mixed"

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v5, "header"

    invoke-virtual/range {p7 .. p7}, Lcom/fsck/k9/mail/internet/MimeHeader;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v5, "boundary"

    invoke-virtual {v11, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->applyValues(Landroid/content/ContentValues;)V

    .line 362
    const-string v5, "message_parts"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 363
    .local v12, "rootMessagePartId":J
    move-object/from16 v0, p8

    invoke-virtual {v0, v12, v13}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextMultipartChild(J)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p8

    .line 365
    if-eqz p5, :cond_1

    .line 366
    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    invoke-static {p0, v0, v1, v2}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->replaceContentUriWithContentIdInHtmlPart(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 369
    :cond_1
    if-eqz p6, :cond_3

    if-eqz p5, :cond_3

    .line 370
    const/4 v5, 0x0

    move-object/from16 v0, p8

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    invoke-static {p0, v0, v5, v1, v2}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertBodyAsMultipartAlternative(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p8

    .line 371
    invoke-virtual/range {p8 .. p8}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->popParent()Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p8

    :cond_2
    :goto_0
    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p8

    .line 378
    invoke-static/range {v5 .. v10}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertAttachments(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;JLcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p8

    .line 380
    return-object p8

    .line 372
    :cond_3
    if-eqz p6, :cond_4

    .line 373
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p8

    move-object/from16 v1, p6

    invoke-static {p0, v0, v5, v1, v6}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertTextualPartIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p8

    goto :goto_0

    .line 374
    :cond_4
    if-eqz p5, :cond_2

    .line 375
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p8

    move-object/from16 v1, p5

    invoke-static {p0, v0, v5, v1, v6}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertTextualPartIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p8

    goto :goto_0
.end method

.method private static migratePgpMimeEncryptedContent(Landroid/database/sqlite/SQLiteDatabase;JLjava/io/File;Ljava/io/File;Lcom/fsck/k9/mail/internet/MimeHeader;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 45
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "messageId"    # J
    .param p3, "attachmentDirOld"    # Ljava/io/File;
    .param p4, "attachmentDirNew"    # Ljava/io/File;
    .param p5, "mimeHeader"    # Lcom/fsck/k9/mail/internet/MimeHeader;
    .param p6, "structureState"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 258
    const-string v4, "Attempting to migrate multipart/encrypted as pgp/mime"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const-string v11, "(mime_type LIKE \'application/pgp-encrypted\') DESC"

    .line 263
    .local v11, "orderBy":Ljava/lang/String;
    const-string v5, "attachments"

    const/16 v4, 0x8

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "size"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "name"

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const-string v7, "mime_type"

    aput-object v7, v6, v4

    const/4 v4, 0x4

    const-string v7, "store_data"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    const-string v7, "content_uri"

    aput-object v7, v6, v4

    const/4 v4, 0x6

    const-string v7, "content_id"

    aput-object v7, v6, v4

    const/4 v4, 0x7

    const-string v7, "content_disposition"

    aput-object v7, v6, v4

    const-string v7, "message_id = ?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 268
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    .line 263
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 271
    .local v38, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 272
    const-string v4, "Found multipart/encrypted but bad number of attachments, handling as regular mail"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    const/4 v4, 0x0

    .line 334
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 337
    :goto_0
    return-object v4

    .line 276
    :cond_0
    :try_start_1
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    .line 278
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 279
    .local v16, "firstPartId":J
    const/4 v4, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 280
    .local v18, "firstPartSize":I
    const/4 v4, 0x2

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 281
    .local v19, "firstPartName":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 282
    .local v40, "firstPartMimeType":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 283
    .local v21, "firstPartStoreData":Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 285
    .local v22, "firstPartContentUriString":Ljava/lang/String;
    const-string v4, "application/pgp-encrypted"

    move-object/from16 v0, v40

    invoke-static {v0, v4}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    const-string v4, "First part in multipart/encrypted wasn\'t application/pgp-encrypted, not handling as pgp/mime"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    const/4 v4, 0x0

    .line 334
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 291
    :cond_1
    :try_start_2
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToNext()Z

    .line 293
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 294
    .local v28, "secondPartId":J
    const/4 v4, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 295
    .local v30, "secondPartSize":I
    const/4 v4, 0x2

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 296
    .local v31, "secondPartName":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 297
    .local v41, "secondPartMimeType":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 298
    .local v33, "secondPartStoreData":Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 300
    .local v34, "secondPartContentUriString":Ljava/lang/String;
    const-string v4, "application/octet-stream"

    move-object/from16 v0, v41

    invoke-static {v0, v4}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 301
    const-string v4, "First part in multipart/encrypted wasn\'t application/octet-stream, not handling as pgp/mime"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    const/4 v4, 0x0

    .line 334
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 305
    :cond_2
    :try_start_3
    const-string v4, "Content-Type"

    .line 306
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "boundary"

    .line 305
    invoke-static {v4, v5}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 307
    .local v37, "boundary":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 308
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v37

    .line 310
    :cond_3
    const-string v4, "Content-Type"

    const-string v5, "multipart/encrypted; boundary=\"%s\"; protocol=\"application/pgp-encrypted\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v37, v6, v7

    .line 311
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 310
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/mail/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 314
    .local v39, "cv":Landroid/content/ContentValues;
    const-string v4, "type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v4, "data_location"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v4, "mime_type"

    const-string v5, "multipart/encrypted"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v4, "header"

    invoke-virtual/range {p5 .. p5}, Lcom/fsck/k9/mail/internet/MimeHeader;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v4, "boundary"

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->applyValues(Landroid/content/ContentValues;)V

    .line 321
    const-string v4, "message_parts"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v42

    .line 322
    .local v42, "rootMessagePartId":J
    move-object/from16 v0, p6

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextMultipartChild(J)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p6

    .line 324
    const-string v20, "application/pgp-encrypted"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p6

    .line 325
    invoke-static/range {v12 .. v24}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertMimeAttachmentPart(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object p6

    .line 329
    const-string v32, "application/octet-stream"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v24, p0

    move-object/from16 v25, p3

    move-object/from16 v26, p4

    move-object/from16 v27, p6

    .line 330
    invoke-static/range {v24 .. v36}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertMimeAttachmentPart(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p6

    .line 334
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    move-object/from16 v4, p6

    .line 337
    goto/16 :goto_0

    .line 334
    .end local v16    # "firstPartId":J
    .end local v18    # "firstPartSize":I
    .end local v19    # "firstPartName":Ljava/lang/String;
    .end local v21    # "firstPartStoreData":Ljava/lang/String;
    .end local v22    # "firstPartContentUriString":Ljava/lang/String;
    .end local v28    # "secondPartId":J
    .end local v30    # "secondPartSize":I
    .end local v31    # "secondPartName":Ljava/lang/String;
    .end local v33    # "secondPartStoreData":Ljava/lang/String;
    .end local v34    # "secondPartContentUriString":Ljava/lang/String;
    .end local v37    # "boundary":Ljava/lang/String;
    .end local v39    # "cv":Landroid/content/ContentValues;
    .end local v40    # "firstPartMimeType":Ljava/lang/String;
    .end local v41    # "secondPartMimeType":Ljava/lang/String;
    .end local v42    # "rootMessagePartId":J
    :catchall_0
    move-exception v4

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private static migrateSimpleMailContent(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeHeader;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "htmlContent"    # Ljava/lang/String;
    .param p2, "textContent"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "mimeHeader"    # Lcom/fsck/k9/mail/internet/MimeHeader;
    .param p5, "structureState"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 405
    const-string v0, "Processing mail with simple structure"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    const-string v0, "text/plain"

    invoke-static {p3, v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {p0, p5, p4, p2, v2}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertTextualPartIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    .line 409
    :cond_0
    const-string v0, "text/html"

    invoke-static {p3, v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x1

    invoke-static {p0, p5, p4, p1, v0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertTextualPartIntoDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    const-string v0, "multipart/alternative"

    invoke-static {p3, v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    invoke-static {p0, p5, p4, p2, p1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->insertBodyAsMultipartAlternative(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;Lcom/fsck/k9/mail/internet/MimeHeader;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    move-result-object v0

    goto :goto_0

    .line 414
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migrateSimpleMailContent cannot handle mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static renameOldAttachmentDirAndCreateNew(Lcom/fsck/k9/Account;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "attachmentDirNew"    # Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".old_attach-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v0, "attachmentDirOld":Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 145
    .local v2, "moveOk":Z
    if-nez v2, :cond_0

    .line 147
    const-string v3, "Error moving attachment dir! All attachments might be lost!"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 150
    .local v1, "mkdirOk":Z
    if-nez v1, :cond_1

    .line 152
    const-string v3, "Error creating new attachment dir!"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_1
    return-object v0
.end method

.method private static renameOldMessagesTableAndCreateNew(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 197
    const-string v0, "ALTER TABLE messages RENAME TO messages_old"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    const-string v0, "CREATE TABLE messages (id INTEGER PRIMARY KEY, deleted INTEGER default 0, folder_id INTEGER, uid TEXT, subject TEXT, date INTEGER, flags TEXT, sender_list TEXT, to_list TEXT, cc_list TEXT, bcc_list TEXT, reply_to_list TEXT, attachment_count INTEGER, internal_date INTEGER, message_id TEXT, preview TEXT, mime_type TEXT, normalized_subject_hash INTEGER, empty INTEGER default 0, read INTEGER default 0, flagged INTEGER default 0, answered INTEGER default 0, forwarded INTEGER default 0, message_part_id INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    const-string v0, "CREATE TABLE message_parts (id INTEGER PRIMARY KEY, type INTEGER NOT NULL, root INTEGER, parent INTEGER NOT NULL, seq INTEGER NOT NULL, mime_type TEXT, decoded_body_size INTEGER, display_name TEXT, header TEXT, encoding TEXT, charset TEXT, data_location INTEGER NOT NULL, data BLOB, preamble TEXT, epilogue TEXT, boundary TEXT, content_id TEXT, server_extra TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const-string v0, "CREATE TRIGGER set_message_part_root AFTER INSERT ON message_parts BEGIN UPDATE message_parts SET root=id WHERE root IS NULL AND ROWID = NEW.ROWID; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private static replaceContentUriWithContentIdInHtmlPart(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "messageId"    # J
    .param p3, "htmlContent"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 385
    const-string v1, "attachments"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "content_uri"

    aput-object v0, v2, v6

    const-string v0, "content_id"

    aput-object v0, v2, v4

    const-string v3, "content_id IS NOT NULL AND message_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    .line 386
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 385
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 389
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 391
    .local v9, "contentUriString":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "contentId":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p3

    .line 394
    goto :goto_0

    .line 396
    .end local v8    # "contentId":Ljava/lang/String;
    .end local v9    # "contentUriString":Ljava/lang/String;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 399
    return-object p3

    .line 396
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static updateFlagsForMessage(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "messageId"    # J
    .param p3, "messageFlags"    # Ljava/lang/String;
    .param p4, "migrationsHelper"    # Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;

    .prologue
    const/4 v6, 0x0

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v0, "extraFlags":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Flag;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 539
    const-string v5, ","

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "flags":[Ljava/lang/String;
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v3, v5

    .line 543
    .local v2, "flagStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;

    move-result-object v1

    .line 544
    .local v1, "flag":Lcom/fsck/k9/mail/Flag;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v1    # "flag":Lcom/fsck/k9/mail/Flag;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 550
    .end local v2    # "flagStr":Ljava/lang/String;
    .end local v3    # "flags":[Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_MIGRATED_FROM_V50:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-interface {p4, v0}, Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;->serializeFlags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "flagsString":Ljava/lang/String;
    const-string v5, "UPDATE messages SET flags = ? WHERE id = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    return-void

    .line 545
    .end local v4    # "flagsString":Ljava/lang/String;
    .restart local v2    # "flagStr":Ljava/lang/String;
    .restart local v3    # "flags":[Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method
