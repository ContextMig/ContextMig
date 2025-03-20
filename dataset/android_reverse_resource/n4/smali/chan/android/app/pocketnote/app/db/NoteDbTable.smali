.class public Lchan/android/app/pocketnote/app/db/NoteDbTable;
.super Ljava/lang/Object;
.source "NoteDbTable.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final COLUMN_CALENDAR_DAY:Ljava/lang/String; = "calendar_day"

.field public static final COLUMN_CALENDAR_MONTH:Ljava/lang/String; = "calendar_month"

.field public static final COLUMN_CALENDAR_YEAR:Ljava/lang/String; = "calendar_year"

.field public static final COLUMN_CHECKED:Ljava/lang/String; = "checked"

.field public static final COLUMN_COLOR:Ljava/lang/String; = "color"

.field public static final COLUMN_CONTENT:Ljava/lang/String; = "content"

.field public static final COLUMN_DELETED_TIME:Ljava/lang/String; = "deleted_time"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LOCKED:Ljava/lang/String; = "locked"

.field public static final COLUMN_MODIFIED_TIME:Ljava/lang/String; = "modified_time"

.field public static final COLUMN_REMINDER:Ljava/lang/String; = "reminder_json"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TRASHED:Ljava/lang/String; = "trashed"

.field private static final QUERY_CREATE:Ljava/lang/String; = "create table notes(_id integer primary key autoincrement, title text not null, content text not null, color integer not null, modified_time integer not null, reminder_json text, locked integer default 0, checked integer default 0, trashed integer default 0, deleted_time integer default 0, calendar_day integer default -1, calendar_month integer default -1, calendar_year integer default -1 );"

.field private static final QUERY_DROP:Ljava/lang/String; = "drop table if exists notes"

.field public static final TABLE_NAME:Ljava/lang/String; = "notes"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/db/NoteDbTable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2751f5789f9393bdL    # 2.781895271807164E-119

    const-string v2, "chan/android/app/pocketnote/app/db/NoteDbTable"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/db/NoteDbTable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteDbTable;->$jacocoInit()[Z

    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteDbTable;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    const-string v1, "create table notes(_id integer primary key autoincrement, title text not null, content text not null, color integer not null, modified_time integer not null, reminder_json text, locked integer default 0, checked integer default 0, trashed integer default 0, deleted_time integer default 0, calendar_day integer default -1, calendar_month integer default -1, calendar_year integer default -1 );"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    aput-boolean v2, v0, v2

    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteDbTable;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    const-string v1, "drop table if exists notes"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 48
    invoke-static {p0}, Lchan/android/app/pocketnote/app/db/NoteDbTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method
