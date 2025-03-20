.class Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;
.super Ljava/lang/Object;
.source "NotesDatabaseAdapter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ALL_ENTRIES:I = 0x0

.field static final CREATE_LABELS_TABLE:Ljava/lang/String; = "CREATE TABLE labels (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, color INTEGER);"

.field static final CREATE_NOTES_LABELS_TABLE:Ljava/lang/String; = "CREATE TABLE notes_labels (_id INTEGER PRIMARY KEY AUTOINCREMENT, note_id INTEGER, label_id INTEGER,  FOREIGN KEY (note_id) REFERENCES notes (_id), FOREIGN KEY (label_id) REFERENCES labels (_id));"

.field static final CREATE_NOTES_TABLE:Ljava/lang/String; = "CREATE TABLE notes (_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, body TEXT NOT NULL, create_date LONG, change_date LONG);"

.field private static final CURRENT_VERSION:I = 0x2

.field private static final DATABASE_NAME:Ljava/lang/String; = "notes.db"

.field private static final KEY_ID:Ljava/lang/String; = "_id"

.field private static final KEY_ID_COLUMN:I = 0x0

.field private static final LABELS_COLOR:Ljava/lang/String; = "color"

.field private static final LABELS_COLOR_COLUMN:I = 0x2

.field private static final LABELS_NAME:Ljava/lang/String; = "name"

.field private static final LABELS_NAME_COLUMN:I = 0x1

.field private static final LABELS_PROJECTION:[Ljava/lang/String;

.field private static final LABELS_TABLE:Ljava/lang/String; = "labels"

.field private static final NOTES_BODY:Ljava/lang/String; = "body"

.field private static final NOTES_BODY_COLUMN:I = 0x2

.field private static final NOTES_CHANGE_DATE:Ljava/lang/String; = "change_date"

.field private static final NOTES_CHANGE_DATE_COLUMN:I = 0x4

.field private static final NOTES_CREATE_DATE:Ljava/lang/String; = "create_date"

.field private static final NOTES_CREATE_DATE_COLUMN:I = 0x3

.field private static final NOTES_LABELS_LABEL_ID:Ljava/lang/String; = "label_id"

.field private static final NOTES_LABELS_NOTE_ID:Ljava/lang/String; = "note_id"

.field private static final NOTES_LABELS_PROJECTION:[Ljava/lang/String;

.field private static final NOTES_LABELS_TABLE:Ljava/lang/String; = "notes_labels"

.field private static final NOTES_NAME:Ljava/lang/String; = "name"

.field private static final NOTES_NAME_COLUMN:I = 0x1

.field private static final NOTES_PROJECTION:[Ljava/lang/String;

.field private static final NOTES_TABLE:Ljava/lang/String; = "notes"

.field private static final NOTE_LABELS_LABEL_ID_COLUMN:I = 0x2

.field private static final NOTE_LABELS_NOTE_ID_COLUMN:I = 0x1


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x103d016c2f4a9c3cL    # 1.868291078980257E-230

    const-string v2, "com/iliakplv/notes/notes/db/NotesDatabaseAdapter"

    const/16 v3, 0xa2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v4

    const-string v2, "body"

    aput-object v2, v1, v6

    const-string v2, "create_date"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "change_date"

    aput-object v3, v1, v2

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->NOTES_PROJECTION:[Ljava/lang/String;

    .line 56
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v4

    const-string v2, "color"

    aput-object v2, v1, v6

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->LABELS_PROJECTION:[Ljava/lang/String;

    .line 67
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "note_id"

    aput-object v2, v1, v4

    const-string v2, "label_id"

    aput-object v2, v1, v6

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->NOTES_LABELS_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa1

    aput-boolean v4, v0, v1

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v5, v0, v1

    .line 101
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;

    const-string v2, "notes.db"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->dbHelper:Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;

    .line 102
    aput-boolean v5, v0, v5

    return-void
.end method

.method private static contentValuesForLabel(Lcom/iliakplv/notes/notes/Label;)Landroid/content/ContentValues;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 337
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x81

    aput-boolean v4, v0, v2

    .line 338
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/Label;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x82

    aput-boolean v4, v0, v2

    .line 339
    const-string v2, "color"

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/Label;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const/16 v2, 0x83

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private static contentValuesForNote(Lcom/iliakplv/notes/notes/AbstractNote;)Landroid/content/ContentValues;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 328
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x7c

    aput-boolean v6, v0, v2

    .line 329
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x7d

    aput-boolean v6, v0, v2

    .line 330
    const-string v2, "body"

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x7e

    aput-boolean v6, v0, v2

    .line 331
    const-string v2, "create_date"

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/AbstractNote;->getCreateTime()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x7f

    aput-boolean v6, v0, v2

    .line 332
    const-string v2, "change_date"

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/AbstractNote;->getChangeTime()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 333
    const/16 v2, 0x80

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method private static contentValuesForNoteLabel(II)Landroid/content/ContentValues;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 344
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x84

    aput-boolean v4, v0, v2

    .line 345
    const-string v2, "note_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x85

    aput-boolean v4, v0, v2

    .line 346
    const-string v2, "label_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const/16 v2, 0x86

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private getLabelsForNoteCursor(IZ)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 242
    if-eqz p2, :cond_0

    const-string v0, " ORDER BY name"

    const/16 v2, 0x50

    aput-boolean v5, v1, v2

    :goto_0
    const/16 v2, 0x52

    aput-boolean v5, v1, v2

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->LABELS_PROJECTION:[Ljava/lang/String;

    invoke-static {v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->projectionToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "labels"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN (SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "label_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "notes_labels"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "note_id"

    const/16 v4, 0x53

    aput-boolean v5, v1, v4

    .line 248
    invoke-static {v3, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x54

    aput-boolean v5, v1, v2

    .line 250
    iget-object v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v2, 0x55

    aput-boolean v5, v1, v2

    return-object v0

    .line 242
    :cond_0
    const-string v0, ""

    const/16 v2, 0x51

    aput-boolean v5, v1, v2

    goto/16 :goto_0
.end method

.method private labelsQuery(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/Label;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v8

    .line 168
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "labels"

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->LABELS_PROJECTION:[Ljava/lang/String;

    const/16 v3, 0x21

    aput-boolean v9, v8, v3

    .line 169
    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClauseForId(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "name"

    const/16 v5, 0x22

    aput-boolean v9, v8, v5

    move-object v5, v4

    move-object v6, v4

    .line 168
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x23

    aput-boolean v9, v8, v1

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x24

    aput-boolean v9, v8, v2

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x25

    aput-boolean v9, v8, v0

    .line 181
    :goto_0
    const/16 v0, 0x2c

    aput-boolean v9, v8, v0

    return-object v1

    .line 173
    :cond_0
    const/16 v2, 0x26

    aput-boolean v9, v8, v2

    .line 175
    :goto_1
    new-instance v2, Lcom/iliakplv/notes/notes/Label;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/iliakplv/notes/notes/Label;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x27

    aput-boolean v9, v8, v3

    .line 176
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iliakplv/notes/notes/Label;->setId(Ljava/io/Serializable;)V

    const/16 v3, 0x28

    aput-boolean v9, v8, v3

    .line 177
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x29

    aput-boolean v9, v8, v2

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2a

    aput-boolean v9, v8, v2

    goto :goto_1

    :cond_1
    const/16 v0, 0x2b

    aput-boolean v9, v8, v0

    goto :goto_0
.end method

.method private notesQuery(ILcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/AbstractNote;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v8

    .line 121
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->NOTES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x6

    aput-boolean v9, v8, v3

    .line 122
    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClauseForId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->sortOrderClause(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x7

    aput-boolean v9, v8, v5

    move-object v5, v4

    move-object v6, v4

    .line 121
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x8

    aput-boolean v9, v8, v1

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x9

    aput-boolean v9, v8, v2

    .line 126
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0xa

    aput-boolean v9, v8, v0

    .line 137
    :goto_0
    const/16 v0, 0x14

    aput-boolean v9, v8, v0

    return-object v1

    .line 126
    :cond_0
    const/16 v2, 0xb

    aput-boolean v9, v8, v2

    .line 128
    :goto_1
    new-instance v2, Lcom/iliakplv/notes/notes/TextNote;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0xc

    aput-boolean v9, v8, v5

    .line 129
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/iliakplv/notes/notes/TextNote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xd

    aput-boolean v9, v8, v3

    .line 130
    new-instance v3, Lorg/joda/time/DateTime;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/iliakplv/notes/notes/AbstractNote;->setCreateTime(Lorg/joda/time/DateTime;)V

    const/16 v3, 0xe

    aput-boolean v9, v8, v3

    .line 131
    new-instance v3, Lorg/joda/time/DateTime;

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/iliakplv/notes/notes/AbstractNote;->setChangeTime(Lorg/joda/time/DateTime;)V

    const/16 v3, 0xf

    aput-boolean v9, v8, v3

    .line 132
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iliakplv/notes/notes/AbstractNote;->setId(Ljava/io/Serializable;)V

    const/16 v3, 0x10

    aput-boolean v9, v8, v3

    .line 133
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x11

    aput-boolean v9, v8, v2

    .line 134
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    aput-boolean v9, v8, v2

    goto :goto_1

    :cond_1
    const/16 v0, 0x13

    aput-boolean v9, v8, v0

    goto :goto_0
.end method

.method private static projectionToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 365
    if-nez p0, :cond_0

    const/16 v2, 0x8c

    aput-boolean v5, v3, v2

    .line 377
    :goto_0
    const-string v2, ""

    const/16 v4, 0x95

    aput-boolean v5, v3, v4

    :goto_1
    return-object v2

    .line 365
    :cond_0
    array-length v2, p0

    if-gtz v2, :cond_1

    const/16 v2, 0x8d

    aput-boolean v5, v3, v2

    goto :goto_0

    .line 366
    :cond_1
    array-length v2, p0

    const/16 v4, 0x8e

    aput-boolean v5, v3, v4

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    const/16 v4, 0x8f

    aput-boolean v5, v3, v4

    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_2

    const/16 v4, 0x90

    aput-boolean v5, v3, v4

    .line 370
    aget-object v4, p0, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x91

    aput-boolean v5, v3, v4

    .line 371
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v4, 0x92

    aput-boolean v5, v3, v4

    goto :goto_2

    .line 373
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x93

    aput-boolean v5, v3, v2

    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x94

    aput-boolean v5, v3, v4

    goto :goto_1
.end method

.method private static sortOrderClause(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 307
    if-nez p0, :cond_0

    .line 308
    const/4 v0, 0x0

    const/16 v2, 0x76

    aput-boolean v4, v1, v2

    .line 320
    :goto_0
    return-object v0

    .line 310
    :cond_0
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter$1;->$SwitchMap$com$iliakplv$notes$notes$NotesUtils$NoteSortOrder:[I

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported sort order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7b

    aput-boolean v4, v1, v2

    throw v0

    .line 312
    :pswitch_0
    const-string v0, "name"

    const/16 v2, 0x77

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 315
    :pswitch_1
    const-string v0, "create_date ASC"

    const/16 v2, 0x78

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 317
    :pswitch_2
    const-string v0, "create_date DESC"

    const/16 v2, 0x79

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 320
    :pswitch_3
    const-string v0, "change_date DESC"

    const/16 v2, 0x7a

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static whereClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 352
    if-nez p1, :cond_0

    .line 353
    const/4 v0, 0x0

    const/16 v2, 0x87

    aput-boolean v4, v1, v2

    .line 355
    :goto_0
    return-object v0

    .line 354
    :cond_0
    if-lt p1, v4, :cond_1

    const/16 v0, 0x88

    aput-boolean v4, v1, v0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x89

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 357
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong id value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8a

    aput-boolean v4, v1, v2

    throw v0
.end method

.method private static whereClauseForId(I)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 361
    const-string v1, "_id"

    invoke-static {v1, p0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    const/16 v1, 0x9d

    aput-boolean v2, v0, v1

    .line 401
    :goto_0
    const/16 v1, 0xa0

    aput-boolean v2, v0, v1

    return-void

    .line 398
    :cond_0
    const/16 v1, 0x9e

    aput-boolean v2, v0, v1

    .line 399
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/16 v1, 0x9f

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method deleteAllData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes_labels"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x96

    aput-boolean v4, v0, v1

    .line 382
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x97

    aput-boolean v4, v0, v1

    .line 383
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    const/16 v1, 0x98

    aput-boolean v4, v0, v1

    return-void
.end method

.method deleteLabel(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 196
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "labels"

    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClauseForId(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x31

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x33

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x32

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method deleteNote(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 152
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "notes"

    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClauseForId(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x19

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x1b

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x1a

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method deleteNoteLabel(II)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 286
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "notes_labels"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "note_id"

    const/16 v6, 0x67

    aput-boolean v1, v2, v6

    .line 287
    invoke-static {v5, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "label_id"

    invoke-static {v5, p2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x68

    aput-boolean v1, v2, v6

    .line 286
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x69

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x6b

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x6a

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method deleteNoteLabelsForLabel(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 298
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "notes_labels"

    const-string v4, "label_id"

    const/16 v5, 0x71

    aput-boolean v1, v2, v5

    .line 299
    invoke-static {v4, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x72

    aput-boolean v1, v2, v6

    .line 298
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x73

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x75

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x74

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method deleteNoteLabelsForNote(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 292
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "notes_labels"

    const-string v4, "note_id"

    const/16 v5, 0x6c

    aput-boolean v1, v2, v5

    .line 293
    invoke-static {v4, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x6d

    aput-boolean v1, v2, v6

    .line 292
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x6e

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x70

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x6f

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method getAllLabels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/Label;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->labelsQuery(I)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method getAllNotes(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/AbstractNote;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->notesQuery(ILcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method getAllNotesLabelsIds()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v8

    .line 203
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes_labels"

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->NOTES_LABELS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x34

    aput-boolean v9, v8, v1

    .line 206
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/16 v2, 0x35

    aput-boolean v9, v8, v2

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x36

    aput-boolean v9, v8, v0

    .line 214
    :goto_0
    const/16 v0, 0x3d

    aput-boolean v9, v8, v0

    return-object v1

    .line 207
    :cond_0
    const/16 v2, 0x37

    aput-boolean v9, v8, v2

    .line 209
    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x38

    aput-boolean v9, v8, v5

    .line 210
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x39

    aput-boolean v9, v8, v3

    .line 209
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3a

    aput-boolean v9, v8, v2

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3b

    aput-boolean v9, v8, v2

    goto :goto_1

    :cond_1
    const/16 v0, 0x3c

    aput-boolean v9, v8, v0

    goto :goto_0
.end method

.method getLabel(I)Lcom/iliakplv/notes/notes/Label;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 159
    invoke-direct {p0, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->labelsQuery(I)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x1c

    aput-boolean v3, v1, v2

    .line 160
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x1d

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x1f

    aput-boolean v3, v1, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/Label;

    const/16 v2, 0x1e

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method getLabelsForNote(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/Label;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 218
    invoke-direct {p0, p1, v6}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getLabelsForNoteCursor(IZ)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0x3e

    aput-boolean v6, v0, v2

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x3f

    aput-boolean v6, v0, v3

    .line 220
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v1, 0x40

    aput-boolean v6, v0, v1

    .line 227
    :goto_0
    const/16 v1, 0x47

    aput-boolean v6, v0, v1

    return-object v2

    .line 220
    :cond_0
    const/16 v3, 0x41

    aput-boolean v6, v0, v3

    .line 222
    :goto_1
    new-instance v3, Lcom/iliakplv/notes/notes/Label;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/iliakplv/notes/notes/Label;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x42

    aput-boolean v6, v0, v4

    .line 223
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iliakplv/notes/notes/Label;->setId(Ljava/io/Serializable;)V

    const/16 v4, 0x43

    aput-boolean v6, v0, v4

    .line 224
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x44

    aput-boolean v6, v0, v3

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x45

    aput-boolean v6, v0, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x46

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method getLabelsIdsForNote(I)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    invoke-direct {p0, p1, v5}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getLabelsForNoteCursor(IZ)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0x48

    aput-boolean v4, v0, v2

    .line 232
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/16 v3, 0x49

    aput-boolean v4, v0, v3

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v1, 0x4a

    aput-boolean v4, v0, v1

    .line 238
    :goto_0
    const/16 v1, 0x4f

    aput-boolean v4, v0, v1

    return-object v2

    .line 233
    :cond_0
    const/16 v3, 0x4b

    aput-boolean v4, v0, v3

    .line 235
    :goto_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x4c

    aput-boolean v4, v0, v3

    .line 236
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x4d

    aput-boolean v4, v0, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x4e

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method getNote(I)Lcom/iliakplv/notes/notes/AbstractNote;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->notesQuery(ILcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    .line 109
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/AbstractNote;

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method getNotesForLabel(ILcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/AbstractNote;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->NOTES_PROJECTION:[Ljava/lang/String;

    invoke-static {v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->projectionToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "notes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN (SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "note_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "notes_labels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label_id"

    const/16 v3, 0x56

    aput-boolean v8, v0, v3

    .line 257
    invoke-static {v2, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x57

    aput-boolean v8, v0, v2

    .line 258
    invoke-static {p2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->sortOrderClause(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-boolean v8, v0, v2

    .line 259
    iget-object v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0x59

    aput-boolean v8, v0, v2

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x5a

    aput-boolean v8, v0, v3

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v1, 0x5b

    aput-boolean v8, v0, v1

    .line 274
    :goto_0
    const/16 v1, 0x65

    aput-boolean v8, v0, v1

    return-object v2

    .line 263
    :cond_0
    const/16 v3, 0x5c

    aput-boolean v8, v0, v3

    .line 265
    :goto_1
    new-instance v3, Lcom/iliakplv/notes/notes/TextNote;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/16 v6, 0x5d

    aput-boolean v8, v0, v6

    .line 266
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/iliakplv/notes/notes/TextNote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x5e

    aput-boolean v8, v0, v4

    .line 267
    new-instance v4, Lorg/joda/time/DateTime;

    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/iliakplv/notes/notes/AbstractNote;->setCreateTime(Lorg/joda/time/DateTime;)V

    const/16 v4, 0x5f

    aput-boolean v8, v0, v4

    .line 268
    new-instance v4, Lorg/joda/time/DateTime;

    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/iliakplv/notes/notes/AbstractNote;->setChangeTime(Lorg/joda/time/DateTime;)V

    const/16 v4, 0x60

    aput-boolean v8, v0, v4

    .line 269
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iliakplv/notes/notes/AbstractNote;->setId(Ljava/io/Serializable;)V

    const/16 v4, 0x61

    aput-boolean v8, v0, v4

    .line 270
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x62

    aput-boolean v8, v0, v3

    .line 271
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x63

    aput-boolean v8, v0, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x64

    aput-boolean v8, v0, v1

    goto :goto_0
.end method

.method insertLabel(Lcom/iliakplv/notes/notes/Label;)I
    .locals 5

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->contentValuesForLabel(Lcom/iliakplv/notes/notes/Label;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v1, v2

    const/16 v2, 0x2d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method insertNote(Lcom/iliakplv/notes/notes/AbstractNote;)I
    .locals 5

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->contentValuesForNote(Lcom/iliakplv/notes/notes/AbstractNote;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v1, v2

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method insertNoteLabel(II)I
    .locals 5

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes_labels"

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->contentValuesForNoteLabel(II)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v1, v2

    const/16 v2, 0x66

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method open()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->dbHelper:Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    const/16 v1, 0x99

    aput-boolean v2, v0, v1

    .line 395
    :goto_0
    const/16 v1, 0x9c

    aput-boolean v2, v0, v1

    return-void

    .line 392
    :catch_0
    move-exception v1

    const/16 v1, 0x9a

    aput-boolean v2, v0, v1

    .line 393
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->dbHelper:Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x9b

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method updateLabel(ILcom/iliakplv/notes/notes/Label;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 192
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "labels"

    invoke-static {p2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->contentValuesForLabel(Lcom/iliakplv/notes/notes/Label;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClauseForId(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x30

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x2f

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method updateNote(ILcom/iliakplv/notes/notes/AbstractNote;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 148
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "notes"

    invoke-static {p2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->contentValuesForNote(Lcom/iliakplv/notes/notes/AbstractNote;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->whereClauseForId(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x16

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x18

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x17

    aput-boolean v1, v2, v3

    goto :goto_0
.end method
