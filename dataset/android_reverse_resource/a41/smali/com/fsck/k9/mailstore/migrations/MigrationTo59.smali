.class Lcom/fsck/k9/mailstore/migrations/MigrationTo59;
.super Ljava/lang/Object;
.source "MigrationTo59.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMessageCompositeIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 19
    const-string v0, "CREATE INDEX IF NOT EXISTS msg_composite ON messages (deleted, empty,folder_id,flagged,read)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private static addMessageEmptyIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 23
    const-string v0, "CREATE INDEX IF NOT EXISTS msg_empty ON messages (empty)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private static addMessageFlaggedIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 27
    const-string v0, "CREATE INDEX IF NOT EXISTS msg_flagged ON messages (flagged)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private static addMessageFolderIdDeletedDateIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 31
    const-string v0, "CREATE INDEX IF NOT EXISTS msg_folder_id_deleted_date ON messages (folder_id,deleted,internal_date)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static addMessageReadIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const-string v0, "CREATE INDEX IF NOT EXISTS msg_read ON messages (read)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private static addMessageUidIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    const-string v0, "CREATE INDEX IF NOT EXISTS msg_uid ON messages (uid, folder_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static addMissingIndexes(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo59;->addMessageCompositeIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo59;->addMessageEmptyIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 11
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo59;->addMessageFlaggedIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo59;->addMessageFolderIdDeletedDateIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 13
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo59;->addMessageReadIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 14
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo59;->addMessageUidIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    invoke-static {p0}, Lcom/fsck/k9/mailstore/migrations/MigrationTo59;->addMessageReadIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 16
    return-void
.end method
