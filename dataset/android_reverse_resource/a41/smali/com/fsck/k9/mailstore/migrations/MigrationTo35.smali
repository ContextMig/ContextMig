.class Lcom/fsck/k9/mailstore/migrations/MigrationTo35;
.super Ljava/lang/Object;
.source "MigrationTo35.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateRemoveXNoSeenInfoFlag(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 12
    :try_start_0
    const-string v1, "update messages set flags = replace(flags, \'X_NO_SEEN_INFO\', \'X_BAD_FLAG\')"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "Unable to get rid of obsolete flag X_NO_SEEN_INFO"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
