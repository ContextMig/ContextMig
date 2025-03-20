.class public final Lcom/batch/android/j/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "events"

.field protected static final b:Ljava/lang/String; = "_db_id"

.field protected static final c:Ljava/lang/String; = "id"

.field protected static final d:Ljava/lang/String; = "name"

.field protected static final e:Ljava/lang/String; = "date"

.field protected static final f:Ljava/lang/String; = "timezone"

.field protected static final g:Ljava/lang/String; = "parameters"

.field protected static final h:Ljava/lang/String; = "state"

.field protected static final i:Ljava/lang/String; = "serverts"

.field protected static final j:Ljava/lang/String; = "sdate"

.field protected static final k:Ljava/lang/String; = "session_id"

.field private static final l:Ljava/lang/String; = "ba_tr.db"

.field private static final m:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "ba_tr.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 41
    const-string v0, "create table events(_db_id integer primary key autoincrement, id text not null, name text not null, date integer not null, timezone text not null, parameters text, state integer not null, serverts integer, sdate integer null, session_id text null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 58
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 60
    const-string v0, "ALTER TABLE events ADD COLUMN sdate integer null;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    :cond_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 64
    const-string v0, "ALTER TABLE events ADD COLUMN session_id text null;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method
