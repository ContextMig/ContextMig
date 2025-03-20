.class public Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;
.super Ljava/lang/Object;
.source "NotesDropboxStorage.java"

# interfaces
.implements Lcom/iliakplv/notes/notes/storage/NotesStorage;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final CACHE_LABELS_LIST:I = 0x4

.field private static final CACHE_NOTE:I = 0x1

.field private static final CACHE_NOTES_LIST:I = 0x2

.field private static final INVALID_ID:Ljava/lang/String; = ""

.field private static final LABELS_COLOR:Ljava/lang/String; = "color"

.field private static final LABELS_FIELDS:[Ljava/lang/String;

.field private static final LABELS_NAME:Ljava/lang/String; = "name"

.field private static final LABELS_TABLE:Ljava/lang/String; = "labels"

.field private static final NOTES_CHANGE_TIME:Ljava/lang/String; = "changed"

.field private static final NOTES_CREATE_TIME:Ljava/lang/String; = "created"

.field private static final NOTES_FIELDS:[Ljava/lang/String;

.field private static final NOTES_LABELS_FIELDS:[Ljava/lang/String;

.field private static final NOTES_LABELS_LABEL_ID:Ljava/lang/String; = "label_id"

.field private static final NOTES_LABELS_NOTE_ID:Ljava/lang/String; = "note_id"

.field private static final NOTES_LABELS_TABLE:Ljava/lang/String; = "notes_labels"

.field private static final NOTES_TABLE:Ljava/lang/String; = "notes"

.field private static final NOTES_TEXT:Ljava/lang/String; = "text"

.field private static final NOTES_TITLE:Ljava/lang/String; = "title"

.field private static final RESOLUTION_RULE:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field datastore:Lcom/dropbox/sync/android/DbxDatastore;

.field private labelComparator:Lcom/iliakplv/notes/notes/LabelComparator;

.field private labelsListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/Label;",
            ">;"
        }
    .end annotation
.end field

.field private volatile labelsListCacheActual:Z

.field private labelsTable:Lcom/dropbox/sync/android/DbxTable;

.field private lastSearchQuery:Ljava/lang/String;

.field private noteCache:Lcom/iliakplv/notes/notes/AbstractNote;

.field private volatile noteCacheActual:Z

.field private volatile noteCacheNoteId:Ljava/io/Serializable;

.field private noteComparator:Lcom/iliakplv/notes/notes/NoteComparator;

.field private notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

.field private notesListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/AbstractNote;",
            ">;"
        }
    .end annotation
.end field

.field private volatile notesListCacheActual:Z

.field private volatile notesListCacheLabelId:Ljava/io/Serializable;

.field private notesTable:Lcom/dropbox/sync/android/DbxTable;

.field private searchListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/AbstractNote;",
            ">;"
        }
    .end annotation
.end field

.field private final storageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/storage/NotesStorageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7196483166db35bcL    # -3.085535755508678E-239

    const-string v2, "com/iliakplv/notes/notes/dropbox/NotesDropboxStorage"

    const/16 v3, 0x138

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    const-class v1, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/dropbox/sync/android/DbxTable$ResolutionRule;->LOCAL:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->RESOLUTION_RULE:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    .line 47
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "title"

    aput-object v2, v1, v5

    const-string v2, "text"

    aput-object v2, v1, v4

    const-string v2, "created"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "changed"

    aput-object v3, v1, v2

    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->NOTES_FIELDS:[Ljava/lang/String;

    .line 53
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v1, v5

    const-string v2, "color"

    aput-object v2, v1, v4

    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->LABELS_FIELDS:[Ljava/lang/String;

    .line 59
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "note_id"

    aput-object v2, v1, v5

    const-string v2, "label_id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->NOTES_LABELS_FIELDS:[Ljava/lang/String;

    const/16 v1, 0x137

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCacheLabelId:Ljava/io/Serializable;

    .line 74
    iput-boolean v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCacheActual:Z

    aput-boolean v4, v1, v2

    .line 77
    new-instance v0, Lcom/iliakplv/notes/notes/NoteComparator;

    invoke-direct {v0}, Lcom/iliakplv/notes/notes/NoteComparator;-><init>()V

    iput-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteComparator:Lcom/iliakplv/notes/notes/NoteComparator;

    aput-boolean v4, v1, v4

    .line 78
    new-instance v0, Lcom/iliakplv/notes/notes/LabelComparator;

    invoke-direct {v0}, Lcom/iliakplv/notes/notes/LabelComparator;-><init>()V

    iput-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelComparator:Lcom/iliakplv/notes/notes/LabelComparator;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheNoteId:Ljava/io/Serializable;

    .line 83
    iput-boolean v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheActual:Z

    .line 87
    iput-boolean v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCacheActual:Z

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->searchListCache:Ljava/util/List;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->lastSearchQuery:Ljava/lang/String;

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    const/4 v0, 0x4

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 99
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->getAccount()Lcom/dropbox/sync/android/DbxAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxDatastore;->openDefault(Lcom/dropbox/sync/android/DbxAccount;)Lcom/dropbox/sync/android/DbxDatastore;

    move-result-object v0

    iput-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->datastore:Lcom/dropbox/sync/android/DbxDatastore;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->syncDatastore()V

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 106
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->initTables()V

    .line 107
    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    return-void

    .line 100
    :catch_0
    move-exception v0

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .line 101
    sget-object v2, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v3, "Error opening datastore"

    invoke-static {v2, v3, v0}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error opening datastore"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    throw v0
.end method

.method static synthetic access$000(Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    const/16 v2, 0x136

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static createLabelFromRecord(Lcom/dropbox/sync/android/DbxRecord;)Lcom/iliakplv/notes/notes/Label;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 404
    if-nez p0, :cond_0

    .line 405
    const/4 v0, 0x0

    const/16 v2, 0xb7

    aput-boolean v6, v1, v2

    .line 412
    :goto_0
    return-object v0

    .line 408
    :cond_0
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0xb8

    aput-boolean v6, v1, v0

    .line 409
    const-string v0, "color"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxRecord;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v3, v4

    const/16 v0, 0xb9

    aput-boolean v6, v1, v0

    .line 410
    new-instance v0, Lcom/iliakplv/notes/notes/Label;

    invoke-direct {v0, v2, v3}, Lcom/iliakplv/notes/notes/Label;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0xba

    aput-boolean v6, v1, v2

    .line 411
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxRecord;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/notes/Label;->setId(Ljava/io/Serializable;)V

    .line 412
    const/16 v2, 0xbb

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method private static createNoteFromRecord(Lcom/dropbox/sync/android/DbxRecord;)Lcom/iliakplv/notes/notes/AbstractNote;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 221
    if-nez p0, :cond_0

    .line 222
    const/4 v0, 0x0

    const/16 v2, 0x50

    aput-boolean v8, v1, v2

    .line 234
    :goto_0
    return-object v0

    .line 225
    :cond_0
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x51

    aput-boolean v8, v1, v0

    .line 226
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x52

    aput-boolean v8, v1, v0

    .line 227
    const-string v0, "created"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxRecord;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v0, 0x53

    aput-boolean v8, v1, v0

    .line 228
    const-string v0, "changed"

    invoke-virtual {p0, v0}, Lcom/dropbox/sync/android/DbxRecord;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v0, 0x54

    aput-boolean v8, v1, v0

    .line 230
    new-instance v0, Lcom/iliakplv/notes/notes/TextNote;

    invoke-direct {v0, v2, v3}, Lcom/iliakplv/notes/notes/TextNote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x55

    aput-boolean v8, v1, v2

    .line 231
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v4, v5}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/notes/AbstractNote;->setCreateTime(Lorg/joda/time/DateTime;)V

    const/16 v2, 0x56

    aput-boolean v8, v1, v2

    .line 232
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v6, v7}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/notes/AbstractNote;->setChangeTime(Lorg/joda/time/DateTime;)V

    const/16 v2, 0x57

    aput-boolean v8, v1, v2

    .line 233
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxRecord;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/notes/AbstractNote;->setId(Ljava/io/Serializable;)V

    .line 234
    const/16 v2, 0x58

    aput-boolean v8, v1, v2

    goto :goto_0
.end method

.method private deleteNoteLabels(ZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 332
    new-instance v3, Lcom/dropbox/sync/android/DbxFields;

    invoke-direct {v3}, Lcom/dropbox/sync/android/DbxFields;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "note_id"

    const/16 v4, 0x92

    aput-boolean v5, v2, v4

    :goto_0
    const/16 v4, 0x94

    aput-boolean v5, v2, v4

    .line 333
    invoke-virtual {v3, v1, p2}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v1

    const/16 v3, 0x95

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v3

    .line 337
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v3, v1}, Lcom/dropbox/sync/android/DbxTable;->query(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 343
    .local v0, "notesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v1, 0x99

    aput-boolean v5, v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/DbxRecord;

    const/16 v4, 0x9a

    aput-boolean v5, v2, v4

    .line 344
    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxRecord;->deleteRecord()V

    .line 345
    const/16 v1, 0x9b

    aput-boolean v5, v2, v1

    goto :goto_1

    .line 332
    .end local v0    # "notesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_0
    const-string v1, "label_id"

    const/16 v4, 0x93

    aput-boolean v5, v2, v4

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    const/16 v3, 0x96

    aput-boolean v5, v2, v3

    .line 339
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v4, "deleteNoteLabels()"

    invoke-static {v3, v4, v1}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x97

    aput-boolean v5, v2, v1

    .line 340
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v3, 0x98

    aput-boolean v5, v2, v3

    throw v1

    .line 346
    .restart local v0    # "notesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_1
    const/16 v1, 0x9c

    aput-boolean v5, v2, v1

    return-void
.end method

.method private getNotesIdsForLabel(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 498
    new-instance v1, Lcom/dropbox/sync/android/DbxFields;

    invoke-direct {v1}, Lcom/dropbox/sync/android/DbxFields;-><init>()V

    const-string v3, "label_id"

    invoke-virtual {v1, v3, p1}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v1

    const/16 v3, 0xe9

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v3

    .line 502
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v3, v1}, Lcom/dropbox/sync/android/DbxTable;->query(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 508
    .local v0, "notesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/16 v1, 0xed

    aput-boolean v6, v2, v1

    .line 509
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v1, 0xee

    aput-boolean v6, v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/DbxRecord;

    const/16 v5, 0xef

    aput-boolean v6, v2, v5

    .line 510
    const-string v5, "note_id"

    invoke-virtual {v1, v5}, Lcom/dropbox/sync/android/DbxRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    const/16 v1, 0xf0

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 503
    .end local v0    # "notesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :catch_0
    move-exception v1

    const/16 v3, 0xea

    aput-boolean v6, v2, v3

    .line 504
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v4, "getNotesIdsForLabel()"

    invoke-static {v3, v4, v1}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xeb

    aput-boolean v6, v2, v1

    .line 505
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v3, 0xec

    aput-boolean v6, v2, v3

    throw v1

    .line 512
    .restart local v0    # "notesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_0
    const/16 v1, 0xf1

    aput-boolean v6, v2, v1

    return-object v3
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 613
    new-instance v1, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;

    invoke-direct {v1, p0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;-><init>(Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;)V

    invoke-static {v1}, Lcom/iliakplv/notes/NotesApplication;->executeInBackground(Ljava/lang/Runnable;)V

    .line 623
    const/16 v1, 0x124

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private onStorageContentChanged(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 593
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->syncDatastore()V

    .line 596
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0x11d

    aput-boolean v2, v0, v1

    .line 599
    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x11f

    aput-boolean v2, v0, v1

    .line 603
    :goto_1
    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_2

    const/16 v1, 0x121

    aput-boolean v2, v0, v1

    .line 607
    :goto_2
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notifyListeners()V

    .line 608
    const/16 v1, 0x123

    aput-boolean v2, v0, v1

    return-void

    .line 597
    :cond_0
    iput-boolean v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheActual:Z

    const/16 v1, 0x11e

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 600
    :cond_1
    iput-boolean v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCacheActual:Z

    .line 601
    const-string v1, ""

    iput-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->lastSearchQuery:Ljava/lang/String;

    const/16 v1, 0x120

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 604
    :cond_2
    iput-boolean v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCacheActual:Z

    const/16 v1, 0x122

    aput-boolean v2, v0, v1

    goto :goto_2
.end method

.method private refreshLabelsListCacheIfNeeded()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v3

    .line 372
    sget-object v4, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Labels entries refresh. Cached entries list "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCacheActual:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    const/16 v6, 0xa5

    aput-boolean v7, v3, v6

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "actual"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-boolean v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCacheActual:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xa7

    aput-boolean v7, v3, v2

    .line 401
    .local v0, "allLabelsRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :goto_1
    const/16 v2, 0xb6

    aput-boolean v7, v3, v2

    return-void

    .line 372
    .end local v0    # "allLabelsRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_0
    const-string v2, "NOT "

    const/16 v6, 0xa6

    aput-boolean v7, v3, v6

    goto :goto_0

    .line 374
    :cond_1
    const/16 v2, 0xa8

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v3, v2

    .line 378
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxTable;->query()Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 385
    .restart local v0    # "allLabelsRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCache:Ljava/util/List;

    if-eqz v2, :cond_2

    const/16 v2, 0xac

    aput-boolean v7, v3, v2

    .line 386
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v2, 0xad

    aput-boolean v7, v3, v2

    .line 390
    :goto_2
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v2, 0xaf

    aput-boolean v7, v3, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/sync/android/DbxRecord;

    const/16 v5, 0xb0

    aput-boolean v7, v3, v5

    .line 391
    invoke-static {v2}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->createLabelFromRecord(Lcom/dropbox/sync/android/DbxRecord;)Lcom/iliakplv/notes/notes/Label;

    move-result-object v1

    .line 392
    .local v1, "labelFromRecord":Lcom/iliakplv/notes/notes/Label;
    if-nez v1, :cond_3

    const/16 v2, 0xb1

    aput-boolean v7, v3, v2

    .line 395
    :goto_4
    const/16 v2, 0xb4

    aput-boolean v7, v3, v2

    goto :goto_3

    .line 379
    .end local v0    # "allLabelsRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .end local v1    # "labelFromRecord":Lcom/iliakplv/notes/notes/Label;
    :catch_0
    move-exception v2

    const/16 v4, 0xa9

    aput-boolean v7, v3, v4

    .line 380
    sget-object v4, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v5, "refreshLabelsListCacheIfNeeded()"

    invoke-static {v4, v5, v2}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0xaa

    aput-boolean v7, v3, v2

    .line 381
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v4, 0xab

    aput-boolean v7, v3, v4

    throw v2

    .line 388
    .restart local v0    # "allLabelsRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCache:Ljava/util/List;

    const/16 v2, 0xae

    aput-boolean v7, v3, v2

    goto :goto_2

    .line 392
    .restart local v1    # "labelFromRecord":Lcom/iliakplv/notes/notes/Label;
    :cond_3
    const/16 v2, 0xb2

    aput-boolean v7, v3, v2

    .line 393
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xb3

    aput-boolean v7, v3, v2

    goto :goto_4

    .line 397
    .end local v1    # "labelFromRecord":Lcom/iliakplv/notes/notes/Label;
    :cond_4
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCache:Ljava/util/List;

    iget-object v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelComparator:Lcom/iliakplv/notes/notes/LabelComparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 399
    iput-boolean v7, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCacheActual:Z

    const/16 v2, 0xb5

    aput-boolean v7, v3, v2

    goto/16 :goto_1
.end method

.method private refreshNoteCacheIfNeeded(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v3

    .line 162
    iget-boolean v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheActual:Z

    if-nez v0, :cond_0

    const/16 v0, 0x25

    aput-boolean v1, v3, v0

    :goto_0
    const/16 v0, 0x27

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_1
    const/16 v2, 0x29

    aput-boolean v1, v3, v2

    .line 163
    sget-object v4, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Note entry refresh (id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "). Cached entry "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_2

    const-string v2, "NOT "

    const/16 v6, 0x2a

    aput-boolean v1, v3, v6

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "actual"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-nez v0, :cond_3

    const/16 v0, 0x2c

    aput-boolean v1, v3, v0

    .line 176
    :goto_3
    const/16 v0, 0x32

    aput-boolean v1, v3, v0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheNoteId:Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x26

    aput-boolean v1, v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x28

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 163
    :cond_2
    const-string v2, ""

    const/16 v6, 0x2b

    aput-boolean v1, v3, v6

    goto :goto_2

    .line 165
    :cond_3
    const/16 v0, 0x2d

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v3, v0

    .line 167
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/DbxTable;->get(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->createNoteFromRecord(Lcom/dropbox/sync/android/DbxRecord;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v0

    iput-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCache:Lcom/iliakplv/notes/notes/AbstractNote;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    iput-object p1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheNoteId:Ljava/io/Serializable;

    .line 174
    iput-boolean v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheActual:Z

    const/16 v0, 0x31

    aput-boolean v1, v3, v0

    goto :goto_3

    .line 168
    :catch_0
    move-exception v0

    const/16 v2, 0x2e

    aput-boolean v1, v3, v2

    .line 169
    sget-object v2, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v4, "refreshNoteCacheIfNeeded()"

    invoke-static {v2, v4, v0}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x2f

    aput-boolean v1, v3, v0

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v2, 0x30

    aput-boolean v1, v3, v2

    throw v0
.end method

.method private refreshNotesListCacheIfNeeded(Ljava/io/Serializable;)V
    .locals 11

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v7

    .line 179
    iget-boolean v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCacheActual:Z

    if-nez v4, :cond_0

    const/16 v4, 0x33

    aput-boolean v5, v7, v4

    :goto_0
    const/16 v4, 0x35

    aput-boolean v5, v7, v4

    move v4, v5

    :goto_1
    const/16 v6, 0x37

    aput-boolean v5, v7, v6

    .line 180
    sget-object v8, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notes entries refresh (labelId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "). Cached entries list "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v4, :cond_2

    const-string v6, "NOT "

    const/16 v10, 0x38

    aput-boolean v5, v7, v10

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "actual"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-nez v4, :cond_3

    const/16 v4, 0x3a

    aput-boolean v5, v7, v4

    .line 218
    .local v0, "allNotesRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .local v2, "noteIdsForLabel":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "notesForAllLabels":Z
    :goto_3
    const/16 v4, 0x4f

    aput-boolean v5, v7, v4

    return-void

    .line 179
    .end local v0    # "allNotesRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .end local v2    # "noteIdsForLabel":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "notesForAllLabels":Z
    :cond_0
    iget-object v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCacheLabelId:Ljava/io/Serializable;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x34

    aput-boolean v5, v7, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/16 v6, 0x36

    aput-boolean v5, v7, v6

    goto :goto_1

    .line 180
    :cond_2
    const-string v6, ""

    const/16 v10, 0x39

    aput-boolean v5, v7, v10

    goto :goto_2

    .line 182
    :cond_3
    const/16 v4, 0x3b

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v7, v4

    .line 186
    iget-object v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxTable;->query()Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    .restart local v0    # "allNotesRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    sget-object v4, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->NOTES_FOR_ALL_LABELS:Ljava/lang/Integer;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 194
    .restart local v3    # "notesForAllLabels":Z
    if-eqz v3, :cond_4

    const/4 v2, 0x0

    const/16 v4, 0x3f

    aput-boolean v5, v7, v4

    .line 199
    .restart local v2    # "noteIdsForLabel":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_4
    iget-object v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCache:Ljava/util/List;

    if-eqz v4, :cond_5

    const/16 v4, 0x42

    aput-boolean v5, v7, v4

    .line 200
    iget-object v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/16 v4, 0x43

    aput-boolean v5, v7, v4

    .line 204
    :goto_5
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v4, 0x45

    aput-boolean v5, v7, v4

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dropbox/sync/android/DbxRecord;

    const/16 v8, 0x46

    aput-boolean v5, v7, v8

    .line 205
    if-eqz v3, :cond_6

    const/16 v8, 0x47

    aput-boolean v5, v7, v8

    .line 206
    :goto_7
    invoke-static {v4}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->createNoteFromRecord(Lcom/dropbox/sync/android/DbxRecord;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v1

    .line 207
    .local v1, "noteFromRecord":Lcom/iliakplv/notes/notes/AbstractNote;
    if-nez v1, :cond_8

    const/16 v4, 0x4a

    aput-boolean v5, v7, v4

    .line 211
    .end local v1    # "noteFromRecord":Lcom/iliakplv/notes/notes/AbstractNote;
    :goto_8
    const/16 v4, 0x4d

    aput-boolean v5, v7, v4

    goto :goto_6

    .line 187
    .end local v0    # "allNotesRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .end local v2    # "noteIdsForLabel":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "notesForAllLabels":Z
    :catch_0
    move-exception v4

    const/16 v6, 0x3c

    aput-boolean v5, v7, v6

    .line 188
    sget-object v6, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v8, "refreshNotesListCacheIfNeeded"

    invoke-static {v6, v8, v4}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v4, 0x3d

    aput-boolean v5, v7, v4

    .line 189
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v6, 0x3e

    aput-boolean v5, v7, v6

    throw v4

    .restart local v0    # "allNotesRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .restart local v3    # "notesForAllLabels":Z
    :cond_4
    move-object v4, p1

    .line 194
    check-cast v4, Ljava/lang/String;

    const/16 v6, 0x40

    aput-boolean v5, v7, v6

    .line 196
    invoke-direct {p0, v4}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->getNotesIdsForLabel(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const/16 v4, 0x41

    aput-boolean v5, v7, v4

    goto :goto_4

    .line 202
    .restart local v2    # "noteIdsForLabel":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCache:Ljava/util/List;

    const/16 v4, 0x44

    aput-boolean v5, v7, v4

    goto :goto_5

    .line 205
    :cond_6
    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxRecord;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const/16 v4, 0x48

    aput-boolean v5, v7, v4

    goto :goto_8

    :cond_7
    const/16 v8, 0x49

    aput-boolean v5, v7, v8

    goto :goto_7

    .line 207
    .restart local v1    # "noteFromRecord":Lcom/iliakplv/notes/notes/AbstractNote;
    :cond_8
    const/16 v4, 0x4b

    aput-boolean v5, v7, v4

    .line 208
    iget-object v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCache:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x4c

    aput-boolean v5, v7, v4

    goto :goto_8

    .line 213
    .end local v1    # "noteFromRecord":Lcom/iliakplv/notes/notes/AbstractNote;
    :cond_9
    iget-object v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCache:Ljava/util/List;

    iget-object v6, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteComparator:Lcom/iliakplv/notes/notes/NoteComparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    iput-object p1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCacheLabelId:Ljava/io/Serializable;

    .line 216
    iput-boolean v5, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCacheActual:Z

    const/16 v4, 0x4e

    aput-boolean v5, v7, v4

    goto/16 :goto_3
.end method

.method private syncDatastore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->datastore:Lcom/dropbox/sync/android/DbxDatastore;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxDatastore;->sync()Ljava/util/Map;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    return-void

    .line 112
    :catch_0
    move-exception v0

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 113
    sget-object v2, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v3, "syncDatastore()"

    invoke-static {v2, v3, v0}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    throw v0
.end method


# virtual methods
.method public addStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 627
    if-nez p1, :cond_0

    const/16 v0, 0x125

    aput-boolean v4, v1, v0

    .line 628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const/16 v2, 0x126

    aput-boolean v4, v1, v2

    throw v0

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    monitor-enter v2

    const/16 v0, 0x127

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 631
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x128

    aput-boolean v4, v1, v2

    return v0

    .line 632
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x129

    aput-boolean v4, v1, v2

    throw v0
.end method

.method public attachListeners(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/storage/NotesStorageListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 657
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    monitor-enter v2

    const/16 v0, 0x133

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 658
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 659
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notifyListeners()V

    .line 661
    const/16 v0, 0x135

    aput-boolean v4, v1, v0

    return-void

    .line 659
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x134

    aput-boolean v4, v1, v2

    throw v0
.end method

.method public clear()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v4

    .line 571
    const/4 v3, 0x3

    new-array v1, v3, [Lcom/dropbox/sync/android/DbxTable;

    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsTable:Lcom/dropbox/sync/android/DbxTable;

    aput-object v3, v1, v8

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesTable:Lcom/dropbox/sync/android/DbxTable;

    aput-object v5, v1, v3

    .line 573
    .local v1, "allTables":[Lcom/dropbox/sync/android/DbxTable;
    array-length v5, v1

    const/16 v3, 0x113

    aput-boolean v8, v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v1, v3

    const/16 v6, 0x114

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v4, v6

    .line 576
    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxTable;->query()Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 582
    .local v0, "allTableRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v2, 0x118

    aput-boolean v8, v4, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/sync/android/DbxRecord;

    const/16 v7, 0x119

    aput-boolean v8, v4, v7

    .line 583
    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxRecord;->deleteRecord()V

    .line 584
    const/16 v2, 0x11a

    aput-boolean v8, v4, v2

    goto :goto_1

    .line 577
    .end local v0    # "allTableRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :catch_0
    move-exception v2

    const/16 v3, 0x115

    aput-boolean v8, v4, v3

    .line 578
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v5, "clear()"

    invoke-static {v3, v5, v2}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0x116

    aput-boolean v8, v4, v2

    .line 579
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v3, 0x117

    aput-boolean v8, v4, v3

    throw v2

    .line 573
    .restart local v0    # "allTableRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    const/16 v3, 0x11b

    aput-boolean v8, v4, v3

    move v3, v2

    goto :goto_0

    .line 587
    .end local v0    # "allTableRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_1
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    .line 588
    const/16 v2, 0x11c

    aput-boolean v8, v4, v2

    return-void
.end method

.method public deleteLabel(Ljava/io/Serializable;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v3

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "deleted":Z
    check-cast p1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v3, v2

    .line 449
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v2, p1}, Lcom/dropbox/sync/android/DbxTable;->get(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    .line 450
    .local v1, "labelRecord":Lcom/dropbox/sync/android/DbxRecord;
    if-nez v1, :cond_0

    const/16 v2, 0xcd

    const/4 v4, 0x1

    aput-boolean v4, v3, v2
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    const/16 v2, 0xd5

    aput-boolean v6, v3, v2

    return v0

    .line 450
    :cond_0
    const/16 v2, 0xce

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v3, v2

    .line 451
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->deleteNoteLabels(ZLjava/lang/String;)V

    const/16 v2, 0xcf

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 452
    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxRecord;->deleteRecord()V

    .line 453
    const/4 v0, 0x1

    const/16 v2, 0xd0

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 454
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    const/16 v2, 0xd1

    const/4 v4, 0x1

    aput-boolean v4, v3, v2
    :try_end_1
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 456
    .end local v1    # "labelRecord":Lcom/dropbox/sync/android/DbxRecord;
    :catch_0
    move-exception v2

    const/16 v4, 0xd2

    aput-boolean v6, v3, v4

    .line 457
    sget-object v4, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v5, "deleteLabel()"

    invoke-static {v4, v5, v2}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0xd3

    aput-boolean v6, v3, v2

    .line 458
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v4, 0xd4

    aput-boolean v6, v3, v4

    throw v2
.end method

.method public deleteLabelFromNote(Ljava/io/Serializable;Ljava/io/Serializable;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v5

    .line 546
    new-instance v6, Lcom/dropbox/sync/android/DbxFields;

    invoke-direct {v6}, Lcom/dropbox/sync/android/DbxFields;-><init>()V

    const-string v7, "note_id"

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const/16 v8, 0x103

    aput-boolean v4, v5, v8

    .line 547
    invoke-virtual {v6, v7, v2}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v2

    const-string v6, "label_id"

    check-cast p2, Ljava/lang/String;

    const/16 v7, 0x104

    aput-boolean v4, v5, v7

    .line 548
    invoke-virtual {v2, v6, p2}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v2

    const/16 v6, 0x105

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v5, v6

    .line 552
    iget-object v6, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v6, v2}, Lcom/dropbox/sync/android/DbxTable;->query(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 558
    .local v1, "notesLabels":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    const/16 v2, 0x109

    aput-boolean v4, v5, v2

    .line 559
    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v2, 0x10a

    aput-boolean v4, v5, v2

    move v0, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/sync/android/DbxRecord;

    const/16 v7, 0x10b

    aput-boolean v4, v5, v7

    .line 560
    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxRecord;->deleteRecord()V

    .line 561
    const/4 v0, 0x1

    .line 562
    .local v0, "deleted":Z
    const/16 v2, 0x10c

    aput-boolean v4, v5, v2

    goto :goto_0

    .line 553
    .end local v0    # "deleted":Z
    .end local v1    # "notesLabels":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :catch_0
    move-exception v2

    const/16 v3, 0x106

    aput-boolean v4, v5, v3

    .line 554
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v6, "deleteLabelFromNote()"

    invoke-static {v3, v6, v2}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0x107

    aput-boolean v4, v5, v2

    .line 555
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v3, 0x108

    aput-boolean v4, v5, v3

    throw v2

    .line 563
    .restart local v1    # "notesLabels":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_0
    if-nez v0, :cond_1

    const/16 v2, 0x10d

    aput-boolean v4, v5, v2

    .line 566
    :goto_1
    const/16 v2, 0x112

    aput-boolean v4, v5, v2

    return v0

    .line 563
    :cond_1
    const/16 v2, 0x10e

    aput-boolean v4, v5, v2

    .line 564
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheNoteId:Ljava/io/Serializable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10f

    aput-boolean v4, v5, v2

    move v3, v4

    :goto_2
    or-int/lit8 v2, v3, 0x2

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    const/16 v2, 0x111

    aput-boolean v4, v5, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x110

    aput-boolean v4, v5, v2

    goto :goto_2
.end method

.method public deleteNote(Ljava/io/Serializable;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v4

    .line 313
    const/4 v0, 0x0

    .local v0, "deleted":Z
    move-object v2, p1

    .line 314
    check-cast v2, Ljava/lang/String;

    const/16 v5, 0x86

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v4, v5

    .line 316
    iget-object v5, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v5, v2}, Lcom/dropbox/sync/android/DbxTable;->get(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    .line 317
    .local v1, "noteRecord":Lcom/dropbox/sync/android/DbxRecord;
    if-nez v1, :cond_0

    const/16 v2, 0x87

    const/4 v5, 0x1

    aput-boolean v5, v4, v2
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    const/16 v2, 0x91

    aput-boolean v3, v4, v2

    return v0

    .line 317
    :cond_0
    const/16 v5, 0x88

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v4, v5

    .line 318
    const/4 v5, 0x1

    invoke-direct {p0, v5, v2}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->deleteNoteLabels(ZLjava/lang/String;)V

    const/16 v2, 0x89

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    .line 319
    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxRecord;->deleteRecord()V

    .line 320
    const/4 v0, 0x1

    const/16 v2, 0x8a

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    .line 321
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheNoteId:Ljava/io/Serializable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8b

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    move v2, v3

    :goto_1
    or-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    const/16 v2, 0x8d

    const/4 v5, 0x1

    aput-boolean v5, v4, v2
    :try_end_1
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 323
    .end local v1    # "noteRecord":Lcom/dropbox/sync/android/DbxRecord;
    :catch_0
    move-exception v2

    const/16 v5, 0x8e

    aput-boolean v3, v4, v5

    .line 324
    sget-object v5, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v6, "deleteNote()"

    invoke-static {v5, v6, v2}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0x8f

    aput-boolean v3, v4, v2

    .line 325
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v5, 0x90

    aput-boolean v3, v4, v5

    throw v2

    .line 321
    .restart local v1    # "noteRecord":Lcom/dropbox/sync/android/DbxRecord;
    :cond_1
    const/4 v2, 0x0

    const/16 v5, 0x8c

    const/4 v6, 0x1

    :try_start_2
    aput-boolean v6, v4, v5
    :try_end_2
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public detachAllListeners()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/storage/NotesStorageListener;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 647
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    monitor-enter v2

    const/16 v0, 0x12f

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 648
    new-instance v0, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/16 v3, 0x130

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 650
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 651
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x131

    aput-boolean v5, v1, v2

    return-object v0

    .line 652
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x132

    aput-boolean v5, v1, v2

    throw v0
.end method

.method public getAllLabels()Ljava/util/List;
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
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 367
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->refreshLabelsListCacheIfNeeded()V

    .line 368
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsListCache:Ljava/util/List;

    const/16 v2, 0xa4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getAllNotesLabelsIds()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/Serializable;",
            "Ljava/io/Serializable;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v3

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxTable;->query()Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 524
    .local v0, "allNotesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/16 v4, 0xf5

    aput-boolean v9, v3, v4

    .line 526
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v5, 0xf6

    aput-boolean v9, v3, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/DbxRecord;

    .line 527
    .local v1, "record":Lcom/dropbox/sync/android/DbxRecord;
    new-instance v5, Landroid/util/Pair;

    const-string v6, "note_id"

    const/16 v7, 0xf7

    aput-boolean v9, v3, v7

    .line 528
    invoke-virtual {v1, v6}, Lcom/dropbox/sync/android/DbxRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "label_id"

    const/16 v8, 0xf8

    aput-boolean v9, v3, v8

    .line 529
    invoke-virtual {v1, v7}, Lcom/dropbox/sync/android/DbxRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0xf9

    aput-boolean v9, v3, v6

    .line 527
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    const/16 v5, 0xfa

    aput-boolean v9, v3, v5

    goto :goto_0

    .line 520
    .end local v0    # "allNotesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .end local v1    # "record":Lcom/dropbox/sync/android/DbxRecord;
    :catch_0
    move-exception v2

    const/16 v4, 0xf2

    aput-boolean v9, v3, v4

    .line 521
    sget-object v4, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v5, "getAllNotesLabelsIds()"

    invoke-static {v4, v5, v2}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0xf3

    aput-boolean v9, v3, v2

    .line 522
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v4, 0xf4

    aput-boolean v9, v3, v4

    throw v2

    .line 531
    .restart local v0    # "allNotesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_0
    const/16 v4, 0xfb

    aput-boolean v9, v3, v4

    return-object v2
.end method

.method public getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 350
    check-cast p1, Ljava/lang/String;

    const/16 v1, 0x9d

    aput-boolean v5, v2, v1

    .line 351
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxTable;->isValidId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9e

    aput-boolean v5, v2, v1

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v1, p1}, Lcom/dropbox/sync/android/DbxTable;->get(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 362
    .local v0, "labelRecord":Lcom/dropbox/sync/android/DbxRecord;
    invoke-static {v0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->createLabelFromRecord(Lcom/dropbox/sync/android/DbxRecord;)Lcom/iliakplv/notes/notes/Label;

    move-result-object v1

    const/16 v3, 0xa3

    aput-boolean v5, v2, v3

    :goto_0
    return-object v1

    .line 352
    .end local v0    # "labelRecord":Lcom/dropbox/sync/android/DbxRecord;
    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x9f

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    const/16 v3, 0xa0

    aput-boolean v5, v2, v3

    .line 359
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v4, "getLabel()"

    invoke-static {v3, v4, v1}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xa1

    aput-boolean v5, v2, v1

    .line 360
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v3, 0xa2

    aput-boolean v5, v2, v3

    throw v1
.end method

.method public getLabelsForNote(Ljava/io/Serializable;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/Label;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 465
    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->getAllLabels()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xd6

    aput-boolean v6, v1, v2

    .line 466
    invoke-virtual {p0, p1}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->getLabelsIdsForNote(Ljava/io/Serializable;)Ljava/util/Set;

    move-result-object v2

    const/16 v3, 0xd7

    aput-boolean v6, v1, v3

    .line 468
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0xd8

    aput-boolean v6, v1, v4

    .line 469
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v0, 0xd9

    aput-boolean v6, v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/Label;

    const/16 v5, 0xda

    aput-boolean v6, v1, v5

    .line 470
    invoke-virtual {v0}, Lcom/iliakplv/notes/notes/Label;->getId()Ljava/io/Serializable;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v0, 0xdb

    aput-boolean v6, v1, v0

    .line 473
    :goto_1
    const/16 v0, 0xde

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 470
    :cond_0
    const/16 v5, 0xdc

    aput-boolean v6, v1, v5

    .line 471
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xdd

    aput-boolean v6, v1, v0

    goto :goto_1

    .line 475
    :cond_1
    const/16 v0, 0xdf

    aput-boolean v6, v1, v0

    return-object v3
.end method

.method public getLabelsIdsForNote(Ljava/io/Serializable;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 480
    new-instance v1, Lcom/dropbox/sync/android/DbxFields;

    invoke-direct {v1}, Lcom/dropbox/sync/android/DbxFields;-><init>()V

    const-string v3, "note_id"

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Lcom/dropbox/sync/android/DbxFields;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxFields;

    move-result-object v1

    const/16 v3, 0xe0

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v3

    .line 484
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v3, v1}, Lcom/dropbox/sync/android/DbxTable;->query(Lcom/dropbox/sync/android/DbxFields;)Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 490
    .local v0, "notesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/16 v1, 0xe4

    aput-boolean v6, v2, v1

    .line 491
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v1, 0xe5

    aput-boolean v6, v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/DbxRecord;

    const/16 v5, 0xe6

    aput-boolean v6, v2, v5

    .line 492
    const-string v5, "label_id"

    invoke-virtual {v1, v5}, Lcom/dropbox/sync/android/DbxRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 493
    const/16 v1, 0xe7

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 485
    .end local v0    # "notesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :catch_0
    move-exception v1

    const/16 v3, 0xe1

    aput-boolean v6, v2, v3

    .line 486
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v4, "getLabelsIdsForNote()"

    invoke-static {v3, v4, v1}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xe2

    aput-boolean v6, v2, v1

    .line 487
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v3, 0xe3

    aput-boolean v6, v2, v3

    throw v1

    .line 494
    .restart local v0    # "notesLabelsIds":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :cond_0
    const/16 v1, 0xe8

    aput-boolean v6, v2, v1

    return-object v3
.end method

.method public getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 153
    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x22

    aput-boolean v3, v1, v0

    .line 154
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxTable;->isValidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    const/16 v2, 0x23

    aput-boolean v3, v1, v2

    .line 158
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->refreshNoteCacheIfNeeded(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCache:Lcom/iliakplv/notes/notes/AbstractNote;

    const/16 v2, 0x24

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public getNotesForLabel(Ljava/io/Serializable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Serializable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/AbstractNote;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 239
    invoke-direct {p0, p1}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->refreshNotesListCacheIfNeeded(Ljava/io/Serializable;)V

    .line 240
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesListCache:Ljava/util/List;

    const/16 v2, 0x59

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getNotesForQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/AbstractNote;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v4

    .line 245
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x5a

    aput-boolean v9, v4, v3

    .line 246
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "searchQuery":Ljava/lang/String;
    const/16 v3, 0x5b

    aput-boolean v9, v4, v3

    .line 247
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x5c

    aput-boolean v9, v4, v3

    .line 271
    :goto_0
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->searchListCache:Ljava/util/List;

    const/16 v5, 0x6e

    aput-boolean v9, v4, v5

    .line 273
    .end local v2    # "searchQuery":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 247
    .restart local v2    # "searchQuery":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x5d

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v4, v3

    .line 250
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxTable;->query()Lcom/dropbox/sync/android/DbxTable$QueryResult;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    .local v0, "allNotesRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x61

    aput-boolean v9, v4, v3

    .line 257
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable$QueryResult;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v3, 0x62

    aput-boolean v9, v4, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dropbox/sync/android/DbxRecord;

    const/16 v7, 0x63

    aput-boolean v9, v4, v7

    .line 258
    invoke-static {v3}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->createNoteFromRecord(Lcom/dropbox/sync/android/DbxRecord;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v1

    .line 259
    .local v1, "noteFromRecord":Lcom/iliakplv/notes/notes/AbstractNote;
    if-nez v1, :cond_1

    const/16 v3, 0x64

    aput-boolean v9, v4, v3

    .line 266
    :goto_3
    const/16 v3, 0x6c

    aput-boolean v9, v4, v3

    goto :goto_2

    .line 251
    .end local v0    # "allNotesRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .end local v1    # "noteFromRecord":Lcom/iliakplv/notes/notes/AbstractNote;
    :catch_0
    move-exception v3

    const/16 v5, 0x5e

    aput-boolean v9, v4, v5

    .line 252
    sget-object v5, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v6, "getNotesForQuery"

    invoke-static {v5, v6, v3}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v3, 0x5f

    aput-boolean v9, v4, v3

    .line 253
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v5, 0x60

    aput-boolean v9, v4, v5

    throw v3

    .line 259
    .restart local v0    # "allNotesRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .restart local v1    # "noteFromRecord":Lcom/iliakplv/notes/notes/AbstractNote;
    :cond_1
    const/16 v3, 0x65

    aput-boolean v9, v4, v3

    .line 260
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iliakplv/notes/utils/StringUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x66

    aput-boolean v9, v4, v7

    .line 261
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iliakplv/notes/utils/StringUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x67

    aput-boolean v9, v4, v8

    .line 262
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x68

    aput-boolean v9, v4, v3

    .line 263
    :goto_4
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x6b

    aput-boolean v9, v4, v3

    goto :goto_3

    .line 262
    :cond_2
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x69

    aput-boolean v9, v4, v3

    goto :goto_3

    :cond_3
    const/16 v3, 0x6a

    aput-boolean v9, v4, v3

    goto :goto_4

    .line 267
    .end local v1    # "noteFromRecord":Lcom/iliakplv/notes/notes/AbstractNote;
    :cond_4
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteComparator:Lcom/iliakplv/notes/notes/NoteComparator;

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    iput-object v5, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->searchListCache:Ljava/util/List;

    .line 269
    iput-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->lastSearchQuery:Ljava/lang/String;

    const/16 v3, 0x6d

    aput-boolean v9, v4, v3

    goto/16 :goto_0

    .line 273
    .end local v0    # "allNotesRecords":Lcom/dropbox/sync/android/DbxTable$QueryResult;
    .end local v2    # "searchQuery":Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->EMPTY_NOTES_LIST:Ljava/util/List;

    const/16 v5, 0x6f

    aput-boolean v9, v4, v5

    goto/16 :goto_1
.end method

.method public initTables()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 125
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->datastore:Lcom/dropbox/sync/android/DbxDatastore;

    const-string v3, "notes"

    invoke-virtual {v1, v3}, Lcom/dropbox/sync/android/DbxDatastore;->getTable(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTable;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesTable:Lcom/dropbox/sync/android/DbxTable;

    const/16 v1, 0xf

    aput-boolean v8, v2, v1

    .line 126
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->datastore:Lcom/dropbox/sync/android/DbxDatastore;

    const-string v3, "labels"

    invoke-virtual {v1, v3}, Lcom/dropbox/sync/android/DbxDatastore;->getTable(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTable;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsTable:Lcom/dropbox/sync/android/DbxTable;

    const/16 v1, 0x10

    aput-boolean v8, v2, v1

    .line 127
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->datastore:Lcom/dropbox/sync/android/DbxDatastore;

    const-string v3, "notes_labels"

    invoke-virtual {v1, v3}, Lcom/dropbox/sync/android/DbxDatastore;->getTable(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxTable;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

    .line 129
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->NOTES_FIELDS:[Ljava/lang/String;

    array-length v4, v3

    const/16 v1, 0x11

    aput-boolean v8, v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    const/16 v6, 0x12

    aput-boolean v8, v2, v6

    .line 130
    iget-object v6, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesTable:Lcom/dropbox/sync/android/DbxTable;

    sget-object v7, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->RESOLUTION_RULE:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    invoke-virtual {v6, v5, v7}, Lcom/dropbox/sync/android/DbxTable;->setResolutionRule(Ljava/lang/String;Lcom/dropbox/sync/android/DbxTable$ResolutionRule;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x13

    aput-boolean v8, v2, v5

    goto :goto_0

    .line 132
    :cond_0
    sget-object v3, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->LABELS_FIELDS:[Ljava/lang/String;

    array-length v4, v3

    const/16 v1, 0x14

    aput-boolean v8, v2, v1

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    const/16 v6, 0x15

    aput-boolean v8, v2, v6

    .line 133
    iget-object v6, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsTable:Lcom/dropbox/sync/android/DbxTable;

    sget-object v7, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->RESOLUTION_RULE:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    invoke-virtual {v6, v5, v7}, Lcom/dropbox/sync/android/DbxTable;->setResolutionRule(Ljava/lang/String;Lcom/dropbox/sync/android/DbxTable$ResolutionRule;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x16

    aput-boolean v8, v2, v5

    goto :goto_1

    .line 135
    :cond_1
    sget-object v1, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->NOTES_LABELS_FIELDS:[Ljava/lang/String;

    array-length v3, v1

    const/16 v4, 0x17

    aput-boolean v8, v2, v4

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    const/16 v5, 0x18

    aput-boolean v8, v2, v5

    .line 136
    iget-object v5, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

    sget-object v6, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->RESOLUTION_RULE:Lcom/dropbox/sync/android/DbxTable$ResolutionRule;

    invoke-virtual {v5, v4, v6}, Lcom/dropbox/sync/android/DbxTable;->setResolutionRule(Ljava/lang/String;Lcom/dropbox/sync/android/DbxTable$ResolutionRule;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x19

    aput-boolean v8, v2, v4

    goto :goto_2

    .line 138
    :cond_2
    const/16 v0, 0x1a

    aput-boolean v8, v2, v0

    return-void
.end method

.method public insertLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/io/Serializable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxTable;->insert()Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    const-string v2, "name"

    const/16 v3, 0xbc

    aput-boolean v6, v0, v3

    .line 418
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/Label;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    const-string v2, "color"

    const/16 v3, 0xbd

    aput-boolean v6, v0, v3

    .line 419
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/Label;->getColor()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    const/16 v2, 0xbe

    aput-boolean v6, v0, v2

    .line 421
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    const/16 v2, 0xbf

    aput-boolean v6, v0, v2

    .line 422
    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxRecord;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc0

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method public insertLabelToNote(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 536
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesLabelsTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxTable;->insert()Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v3

    const-string v4, "note_id"

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/16 v5, 0xfc

    aput-boolean v1, v2, v5

    .line 537
    invoke-virtual {v3, v4, v0}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v0

    const-string v3, "label_id"

    check-cast p2, Ljava/lang/String;

    const/16 v4, 0xfd

    aput-boolean v1, v2, v4

    .line 538
    invoke-virtual {v0, v3, p2}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v3

    const/16 v0, 0xfe

    aput-boolean v1, v2, v0

    .line 540
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheNoteId:Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    or-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    const/16 v0, 0x101

    aput-boolean v1, v2, v0

    .line 541
    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxRecord;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x102

    aput-boolean v1, v2, v3

    return-object v0

    .line 540
    :cond_0
    const/4 v0, 0x0

    const/16 v4, 0x100

    aput-boolean v1, v2, v4

    goto :goto_0
.end method

.method public insertNote(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/io/Serializable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesTable:Lcom/dropbox/sync/android/DbxTable;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxTable;->insert()Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    const-string v2, "title"

    const/16 v3, 0x70

    aput-boolean v6, v0, v3

    .line 279
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    const-string v2, "text"

    const/16 v3, 0x71

    aput-boolean v6, v0, v3

    .line 280
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    const-string v2, "created"

    const/16 v3, 0x72

    aput-boolean v6, v0, v3

    .line 281
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getCreateTime()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    const-string v2, "changed"

    const/16 v3, 0x73

    aput-boolean v6, v0, v3

    .line 282
    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/AbstractNote;->getChangeTime()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v1

    const/16 v2, 0x74

    aput-boolean v6, v0, v2

    .line 284
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    const/16 v2, 0x75

    aput-boolean v6, v0, v2

    .line 285
    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxRecord;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method public removeStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 637
    if-nez p1, :cond_0

    const/16 v0, 0x12a

    aput-boolean v4, v1, v0

    .line 638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const/16 v2, 0x12b

    aput-boolean v4, v1, v2

    throw v0

    .line 640
    :cond_0
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    monitor-enter v2

    const/16 v0, 0x12c

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 641
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->storageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x12d

    aput-boolean v4, v1, v2

    return v0

    .line 642
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x12e

    aput-boolean v4, v1, v2

    throw v0
.end method

.method public setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteComparator:Lcom/iliakplv/notes/notes/NoteComparator;

    invoke-virtual {v3}, Lcom/iliakplv/notes/notes/NoteComparator;->getSortOrder()Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    move-result-object v3

    if-eq v3, p1, :cond_0

    const/16 v3, 0x1b

    aput-boolean v1, v2, v3

    move v0, v1

    .line 144
    .local v0, "orderChanged":Z
    :goto_0
    if-nez v0, :cond_1

    const/16 v3, 0x1d

    aput-boolean v1, v2, v3

    .line 148
    :goto_1
    const/16 v3, 0x21

    aput-boolean v1, v2, v3

    return v0

    .line 143
    .end local v0    # "orderChanged":Z
    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x1c

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 144
    .restart local v0    # "orderChanged":Z
    :cond_1
    const/16 v3, 0x1e

    aput-boolean v1, v2, v3

    .line 145
    iget-object v3, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteComparator:Lcom/iliakplv/notes/notes/NoteComparator;

    invoke-virtual {v3, p1}, Lcom/iliakplv/notes/notes/NoteComparator;->setSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)V

    const/16 v3, 0x1f

    aput-boolean v1, v2, v3

    .line 146
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    const/16 v3, 0x20

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public sync()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    .line 122
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public updateLabel(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/Label;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v4

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->labelsTable:Lcom/dropbox/sync/android/DbxTable;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/dropbox/sync/android/DbxTable;->get(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 434
    .local v1, "labelRecord":Lcom/dropbox/sync/android/DbxRecord;
    if-eqz v1, :cond_0

    const/16 v2, 0xc4

    aput-boolean v3, v4, v2

    move v0, v3

    .line 435
    .local v0, "existingRecord":Z
    :goto_0
    if-nez v0, :cond_1

    const/16 v2, 0xc6

    aput-boolean v3, v4, v2

    .line 441
    :goto_1
    const/16 v2, 0xcb

    aput-boolean v3, v4, v2

    return v0

    .line 430
    .end local v0    # "existingRecord":Z
    .end local v1    # "labelRecord":Lcom/dropbox/sync/android/DbxRecord;
    :catch_0
    move-exception v2

    const/16 v5, 0xc1

    aput-boolean v3, v4, v5

    .line 431
    sget-object v5, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v6, "updateLabel()"

    invoke-static {v5, v6, v2}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0xc2

    aput-boolean v3, v4, v2

    .line 432
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v5, 0xc3

    aput-boolean v3, v4, v5

    throw v2

    .line 434
    .restart local v1    # "labelRecord":Lcom/dropbox/sync/android/DbxRecord;
    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0xc5

    aput-boolean v3, v4, v2

    goto :goto_0

    .line 436
    .restart local v0    # "existingRecord":Z
    :cond_1
    const-string v2, "name"

    const/16 v5, 0xc7

    aput-boolean v3, v4, v5

    .line 437
    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/Label;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v2

    const-string v5, "color"

    const/16 v6, 0xc8

    aput-boolean v3, v4, v6

    .line 438
    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/Label;->getColor()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxRecord;

    const/16 v2, 0xc9

    aput-boolean v3, v4, v2

    .line 439
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    const/16 v2, 0xca

    aput-boolean v3, v4, v2

    goto :goto_1
.end method

.method public updateNote(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/AbstractNote;)Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->$jacocoInit()[Z

    move-result-object v7

    .line 292
    :try_start_0
    iget-object v8, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notesTable:Lcom/dropbox/sync/android/DbxTable;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v8, v4}, Lcom/dropbox/sync/android/DbxTable;->get(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 298
    .local v3, "noteRecord":Lcom/dropbox/sync/android/DbxRecord;
    if-eqz v3, :cond_0

    const/16 v4, 0x7a

    aput-boolean v5, v7, v4

    move v2, v5

    .line 299
    .local v2, "existingRecord":Z
    :goto_0
    if-nez v2, :cond_1

    const/16 v4, 0x7c

    aput-boolean v5, v7, v4

    .line 308
    :goto_1
    const/16 v4, 0x85

    aput-boolean v5, v7, v4

    return v2

    .line 293
    .end local v2    # "existingRecord":Z
    .end local v3    # "noteRecord":Lcom/dropbox/sync/android/DbxRecord;
    :catch_0
    move-exception v4

    const/16 v6, 0x77

    aput-boolean v5, v7, v6

    .line 294
    sget-object v6, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->TAG:Ljava/lang/String;

    const-string v8, "updateNote()"

    invoke-static {v6, v8, v4}, Lcom/iliakplv/notes/utils/AppLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v4, 0x78

    aput-boolean v5, v7, v4

    .line 295
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    const/16 v6, 0x79

    aput-boolean v5, v7, v6

    throw v4

    .line 298
    .restart local v3    # "noteRecord":Lcom/dropbox/sync/android/DbxRecord;
    :cond_0
    const/16 v4, 0x7b

    aput-boolean v5, v7, v4

    move v2, v6

    goto :goto_0

    .line 300
    .restart local v2    # "existingRecord":Z
    :cond_1
    const-string v4, "title"

    const/16 v8, 0x7d

    aput-boolean v5, v7, v8

    .line 301
    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v4

    const-string v8, "text"

    const/16 v9, 0x7e

    aput-boolean v5, v7, v9

    .line 302
    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v4

    const-string v8, "created"

    const/16 v9, 0x7f

    aput-boolean v5, v7, v9

    .line 303
    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/AbstractNote;->getCreateTime()Lorg/joda/time/DateTime;

    move-result-object v9

    invoke-virtual {v9}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v10

    invoke-virtual {v4, v8, v10, v11}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxRecord;

    move-result-object v4

    const-string v8, "changed"

    const/16 v9, 0x80

    aput-boolean v5, v7, v9

    .line 304
    invoke-virtual {p2}, Lcom/iliakplv/notes/notes/AbstractNote;->getChangeTime()Lorg/joda/time/DateTime;

    move-result-object v9

    invoke-virtual {v9}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v10

    invoke-virtual {v4, v8, v10, v11}, Lcom/dropbox/sync/android/DbxRecord;->set(Ljava/lang/String;J)Lcom/dropbox/sync/android/DbxRecord;

    const/16 v4, 0x81

    aput-boolean v5, v7, v4

    .line 305
    iget-object v4, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->noteCacheNoteId:Ljava/io/Serializable;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x82

    aput-boolean v5, v7, v4

    move v4, v5

    :goto_2
    or-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->onStorageContentChanged(I)V

    const/16 v4, 0x84

    aput-boolean v5, v7, v4

    goto :goto_1

    :cond_2
    const/16 v4, 0x83

    aput-boolean v5, v7, v4

    move v4, v6

    goto :goto_2
.end method
