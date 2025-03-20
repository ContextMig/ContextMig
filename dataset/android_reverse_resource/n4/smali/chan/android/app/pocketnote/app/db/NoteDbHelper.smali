.class Lchan/android/app/pocketnote/app/db/NoteDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NoteDbHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "notes.db"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/db/NoteDbHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3fa6e406916570acL    # -100.43709912389505

    const-string v2, "chan/android/app/pocketnote/app/db/NoteDbHelper"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/db/NoteDbHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteDbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    const-string v1, "notes.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteDbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-static {p1}, Lchan/android/app/pocketnote/app/db/NoteDbTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 21
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/db/NoteDbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-static {p1, p2, p3}, Lchan/android/app/pocketnote/app/db/NoteDbTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 26
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
