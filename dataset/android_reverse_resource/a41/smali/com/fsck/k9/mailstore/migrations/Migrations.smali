.class public Lcom/fsck/k9/mailstore/migrations/Migrations;
.super Ljava/lang/Object;
.source "Migrations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "migrationsHelper"    # Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 12
    :pswitch_0
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo30;->addDeletedColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 14
    :pswitch_1
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo31;->changeMsgFolderIdDeletedDateIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 16
    :pswitch_2
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo32;->updateDeletedColumnFromFlags(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 18
    :pswitch_3
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo33;->addPreviewColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    :pswitch_4
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo34;->addFlaggedCountColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 22
    :pswitch_5
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo35;->updateRemoveXNoSeenInfoFlag(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 24
    :pswitch_6
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo36;->addAttachmentsContentIdColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 26
    :pswitch_7
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo37;->addAttachmentsContentDispositionColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    :pswitch_8
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo39;->headersPruneOrphans(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 32
    :pswitch_9
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo40;->addMimeTypeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    :pswitch_a
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo41;->db41FoldersAddClassColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo41;->db41UpdateFolderMetadata(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V

    .line 37
    :pswitch_b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 38
    .local v0, "notUpdatingFromEarlierThan41":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo42;->from41MoveFolderPreferences(Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V

    .line 42
    .end local v0    # "notUpdatingFromEarlierThan41":Z
    :cond_0
    :pswitch_c
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo43;->fixOutboxFolders(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V

    .line 44
    :pswitch_d
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo44;->addMessagesThreadingColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    :pswitch_e
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo45;->changeThreadingIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    :pswitch_f
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo46;->addMessagesFlagColumns(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V

    .line 50
    :pswitch_10
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo47;->createThreadsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    :pswitch_11
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo48;->updateThreadsSetRootWhereNull(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    :pswitch_12
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo49;->createMsgCompositeIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    :pswitch_13
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo50;->foldersAddNotifyClassColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V

    .line 58
    :pswitch_14
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51;->db51MigrateMessageFormat(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V

    .line 60
    :pswitch_15
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo52;->addMoreMessagesColumnToFoldersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    :pswitch_16
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo53;->removeNullValuesFromEmptyColumnInMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    :pswitch_17
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo54;->addPreviewTypeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    :pswitch_18
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/migrations/MigrationTo55;->createFtsSearchTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/migrations/MigrationsHelper;)V

    .line 68
    :pswitch_19
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo56;->cleanUpFtsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 70
    :pswitch_1a
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo57;->fixDataLocationForMultipartParts(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    :pswitch_1b
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo58;->cleanUpOrphanedData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo58;->createDeleteMessageTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    :pswitch_1c
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo59;->addMissingIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    :pswitch_1d
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo60;->migratePendingCommands(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    :pswitch_1e
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo61;->removeErrorsFolder(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 10
    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method
