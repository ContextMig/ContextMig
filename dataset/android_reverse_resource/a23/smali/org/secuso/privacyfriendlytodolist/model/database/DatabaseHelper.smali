.class public Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "TodoDatabase.db"

.field public static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DatabaseHelper"

.field private static mInstance:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "TodoDatabase.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 65
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->context:Landroid/content/Context;

    return-void
.end method

.method private executeSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/BufferedReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;
    .locals 1

    .line 58
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->mInstance:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->mInstance:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    .line 61
    :cond_0
    sget-object p0, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->mInstance:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    return-object p0
.end method

.method private readAndExecuteSQLScript(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 125
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string p2, "SQL script file name is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_0
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Script found. Executing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 136
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 137
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->executeSQLScript(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/BufferedReader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 144
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 140
    :goto_0
    :try_start_3
    sget-object p2, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string p3, "IOException:"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 144
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 146
    sget-object p2, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string p3, "IOException:"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    .line 144
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 146
    sget-object p3, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v0, "IOException:"

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_2
    :goto_3
    throw p1
.end method


# virtual methods
.method public createAll()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->createAll(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public createAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE todo_list(_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL);"

    .line 82
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE todo_task(_id INTEGER PRIMARY KEY AUTOINCREMENT, todo_list_id INTEGER NOT NULL, position_in_todo_list INTEGER NOT NULL, name TEXT NOT NULL, description TEXT NOT NULL, priority INTEGER NOT NULL DEFAULT 0, deadline DATETIME DEFAULT NULL, done INTEGER NOT NULL DEFAULT 0, progress INTEGER NOT NULL DEFAULT 0, num_subtasksINTEGER NOT NULL DEFAULT 0, deadline_warning_time NUMERIC NULL DEFAULT NULL, in_trash INTEGER NOT NULL DEFAULT 0, FOREIGN KEY (todo_list_id) REFERENCES todo_list(_id));"

    .line 83
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE todo_subtask(_id INTEGER PRIMARY KEY AUTOINCREMENT, todo_task_id INTEGER NOT NULL, title TEXT NOT NULL, done INTEGER, in_trash INTEGER NOT NULL DEFAULT 0, FOREIGN KEY (todo_task_id) REFERENCES todo_task(_id));"

    .line 84
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public deleteAll()V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE todo_list"

    .line 71
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE todo_task"

    .line 72
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE todo_subtask"

    .line 73
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 94
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->createAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v0, "onCreate() finished"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .line 107
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating table from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ge p2, p3, :cond_0

    .line 112
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "from_%d_to_%d.sql"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for migration file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->context:Landroid/content/Context;

    invoke-direct {p0, p1, v1, v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->readAndExecuteSQLScript(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
