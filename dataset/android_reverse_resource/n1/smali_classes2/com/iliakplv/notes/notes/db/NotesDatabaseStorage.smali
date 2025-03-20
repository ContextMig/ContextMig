.class public Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;
.super Ljava/lang/Object;
.source "NotesDatabaseStorage.java"

# interfaces
.implements Lcom/iliakplv/notes/notes/storage/NotesStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final INVALID_ID:Ljava/lang/Integer;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
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

.field private lastSearchQuery:Ljava/lang/String;

.field private noteCache:Lcom/iliakplv/notes/notes/AbstractNote;

.field private volatile noteCacheActual:Z

.field private volatile noteCacheNoteId:Ljava/lang/Integer;

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

.field private volatile notesListCacheLabelId:Ljava/lang/Integer;

.field private volatile notesSortOrder:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

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

    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x746c86f0fcb34cb2L    # 6.535882369185397E252

    const-string v2, "com/iliakplv/notes/notes/db/NotesDatabaseStorage"

    const/16 v3, 0x97

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    const-class v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x95

    aput-boolean v2, v0, v1

    .line 23
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->INVALID_ID:Ljava/lang/Integer;

    const/16 v1, 0x96

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->INVALID_ID:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCacheLabelId:Ljava/lang/Integer;

    .line 29
    iput-boolean v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCacheActual:Z

    .line 32
    sget-object v1, Lcom/iliakplv/notes/notes/NotesUtils;->DEFAULT_SORT_ORDER:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesSortOrder:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    .line 36
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->INVALID_ID:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCacheNoteId:Ljava/lang/Integer;

    .line 37
    iput-boolean v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCacheActual:Z

    .line 41
    iput-boolean v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->labelsListCacheActual:Z

    aput-boolean v3, v0, v2

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->searchListCache:Ljava/util/List;

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->lastSearchQuery:Ljava/lang/String;

    aput-boolean v3, v0, v3

    .line 48
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    const/16 v2, 0x94

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static databaseModificationTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 368
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 383
    :pswitch_0
    const/4 v1, 0x0

    const/16 v3, 0x8d

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 381
    :pswitch_1
    const/16 v1, 0x8c

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static labelsModificationTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 404
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    .line 412
    const/4 v1, 0x0

    const/16 v3, 0x91

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 410
    :sswitch_0
    const/16 v1, 0x90

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 404
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private static noteModificationTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 387
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    invoke-virtual {p0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 400
    :pswitch_0
    const/4 v1, 0x0

    const/16 v3, 0x8f

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 398
    :pswitch_1
    const/16 v1, 0x8e

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 317
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$1;

    invoke-direct {v1, p0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$1;-><init>(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;)V

    invoke-static {v1}, Lcom/iliakplv/notes/NotesApplication;->executeInBackground(Ljava/lang/Runnable;)V

    .line 327
    const/16 v1, 0x7a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private onTransactionPerformed(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 299
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database transaction ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") performed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x70

    aput-boolean v4, v0, v1

    .line 301
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCacheNoteId:Ljava/lang/Integer;

    invoke-virtual {v1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x71

    aput-boolean v4, v0, v1

    .line 304
    :goto_0
    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->labelsModificationTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x74

    aput-boolean v4, v0, v1

    .line 307
    :goto_1
    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->databaseModificationTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x76

    aput-boolean v4, v0, v1

    .line 312
    :goto_2
    const/16 v1, 0x79

    aput-boolean v4, v0, v1

    return-void

    .line 301
    :cond_0
    invoke-static {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteModificationTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x72

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 302
    :cond_1
    iput-boolean v5, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCacheActual:Z

    const/16 v1, 0x73

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 305
    :cond_2
    iput-boolean v5, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->labelsListCacheActual:Z

    const/16 v1, 0x75

    aput-boolean v4, v0, v1

    goto :goto_1

    .line 308
    :cond_3
    iput-boolean v5, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCacheActual:Z

    .line 309
    const-string v1, ""

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->lastSearchQuery:Ljava/lang/String;

    const/16 v1, 0x77

    aput-boolean v4, v0, v1

    .line 310
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notifyListeners()V

    const/16 v1, 0x78

    aput-boolean v4, v0, v1

    goto :goto_2
.end method

.method private varargs performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v4

    .line 212
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x4b

    aput-boolean v7, v4, v3

    .line 213
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x4c

    aput-boolean v7, v4, v3

    .line 215
    new-instance v5, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;

    invoke-direct {v5}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;-><init>()V

    const/16 v3, 0x4d

    aput-boolean v7, v4, v3

    .line 216
    invoke-virtual {v5}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->open()V

    const/16 v3, 0x4e

    aput-boolean v7, v4, v3

    .line 217
    sget-object v3, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$2;->$SwitchMap$com$iliakplv$notes$notes$db$NotesDatabaseStorage$TransactionType:[I

    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 290
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong transaction type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x6d

    aput-boolean v7, v4, v5

    throw v3

    .line 219
    :pswitch_0
    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Integer;

    .local v1, "noteId":Ljava/lang/Integer;
    const/16 v3, 0x4f

    aput-boolean v7, v4, v3

    .line 220
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getNote(I)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v2

    .line 221
    .local v2, "result":Lcom/iliakplv/notes/notes/AbstractNote;
    const/16 v3, 0x50

    aput-boolean v7, v4, v3

    .line 292
    .end local v2    # "result":Lcom/iliakplv/notes/notes/AbstractNote;
    .local v0, "labelId":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v5}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->close()V

    const/16 v3, 0x6e

    aput-boolean v7, v4, v3

    .line 294
    invoke-direct {p0, p1, v1, v0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->onTransactionPerformed(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 295
    const/16 v3, 0x6f

    aput-boolean v7, v4, v3

    return-object v2

    .line 223
    .end local v0    # "labelId":Ljava/lang/Integer;
    .end local v1    # "noteId":Ljava/lang/Integer;
    :pswitch_1
    iget-object v3, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesSortOrder:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getAllNotes(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/util/List;

    move-result-object v2

    .line 224
    .local v2, "result":Ljava/util/List;
    const/16 v3, 0x51

    aput-boolean v7, v4, v3

    goto :goto_0

    .line 226
    .end local v2    # "result":Ljava/util/List;
    :pswitch_2
    aget-object v3, p2, v8

    check-cast v3, Lcom/iliakplv/notes/notes/AbstractNote;

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->insertNote(Lcom/iliakplv/notes/notes/AbstractNote;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 227
    .local v2, "result":Ljava/lang/Integer;
    const/16 v3, 0x52

    aput-boolean v7, v4, v3

    goto :goto_0

    .line 229
    .end local v2    # "result":Ljava/lang/Integer;
    :pswitch_3
    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "noteId":Ljava/lang/Integer;
    const/16 v3, 0x53

    aput-boolean v7, v4, v3

    .line 230
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v3, p2, v7

    check-cast v3, Lcom/iliakplv/notes/notes/AbstractNote;

    invoke-virtual {v5, v6, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->updateNote(ILcom/iliakplv/notes/notes/AbstractNote;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 231
    .local v2, "result":Ljava/lang/Boolean;
    const/16 v3, 0x54

    aput-boolean v7, v4, v3

    goto :goto_0

    .line 233
    .end local v1    # "noteId":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/lang/Boolean;
    :pswitch_4
    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "noteId":Ljava/lang/Integer;
    const/16 v3, 0x55

    aput-boolean v7, v4, v3

    .line 234
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->deleteNoteLabelsForNote(I)Z

    const/16 v3, 0x56

    aput-boolean v7, v4, v3

    .line 235
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->deleteNote(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 236
    .restart local v2    # "result":Ljava/lang/Boolean;
    const/16 v3, 0x57

    aput-boolean v7, v4, v3

    goto :goto_0

    .line 239
    .end local v1    # "noteId":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/lang/Boolean;
    :pswitch_5
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "labelId":Ljava/lang/Integer;
    const/16 v3, 0x58

    aput-boolean v7, v4, v3

    .line 240
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getLabel(I)Lcom/iliakplv/notes/notes/Label;

    move-result-object v2

    .line 241
    .local v2, "result":Lcom/iliakplv/notes/notes/Label;
    const/16 v3, 0x59

    aput-boolean v7, v4, v3

    goto :goto_0

    .line 243
    .end local v0    # "labelId":Ljava/lang/Integer;
    .end local v2    # "result":Lcom/iliakplv/notes/notes/Label;
    :pswitch_6
    invoke-virtual {v5}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getAllLabels()Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, "result":Ljava/util/List;
    const/16 v3, 0x5a

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 246
    .end local v2    # "result":Ljava/util/List;
    :pswitch_7
    aget-object v3, p2, v8

    check-cast v3, Lcom/iliakplv/notes/notes/Label;

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->insertLabel(Lcom/iliakplv/notes/notes/Label;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 247
    .local v2, "result":Ljava/lang/Integer;
    const/16 v3, 0x5b

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 249
    .end local v2    # "result":Ljava/lang/Integer;
    :pswitch_8
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "labelId":Ljava/lang/Integer;
    const/16 v3, 0x5c

    aput-boolean v7, v4, v3

    .line 250
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v3, p2, v7

    check-cast v3, Lcom/iliakplv/notes/notes/Label;

    invoke-virtual {v5, v6, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->updateLabel(ILcom/iliakplv/notes/notes/Label;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 251
    .local v2, "result":Ljava/lang/Boolean;
    const/16 v3, 0x5d

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 253
    .end local v0    # "labelId":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/lang/Boolean;
    :pswitch_9
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "labelId":Ljava/lang/Integer;
    const/16 v3, 0x5e

    aput-boolean v7, v4, v3

    .line 254
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->deleteNoteLabelsForLabel(I)Z

    const/16 v3, 0x5f

    aput-boolean v7, v4, v3

    .line 255
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->deleteLabel(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 256
    .restart local v2    # "result":Ljava/lang/Boolean;
    const/16 v3, 0x60

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 259
    .end local v0    # "labelId":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/lang/Boolean;
    :pswitch_a
    invoke-virtual {v5}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getAllNotesLabelsIds()Ljava/util/Set;

    move-result-object v2

    .line 260
    .local v2, "result":Ljava/util/Set;
    const/16 v3, 0x61

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 262
    .end local v2    # "result":Ljava/util/Set;
    :pswitch_b
    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "noteId":Ljava/lang/Integer;
    const/16 v3, 0x62

    aput-boolean v7, v4, v3

    .line 263
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getLabelsForNote(I)Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, "result":Ljava/util/List;
    const/16 v3, 0x63

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 266
    .end local v1    # "noteId":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/util/List;
    :pswitch_c
    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "noteId":Ljava/lang/Integer;
    const/16 v3, 0x64

    aput-boolean v7, v4, v3

    .line 267
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getLabelsIdsForNote(I)Ljava/util/Set;

    move-result-object v2

    .line 268
    .local v2, "result":Ljava/util/Set;
    const/16 v3, 0x65

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 270
    .end local v1    # "noteId":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/util/Set;
    :pswitch_d
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "labelId":Ljava/lang/Integer;
    const/16 v3, 0x66

    aput-boolean v7, v4, v3

    .line 271
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesSortOrder:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-virtual {v5, v3, v6}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getNotesForLabel(ILcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/util/List;

    move-result-object v2

    .line 272
    .local v2, "result":Ljava/util/List;
    const/16 v3, 0x67

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 274
    .end local v0    # "labelId":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/util/List;
    :pswitch_e
    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Integer;

    .line 275
    .restart local v1    # "noteId":Ljava/lang/Integer;
    aget-object v0, p2, v7

    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "labelId":Ljava/lang/Integer;
    const/16 v3, 0x68

    aput-boolean v7, v4, v3

    .line 276
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->insertNoteLabel(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 277
    .local v2, "result":Ljava/lang/Integer;
    const/16 v3, 0x69

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 279
    .end local v0    # "labelId":Ljava/lang/Integer;
    .end local v1    # "noteId":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/lang/Integer;
    :pswitch_f
    aget-object v1, p2, v8

    check-cast v1, Ljava/lang/Integer;

    .line 280
    .restart local v1    # "noteId":Ljava/lang/Integer;
    aget-object v0, p2, v7

    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "labelId":Ljava/lang/Integer;
    const/16 v3, 0x6a

    aput-boolean v7, v4, v3

    .line 281
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->deleteNoteLabel(II)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 282
    .local v2, "result":Ljava/lang/Boolean;
    const/16 v3, 0x6b

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 285
    .end local v0    # "labelId":Ljava/lang/Integer;
    .end local v1    # "noteId":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/lang/Boolean;
    :pswitch_10
    invoke-virtual {v5}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->deleteAllData()V

    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, "result":Ljava/lang/Object;
    const/16 v3, 0x6c

    aput-boolean v7, v4, v3

    goto/16 :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private refreshLabelsListCacheIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 158
    sget-object v2, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Labels entries refresh. Cached entries list "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->labelsListCacheActual:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    const/16 v4, 0x3d

    aput-boolean v5, v1, v4

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "actual"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->labelsListCacheActual:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3f

    aput-boolean v5, v1, v0

    .line 164
    :goto_1
    const/16 v0, 0x42

    aput-boolean v5, v1, v0

    return-void

    .line 158
    :cond_0
    const-string v0, "NOT "

    const/16 v4, 0x3e

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 160
    :cond_1
    const/16 v0, 0x40

    aput-boolean v5, v1, v0

    .line 161
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllLabels:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->labelsListCache:Ljava/util/List;

    .line 162
    iput-boolean v5, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->labelsListCacheActual:Z

    const/16 v0, 0x41

    aput-boolean v5, v1, v0

    goto :goto_1
.end method

.method private refreshNoteCacheIfNeeded(Ljava/lang/Integer;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v4

    .line 71
    iget-boolean v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCacheActual:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    aput-boolean v2, v4, v0

    :goto_0
    const/16 v0, 0xc

    aput-boolean v2, v4, v0

    move v0, v2

    :goto_1
    const/16 v3, 0xe

    aput-boolean v2, v4, v3

    .line 72
    sget-object v5, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Note entry refresh (id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "). Cached entry "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_2

    const-string v3, "NOT "

    const/16 v7, 0xf

    aput-boolean v2, v4, v7

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "actual"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez v0, :cond_3

    const/16 v0, 0x11

    aput-boolean v2, v4, v0

    .line 79
    :goto_3
    const/16 v0, 0x14

    aput-boolean v2, v4, v0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCacheNoteId:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb

    aput-boolean v2, v4, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    aput-boolean v2, v4, v0

    move v0, v1

    goto :goto_1

    .line 72
    :cond_2
    const-string v3, ""

    const/16 v7, 0x10

    aput-boolean v2, v4, v7

    goto :goto_2

    .line 74
    :cond_3
    const/16 v0, 0x12

    aput-boolean v2, v4, v0

    .line 75
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/AbstractNote;

    iput-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCache:Lcom/iliakplv/notes/notes/AbstractNote;

    .line 76
    iput-object p1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCacheNoteId:Ljava/lang/Integer;

    .line 77
    iput-boolean v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCacheActual:Z

    const/16 v0, 0x13

    aput-boolean v2, v4, v0

    goto :goto_3
.end method

.method private refreshNotesListCacheIfNeeded(Ljava/lang/Integer;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v5

    .line 82
    iget-boolean v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCacheActual:Z

    if-nez v1, :cond_0

    const/16 v1, 0x15

    aput-boolean v3, v5, v1

    :goto_0
    const/16 v1, 0x17

    aput-boolean v3, v5, v1

    move v1, v3

    :goto_1
    const/16 v4, 0x19

    aput-boolean v3, v5, v4

    .line 83
    sget-object v6, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notes entries refresh (labelId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "). Cached entries list "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_2

    const-string v4, "NOT "

    const/16 v8, 0x1a

    aput-boolean v3, v5, v8

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "actual"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-nez v1, :cond_3

    const/16 v1, 0x1c

    aput-boolean v3, v5, v1

    .line 94
    .local v0, "selectTransaction":Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;
    :goto_3
    const/16 v1, 0x21

    aput-boolean v3, v5, v1

    return-void

    .line 82
    .end local v0    # "selectTransaction":Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;
    :cond_0
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCacheLabelId:Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x16

    aput-boolean v3, v5, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    aput-boolean v3, v5, v1

    move v1, v2

    goto :goto_1

    .line 83
    :cond_2
    const-string v4, ""

    const/16 v8, 0x1b

    aput-boolean v3, v5, v8

    goto :goto_2

    .line 86
    :cond_3
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->NOTES_FOR_ALL_LABELS:Ljava/lang/Integer;

    if-ne p1, v1, :cond_4

    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllNotes:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0x1d

    aput-boolean v3, v5, v1

    .line 89
    .restart local v0    # "selectTransaction":Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;
    :goto_4
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/16 v2, 0x1f

    aput-boolean v3, v5, v2

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCache:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCacheLabelId:Ljava/lang/Integer;

    .line 92
    iput-boolean v3, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCacheActual:Z

    const/16 v1, 0x20

    aput-boolean v3, v5, v1

    goto :goto_3

    .line 86
    .end local v0    # "selectTransaction":Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;
    :cond_4
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetNotesForLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/16 v1, 0x1e

    aput-boolean v3, v5, v1

    goto :goto_4
.end method


# virtual methods
.method public addStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 331
    if-nez p1, :cond_0

    const/16 v0, 0x7b

    aput-boolean v4, v1, v0

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const/16 v2, 0x7c

    aput-boolean v4, v1, v2

    throw v0

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    monitor-enter v2

    const/16 v0, 0x7d

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 335
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x7e

    aput-boolean v4, v1, v2

    return v0

    .line 336
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x7f

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

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 361
    iget-object v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    monitor-enter v2

    const/16 v0, 0x89

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 362
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notifyListeners()V

    .line 365
    const/16 v0, 0x8b

    aput-boolean v4, v1, v0

    return-void

    .line 363
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x8a

    aput-boolean v4, v1, v2

    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 423
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteAllData:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const/16 v1, 0x93

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public declared-synchronized deleteLabel(Ljava/io/Serializable;)Z
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 178
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0x45

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteLabelFromNote(Ljava/io/Serializable;Ljava/io/Serializable;)Z
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 206
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteLabelFromNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0x4a

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteNote(Ljava/io/Serializable;)Z
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 140
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->DeleteNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0x3a

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 351
    iget-object v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    monitor-enter v2

    const/16 v0, 0x85

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 352
    new-instance v0, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/16 v3, 0x86

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 354
    iget-object v3, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 355
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x87

    aput-boolean v5, v1, v2

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x88

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
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 153
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->refreshLabelsListCacheIfNeeded()V

    .line 154
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->labelsListCache:Ljava/util/List;

    const/16 v2, 0x3c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getAllNotesLabelsIds()Ljava/util/Set;
    .locals 4
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
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 196
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetAllNotesLabelsIds:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/16 v2, 0x48

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 148
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/Label;

    const/16 v2, 0x3b

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getLabelsForNote(Ljava/io/Serializable;)Ljava/util/List;
    .locals 5
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
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 186
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabelsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/16 v2, 0x46

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getLabelsIdsForNote(Ljava/io/Serializable;)Ljava/util/Set;
    .locals 5
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
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 191
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->GetLabelsIdsForNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/16 v2, 0x47

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    check-cast p1, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->refreshNoteCacheIfNeeded(Ljava/lang/Integer;)V

    .line 67
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->noteCache:Lcom/iliakplv/notes/notes/AbstractNote;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
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
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    check-cast p1, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->refreshNotesListCacheIfNeeded(Ljava/lang/Integer;)V

    .line 99
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCache:Ljava/util/List;

    const/16 v2, 0x22

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getNotesForQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 9
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
    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v2

    .line 104
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x23

    aput-boolean v8, v2, v1

    .line 105
    invoke-static {p1}, Lcom/iliakplv/notes/utils/StringUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "searchQuery":Ljava/lang/String;
    const/16 v1, 0x24

    aput-boolean v8, v2, v1

    .line 106
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    aput-boolean v8, v2, v1

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->searchListCache:Ljava/util/List;

    const/16 v3, 0x36

    aput-boolean v8, v2, v3

    .line 125
    .end local v0    # "searchQuery":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 106
    .restart local v0    # "searchQuery":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x26

    aput-boolean v8, v2, v1

    .line 107
    new-instance v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;

    invoke-direct {v1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;-><init>()V

    const/16 v3, 0x27

    aput-boolean v8, v2, v3

    .line 108
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->open()V

    const/16 v3, 0x28

    aput-boolean v8, v2, v3

    .line 109
    iget-object v3, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesSortOrder:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    invoke-virtual {v1, v3}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->getAllNotes(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x29

    aput-boolean v8, v2, v4

    .line 110
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/db/NotesDatabaseAdapter;->close()V

    const/16 v1, 0x2a

    aput-boolean v8, v2, v1

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2b

    aput-boolean v8, v2, v1

    .line 113
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v1, 0x2c

    aput-boolean v8, v2, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iliakplv/notes/notes/AbstractNote;

    const/16 v5, 0x2d

    aput-boolean v8, v2, v5

    .line 114
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iliakplv/notes/utils/StringUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    aput-boolean v8, v2, v6

    .line 115
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iliakplv/notes/utils/StringUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2f

    aput-boolean v8, v2, v7

    .line 116
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x30

    aput-boolean v8, v2, v5

    .line 117
    :goto_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x33

    aput-boolean v8, v2, v1

    .line 119
    :goto_4
    const/16 v1, 0x34

    aput-boolean v8, v2, v1

    goto :goto_2

    .line 116
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v1, 0x31

    aput-boolean v8, v2, v1

    goto :goto_4

    :cond_2
    const/16 v5, 0x32

    aput-boolean v8, v2, v5

    goto :goto_3

    .line 120
    :cond_3
    iput-object v4, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->searchListCache:Ljava/util/List;

    .line 121
    iput-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->lastSearchQuery:Ljava/lang/String;

    const/16 v1, 0x35

    aput-boolean v8, v2, v1

    goto/16 :goto_0

    .line 125
    .end local v0    # "searchQuery":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->EMPTY_NOTES_LIST:Ljava/util/List;

    const/16 v3, 0x37

    aput-boolean v8, v2, v3

    goto/16 :goto_1
.end method

.method public declared-synchronized insertLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/io/Serializable;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 168
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v2, 0x43

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertLabelToNote(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 201
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertLabelToNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v2, 0x49

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertNote(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/io/Serializable;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 130
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->InsertNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 341
    if-nez p1, :cond_0

    const/16 v0, 0x80

    aput-boolean v4, v1, v0

    .line 342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const/16 v2, 0x81

    aput-boolean v4, v1, v2

    throw v0

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    monitor-enter v2

    const/16 v0, 0x82

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 345
    iget-object v0, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->storageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x83

    aput-boolean v4, v1, v2

    return v0

    .line 346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x84

    aput-boolean v4, v1, v2

    throw v0
.end method

.method public setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesSortOrder:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    if-eq v4, p1, :cond_0

    const/4 v4, 0x3

    aput-boolean v1, v3, v4

    move v0, v1

    .line 56
    .local v0, "orderChanged":Z
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x5

    aput-boolean v1, v3, v2

    .line 61
    :goto_1
    const/16 v2, 0x8

    aput-boolean v1, v3, v2

    return v0

    .line 55
    .end local v0    # "orderChanged":Z
    :cond_0
    const/4 v4, 0x4

    aput-boolean v1, v3, v4

    move v0, v2

    goto :goto_0

    .line 57
    .restart local v0    # "orderChanged":Z
    :cond_1
    iput-object p1, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesSortOrder:Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;

    .line 58
    iput-boolean v2, p0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notesListCacheActual:Z

    const/4 v2, 0x6

    aput-boolean v1, v3, v2

    .line 59
    invoke-direct {p0}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->notifyListeners()V

    const/4 v2, 0x7

    aput-boolean v1, v3, v2

    goto :goto_1
.end method

.method public sync()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v0

    .line 419
    const/16 v1, 0x92

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public declared-synchronized updateLabel(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/Label;)Z
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 173
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->UpdateLabel:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0x44

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateNote(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/AbstractNote;)Z
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->$jacocoInit()[Z

    move-result-object v1

    .line 135
    sget-object v0, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;->UpdateNote:Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage;->performDatabaseTransaction(Lcom/iliakplv/notes/notes/db/NotesDatabaseStorage$TransactionType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
