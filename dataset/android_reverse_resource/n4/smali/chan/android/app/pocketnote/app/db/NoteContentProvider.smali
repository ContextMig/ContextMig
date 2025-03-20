.class public Lchan/android/app/pocketnote/app/db/NoteContentProvider;
.super Landroid/content/ContentProvider;
.source "NoteContentProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final AUTHORITY:Ljava/lang/String; = "chan.android.app.pocketnote.app.db.note"

.field private static final BASE_PATH:Ljava/lang/String; = "notes"

.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/note"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/notes"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final TYPE_PLURAL:I = 0x2

.field private static final TYPE_SINGLE:I = 0x1

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lchan/android/app/pocketnote/app/db/NoteDbHelper;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x73138d38a0b60a1eL    # 2.1359927818498307E246

    const-string v2, "chan/android/app/pocketnote/app/db/NoteContentProvider"

    const/16 v3, 0x2d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const-string v2, "title"

    aput-object v2, v1, v4

    const-string v2, "content"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v3, "modified_time"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "color"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "reminder_json"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "trashed"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "locked"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "checked"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "deleted_time"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "calendar_day"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "calendar_month"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "calendar_year"

    aput-object v3, v1, v2

    sput-object v1, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->COLUMNS:[Ljava/lang/String;

    const/16 v1, 0x28

    aput-boolean v4, v0, v1

    .line 39
    const-string v1, "content://chan.android.app.pocketnote.app.db.note/notes"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const/16 v1, 0x29

    aput-boolean v4, v0, v1

    .line 40
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const/16 v1, 0x2a

    aput-boolean v4, v0, v1

    .line 43
    sget-object v1, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "chan.android.app.pocketnote.app.db.note"

    const-string v3, "notes"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x2b

    aput-boolean v4, v0, v1

    .line 44
    sget-object v1, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "chan.android.app.pocketnote.app.db.note"

    const-string v3, "notes/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    const/16 v1, 0x2c

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private checkColumns([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    if-nez p1, :cond_0

    aput-boolean v4, v0, v4

    .line 57
    :goto_0
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-void

    .line 50
    :cond_0
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 52
    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->COLUMNS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    .line 53
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown columns in projection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 112
    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x18

    aput-boolean v7, v2, v4

    .line 113
    iget-object v4, p0, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->dbHelper:Lchan/android/app/pocketnote/app/db/NoteDbHelper;

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/db/NoteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 115
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v3, :pswitch_data_0

    .line 130
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1e

    aput-boolean v7, v2, v4

    throw v3

    .line 117
    :pswitch_0
    const-string v3, "notes"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "affectedRows":I
    const/16 v3, 0x19

    aput-boolean v7, v2, v3

    .line 132
    :goto_0
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 133
    const/16 v3, 0x1f

    aput-boolean v7, v2, v3

    return v0

    .line 121
    .end local v0    # "affectedRows":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    aput-boolean v7, v2, v4

    .line 122
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1b

    aput-boolean v7, v2, v4

    .line 123
    const-string v4, "notes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "affectedRows":I
    const/16 v3, 0x1c

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 125
    .end local v0    # "affectedRows":I
    :cond_0
    const-string v4, "notes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 127
    .restart local v0    # "affectedRows":I
    const/16 v3, 0x1d

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    const/4 v1, 0x0

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoInit()[Z

    move-result-object v1

    .line 95
    sget-object v4, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/16 v5, 0x14

    aput-boolean v7, v1, v5

    .line 96
    iget-object v5, p0, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->dbHelper:Lchan/android/app/pocketnote/app/db/NoteDbHelper;

    invoke-virtual {v5}, Lchan/android/app/pocketnote/app/db/NoteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v4, :pswitch_data_0

    .line 104
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x15

    aput-boolean v7, v1, v5

    throw v4

    .line 100
    :pswitch_0
    const-string v4, "notes"

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 106
    .local v2, "id":J
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0x16

    aput-boolean v7, v1, v4

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notes/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x17

    aput-boolean v7, v1, v5

    return-object v4

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    new-instance v1, Lchan/android/app/pocketnote/app/db/NoteDbHelper;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lchan/android/app/pocketnote/app/db/NoteDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->dbHelper:Lchan/android/app/pocketnote/app/db/NoteDbHelper;

    .line 62
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoInit()[Z

    move-result-object v9

    .line 67
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 68
    invoke-direct {p0, p2}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->checkColumns([Ljava/lang/String;)V

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 69
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 70
    sget-object v1, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 71
    .local v8, "type":I
    packed-switch v8, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    throw v0

    .line 73
    :pswitch_0
    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 82
    :goto_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->dbHelper:Lchan/android/app/pocketnote/app/db/NoteDbHelper;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/db/NoteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 83
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 84
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 85
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    return-object v0

    .line 76
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 77
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 138
    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x20

    aput-boolean v7, v2, v4

    .line 139
    iget-object v4, p0, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->dbHelper:Lchan/android/app/pocketnote/app/db/NoteDbHelper;

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/db/NoteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 141
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v3, :pswitch_data_0

    .line 156
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x26

    aput-boolean v7, v2, v4

    throw v3

    .line 143
    :pswitch_0
    const-string v3, "notes"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "affectedRows":I
    const/16 v3, 0x21

    aput-boolean v7, v2, v3

    .line 158
    :goto_0
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 159
    const/16 v3, 0x27

    aput-boolean v7, v2, v3

    return v0

    .line 147
    .end local v0    # "affectedRows":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    aput-boolean v7, v2, v4

    .line 148
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x23

    aput-boolean v7, v2, v4

    .line 149
    const-string v4, "notes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, p2, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "affectedRows":I
    const/16 v3, 0x24

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 151
    .end local v0    # "affectedRows":I
    :cond_0
    const-string v4, "notes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 153
    .restart local v0    # "affectedRows":I
    const/16 v3, 0x25

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
