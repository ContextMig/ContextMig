.class Lcom/fsck/k9/mailstore/migrations/MigrationTo53;
.super Ljava/lang/Object;
.source "MigrationTo53.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeNullValuesFromEmptyColumnInMessagesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 9
    const-string v0, "UPDATE messages SET empty = 0 WHERE empty IS NULL"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 10
    return-void
.end method
