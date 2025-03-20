.class Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NotesDatabaseOpenHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final DATABASE_VERSION_FIRST:I = 0x1

.field static final DATABASE_VERSION_LABELS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x689c0f9358cf2bd5L    # 8.193659244497848E195

    const-string v2, "com/iliakplv/notes/notes/db/NotesDatabaseOpenHelper"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    const-class v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createFirstVersion(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    const-string v1, "CREATE TABLE notes (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, body TEXT NOT NULL, create_date LONG, change_date LONG);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 38
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Schema creation: CREATE TABLE notes (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, body TEXT NOT NULL, create_date LONG, change_date LONG);"

    invoke-static {v1, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return-void
.end method

.method private upgradeToLabels(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 42
    const-string v0, "CREATE TABLE labels (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, color INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xa

    aput-boolean v5, v1, v0

    .line 43
    const-string v0, "CREATE TABLE notes_labels (_id INTEGER PRIMARY KEY AUTOINCREMENT, note_id INTEGER, label_id INTEGER,  FOREIGN KEY (note_id) REFERENCES notes (_id), FOREIGN KEY (label_id) REFERENCES labels (_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xb

    aput-boolean v5, v1, v0

    .line 44
    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v0, "Schema creation: "

    const/16 v4, 0xc

    aput-boolean v5, v1, v4

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "CREATE TABLE labels (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, color INTEGER);"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xe

    aput-boolean v5, v1, v0

    .line 45
    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string v0, "Schema creation: "

    const/16 v4, 0xf

    aput-boolean v5, v1, v4

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "CREATE TABLE notes_labels (_id INTEGER PRIMARY KEY AUTOINCREMENT, note_id INTEGER, label_id INTEGER,  FOREIGN KEY (note_id) REFERENCES notes (_id), FOREIGN KEY (label_id) REFERENCES labels (_id));"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/16 v0, 0x11

    aput-boolean v5, v1, v0

    return-void

    .line 44
    :cond_0
    const-string v0, "Schema upgrading: "

    const/16 v4, 0xd

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 45
    :cond_1
    const-string v0, "Schema upgrading: "

    const/16 v4, 0x10

    aput-boolean v5, v1, v4

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->createFirstVersion(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-boolean v2, v0, v2

    .line 24
    invoke-direct {p0, p1, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->upgradeToLabels(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 25
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eq p2, v4, :cond_0

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 34
    :goto_0
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void

    .line 31
    :cond_0
    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 32
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->upgradeToLabels(Landroid/database/sqlite/SQLiteDatabase;Z)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
