.class Lcom/fsck/k9/mailstore/migrations/MigrationTo57;
.super Ljava/lang/Object;
.source "MigrationTo57.java"


# static fields
.field private static final CHILD_PART_CONTAINS_DATA:I = 0x3

.field private static final IN_DATABASE:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fixDataLocationForMultipartParts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 12
    const-string v0, "UPDATE message_parts SET data_location = 3 WHERE data_location = 1 AND mime_type LIKE \'multipart/%\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    return-void
.end method
