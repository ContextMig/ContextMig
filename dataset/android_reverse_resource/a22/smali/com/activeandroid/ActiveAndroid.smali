.class public final Lcom/activeandroid/ActiveAndroid;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginTransaction()V
    .locals 1

    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public static clearCache()V
    .locals 0

    invoke-static {}, Lcom/activeandroid/Cache;->clear()V

    return-void
.end method

.method public static dispose()V
    .locals 0

    invoke-static {}, Lcom/activeandroid/Cache;->dispose()V

    return-void
.end method

.method public static endTransaction()V
    .locals 1

    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public static execSQL(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static inTransaction()Z
    .locals 1

    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/activeandroid/Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/activeandroid/Configuration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/activeandroid/Configuration$Builder;->create()Lcom/activeandroid/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/ActiveAndroid;->initialize(Lcom/activeandroid/Configuration;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcom/activeandroid/Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/activeandroid/Configuration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/activeandroid/Configuration$Builder;->create()Lcom/activeandroid/Configuration;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/activeandroid/ActiveAndroid;->initialize(Lcom/activeandroid/Configuration;Z)V

    return-void
.end method

.method public static initialize(Lcom/activeandroid/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/activeandroid/ActiveAndroid;->initialize(Lcom/activeandroid/Configuration;Z)V

    return-void
.end method

.method public static initialize(Lcom/activeandroid/Configuration;Z)V
    .locals 0

    invoke-static {p1}, Lcom/activeandroid/ActiveAndroid;->setLoggingEnabled(Z)V

    invoke-static {p0}, Lcom/activeandroid/Cache;->initialize(Lcom/activeandroid/Configuration;)V

    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/activeandroid/util/Log;->setEnabled(Z)V

    return-void
.end method

.method public static setTransactionSuccessful()V
    .locals 1

    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
