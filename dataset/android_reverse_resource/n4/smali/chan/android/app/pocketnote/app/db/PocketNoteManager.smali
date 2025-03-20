.class public Lchan/android/app/pocketnote/app/db/PocketNoteManager;
.super Ljava/lang/Object;
.source "PocketNoteManager.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/db/NoteManager;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final NO:I = 0x0

.field private static final YES:I = 0x1

.field private static instance:Lchan/android/app/pocketnote/app/db/PocketNoteManager;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x72be446a1d9ede57L    # -8.115770684540173E-245

    const-string v2, "chan/android/app/pocketnote/app/db/PocketNoteManager"

    const/16 v3, 0x5e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const-string v2, "title"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "content"

    aput-object v3, v1, v2

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

    const-string v3, "locked"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "checked"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "trashed"

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

    sput-object v1, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->ALL_COLUMNS:[Ljava/lang/String;

    const/16 v1, 0x5d

    aput-boolean v4, v0, v1

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    .line 42
    aput-boolean v2, v0, v2

    return-void
.end method

.method private getAllNotes(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v1

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "notes":Ljava/util/List;, "Ljava/util/List<Lchan/android/app/pocketnote/app/Note;>;"
    if-nez p1, :cond_0

    const/16 v2, 0x55

    aput-boolean v3, v1, v2

    .line 221
    :goto_0
    const/16 v2, 0x5c

    aput-boolean v3, v1, v2

    return-object v0

    .line 213
    :cond_0
    const/16 v2, 0x56

    aput-boolean v3, v1, v2

    .line 214
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v2, 0x57

    aput-boolean v3, v1, v2

    .line 215
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x58

    aput-boolean v3, v1, v2

    .line 216
    invoke-static {p1}, Lchan/android/app/pocketnote/app/Note;->fromCursor(Landroid/database/Cursor;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x59

    aput-boolean v3, v1, v2

    .line 217
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v2, 0x5a

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 219
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x5b

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    sget-object v1, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->instance:Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    new-instance v1, Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->instance:Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    .line 46
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public add(Lchan/android/app/pocketnote/app/Note;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x4

    aput-boolean v6, v0, v2

    .line 54
    const-string v2, "title"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-boolean v6, v0, v2

    .line 55
    const-string v2, "content"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 56
    const-string v2, "modified_time"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 57
    const-string v2, "color"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x8

    aput-boolean v6, v0, v2

    .line 58
    const-string v2, "calendar_day"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x9

    aput-boolean v6, v0, v2

    .line 59
    const-string v2, "calendar_month"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xa

    aput-boolean v6, v0, v2

    .line 60
    const-string v2, "calendar_year"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xb

    aput-boolean v6, v0, v2

    .line 61
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 62
    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    return-void
.end method

.method public addReminder(Lchan/android/app/pocketnote/app/Note;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 174
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x49

    aput-boolean v8, v0, v2

    .line 175
    const-string v2, "reminder_json"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x4a

    aput-boolean v8, v0, v2

    .line 176
    invoke-virtual {p1, p2}, Lchan/android/app/pocketnote/app/Note;->setReminder(Ljava/lang/String;)V

    const/16 v2, 0x4b

    aput-boolean v8, v0, v2

    .line 177
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    const/16 v1, 0x4c

    aput-boolean v8, v0, v1

    return-void
.end method

.method public changeColor(Lchan/android/app/pocketnote/app/Note;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0xd

    aput-boolean v8, v0, v2

    .line 67
    const-string v2, "color"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xe

    aput-boolean v8, v0, v2

    .line 68
    invoke-virtual {p1, p2}, Lchan/android/app/pocketnote/app/Note;->setColor(I)V

    const/16 v2, 0xf

    aput-boolean v8, v0, v2

    .line 69
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    const/16 v1, 0x10

    aput-boolean v8, v0, v1

    return-void
.end method

.method public check(Lchan/android/app/pocketnote/app/Note;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x3b

    aput-boolean v8, v0, v2

    .line 143
    const-string v2, "checked"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x3c

    aput-boolean v8, v0, v2

    .line 144
    invoke-virtual {p1, v8}, Lchan/android/app/pocketnote/app/Note;->setChecked(Z)V

    const/16 v2, 0x3d

    aput-boolean v8, v0, v2

    .line 145
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    const/16 v1, 0x3e

    aput-boolean v8, v0, v1

    return-void
.end method

.method public edit(Lchan/android/app/pocketnote/app/Note;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v2

    const/16 v1, 0x27

    aput-boolean v8, v0, v1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v1, 0x28

    aput-boolean v8, v0, v1

    .line 112
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v6, 0x29

    aput-boolean v8, v0, v6

    .line 113
    const-string v6, "title"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x2a

    aput-boolean v8, v0, v6

    .line 114
    const-string v6, "content"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x2b

    aput-boolean v8, v0, v6

    .line 115
    const-string v6, "modified_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x2c

    aput-boolean v8, v0, v4

    .line 116
    const-string v4, "color"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x2d

    aput-boolean v8, v0, v4

    .line 117
    const-string v4, "trashed"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->isTrashed()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v4, 0x2e

    aput-boolean v8, v0, v4

    .line 118
    const-string v4, "deleted_time"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getDeletedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x2f

    aput-boolean v8, v0, v4

    .line 119
    const-string v4, "checked"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v4, 0x30

    aput-boolean v8, v0, v4

    .line 120
    const-string v4, "locked"

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->isLocked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v4, 0x31

    aput-boolean v8, v0, v4

    .line 121
    iget-object v4, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modified_time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4, v5, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    const/16 v1, 0x32

    aput-boolean v8, v0, v1

    return-void
.end method

.method public getId(Lchan/android/app/pocketnote/app/Note;)I
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v7

    .line 163
    iget-object v0, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    const/16 v0, 0x44

    aput-boolean v10, v7, v0

    .line 167
    :goto_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x47

    aput-boolean v10, v7, v1

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    const/16 v1, 0x48

    aput-boolean v10, v7, v1

    return v0

    .line 164
    :cond_0
    const/16 v0, 0x45

    aput-boolean v10, v7, v0

    .line 165
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v0, 0x46

    aput-boolean v10, v7, v0

    goto :goto_0
.end method

.method public getNotes(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v6

    .line 189
    iget-object v0, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->ALL_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trashed=0 AND calendar_month="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "calendar_year"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x50

    aput-boolean v7, v6, v1

    .line 195
    invoke-direct {p0, v0}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getAllNotes(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x51

    aput-boolean v7, v6, v1

    return-object v0
.end method

.method public lock(Lchan/android/app/pocketnote/app/Note;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x33

    aput-boolean v8, v0, v2

    .line 127
    const-string v2, "locked"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x34

    aput-boolean v8, v0, v2

    .line 128
    invoke-virtual {p1, v8}, Lchan/android/app/pocketnote/app/Note;->setLocked(Z)V

    const/16 v2, 0x35

    aput-boolean v8, v0, v2

    .line 129
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    const/16 v1, 0x36

    aput-boolean v8, v0, v1

    return-void
.end method

.method public remove(Lchan/android/app/pocketnote/app/Note;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/util/TextUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    aput-boolean v6, v1, v0

    .line 105
    :goto_0
    iget-object v0, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modified_time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    const/16 v0, 0x26

    aput-boolean v6, v1, v0

    return-void

    .line 97
    :cond_0
    const/16 v0, 0x1f

    aput-boolean v6, v1, v0

    .line 98
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/app/reminder/Reminder;->fromJson(Ljava/lang/String;)Lchan/android/app/pocketnote/app/reminder/Reminder;

    move-result-object v0

    const/16 v2, 0x20

    aput-boolean v6, v1, v2

    .line 99
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getType()Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    move-result-object v0

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    if-eq v0, v2, :cond_1

    const/16 v0, 0x21

    aput-boolean v6, v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    aput-boolean v6, v1, v0

    .line 100
    iget-object v0, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x23

    aput-boolean v6, v1, v2

    .line 101
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v2

    const/16 v3, 0x24

    aput-boolean v6, v1, v3

    .line 102
    invoke-virtual {v2, p1}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getId(Lchan/android/app/pocketnote/app/Note;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v0, 0x25

    aput-boolean v6, v1, v0

    goto :goto_0
.end method

.method public removeAll()V
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 158
    iget-object v1, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "trashed=1"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    const/16 v1, 0x43

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public removeReminder(Lchan/android/app/pocketnote/app/Note;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 182
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x4d

    aput-boolean v8, v0, v2

    .line 183
    const-string v2, "reminder_json"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x4e

    aput-boolean v8, v0, v2

    .line 184
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    const/16 v1, 0x4f

    aput-boolean v8, v0, v1

    return-void
.end method

.method public restore(Lchan/android/app/pocketnote/app/Note;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x18

    aput-boolean v8, v0, v2

    .line 87
    const-string v2, "trashed"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x19

    aput-boolean v8, v0, v2

    .line 88
    const-string v2, "deleted_time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x1a

    aput-boolean v8, v0, v2

    .line 89
    invoke-virtual {p1, v4}, Lchan/android/app/pocketnote/app/Note;->setTrashed(Z)V

    const/16 v2, 0x1b

    aput-boolean v8, v0, v2

    .line 90
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lchan/android/app/pocketnote/app/Note;->setDeletedTime(J)V

    const/16 v2, 0x1c

    aput-boolean v8, v0, v2

    .line 91
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    const/16 v1, 0x1d

    aput-boolean v8, v0, v1

    return-void
.end method

.method public searchInCalendar(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v6

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v0, 0x52

    aput-boolean v7, v6, v0

    .line 201
    iget-object v0, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->ALL_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trashed=0 AND calendar_year!=-1 AND calendar_month!=-1 AND calendar_day!=-1  AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x53

    aput-boolean v7, v6, v1

    .line 208
    invoke-direct {p0, v0}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getAllNotes(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x54

    aput-boolean v7, v6, v1

    return-object v0
.end method

.method public trash(Lchan/android/app/pocketnote/app/Note;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x11

    aput-boolean v8, v0, v1

    .line 76
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0x12

    aput-boolean v8, v0, v4

    .line 77
    const-string v4, "trashed"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x13

    aput-boolean v8, v0, v4

    .line 78
    const-string v4, "deleted_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x14

    aput-boolean v8, v0, v4

    .line 79
    invoke-virtual {p1, v8}, Lchan/android/app/pocketnote/app/Note;->setTrashed(Z)V

    const/16 v4, 0x15

    aput-boolean v8, v0, v4

    .line 80
    invoke-virtual {p1, v2, v3}, Lchan/android/app/pocketnote/app/Note;->setDeletedTime(J)V

    const/16 v2, 0x16

    aput-boolean v8, v0, v2

    .line 81
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    const/16 v1, 0x17

    aput-boolean v8, v0, v1

    return-void
.end method

.method public uncheck(Lchan/android/app/pocketnote/app/Note;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x3f

    aput-boolean v8, v0, v2

    .line 151
    const-string v2, "checked"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x40

    aput-boolean v8, v0, v2

    .line 152
    invoke-virtual {p1, v4}, Lchan/android/app/pocketnote/app/Note;->setChecked(Z)V

    const/16 v2, 0x41

    aput-boolean v8, v0, v2

    .line 153
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 154
    const/16 v1, 0x42

    aput-boolean v8, v0, v1

    return-void
.end method

.method public unlock(Lchan/android/app/pocketnote/app/Note;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->$jacocoInit()[Z

    move-result-object v0

    .line 134
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x37

    aput-boolean v8, v0, v2

    .line 135
    const-string v2, "locked"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x38

    aput-boolean v8, v0, v2

    .line 136
    invoke-virtual {p1, v4}, Lchan/android/app/pocketnote/app/Note;->setLocked(Z)V

    const/16 v2, 0x39

    aput-boolean v8, v0, v2

    .line 137
    iget-object v2, p0, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/db/NoteContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    const/16 v1, 0x3a

    aput-boolean v8, v0, v1

    return-void
.end method
