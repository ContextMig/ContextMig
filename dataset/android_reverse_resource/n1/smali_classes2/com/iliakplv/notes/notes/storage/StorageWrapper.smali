.class final Lcom/iliakplv/notes/notes/storage/StorageWrapper;
.super Ljava/lang/Object;
.source "StorageWrapper.java"

# interfaces
.implements Lcom/iliakplv/notes/notes/storage/NotesStorage;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/iliakplv/notes/notes/storage/NotesStorage;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x445806628dbfede3L    # 1.7727277749457752E21

    const-string v2, "com/iliakplv/notes/notes/storage/StorageWrapper"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public addStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->addStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z

    move-result v1

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public attachListeners(Ljava/util/List;)V
    .locals 3
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
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->attachListeners(Ljava/util/List;)V

    .line 112
    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->clear()V

    .line 129
    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public deleteLabel(Ljava/io/Serializable;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->deleteLabel(Ljava/io/Serializable;)Z

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public deleteLabelFromNote(Ljava/io/Serializable;Ljava/io/Serializable;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1, p2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->deleteLabelFromNote(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public deleteNote(Ljava/io/Serializable;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->deleteNote(Ljava/io/Serializable;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public detachAllListeners()Ljava/util/List;
    .locals 4
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
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->detachAllListeners()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
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
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllLabels()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

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
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllNotesLabelsIds()Ljava/util/Set;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLabelsForNote(Ljava/io/Serializable;)Ljava/util/List;
    .locals 4
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
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabelsForNote(Ljava/io/Serializable;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLabelsIdsForNote(Ljava/io/Serializable;)Ljava/util/Set;
    .locals 4
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
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabelsIdsForNote(Ljava/io/Serializable;)Ljava/util/Set;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v1

    const/4 v2, 0x3

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
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNotesForLabel(Ljava/io/Serializable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getNotesForQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNotesForQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public insertLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/io/Serializable;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->insertLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/io/Serializable;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public insertLabelToNote(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1, p2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->insertLabelToNote(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public insertNote(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/io/Serializable;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->insertNote(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/io/Serializable;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public removeStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->removeStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method setTarget(Lcom/iliakplv/notes/notes/storage/NotesStorage;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    iput-object p1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    .line 20
    aput-boolean v1, v0, v1

    return-void
.end method

.method public sync()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->sync()V

    .line 123
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public updateLabel(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/Label;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1, p2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->updateLabel(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/Label;)Z

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public updateNote(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/AbstractNote;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/iliakplv/notes/notes/storage/StorageWrapper;->target:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p1, p2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->updateNote(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/AbstractNote;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
