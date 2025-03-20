.class public interface abstract Lcom/iliakplv/notes/notes/storage/NotesStorage;
.super Ljava/lang/Object;
.source "NotesStorage.java"


# static fields
.field public static final EMPTY_NOTES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/AbstractNote;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTES_FOR_ALL_LABELS:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide v0, -0x508e6ec8ae9b4d71L    # -3.703948606959129E-80

    const-string v2, "com/iliakplv/notes/notes/storage/NotesStorage"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/notes/storage/NotesStorage;->NOTES_FOR_ALL_LABELS:Ljava/lang/Integer;

    aput-boolean v5, v0, v4

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/iliakplv/notes/notes/storage/NotesStorage;->EMPTY_NOTES_LIST:Ljava/util/List;

    aput-boolean v5, v0, v5

    return-void
.end method


# virtual methods
.method public abstract addStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z
.end method

.method public abstract attachListeners(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/storage/NotesStorageListener;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract deleteLabel(Ljava/io/Serializable;)Z
.end method

.method public abstract deleteLabelFromNote(Ljava/io/Serializable;Ljava/io/Serializable;)Z
.end method

.method public abstract deleteNote(Ljava/io/Serializable;)Z
.end method

.method public abstract detachAllListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/storage/NotesStorageListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLabels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/Label;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllNotesLabelsIds()Ljava/util/Set;
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
.end method

.method public abstract getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;
.end method

.method public abstract getLabelsForNote(Ljava/io/Serializable;)Ljava/util/List;
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
.end method

.method public abstract getLabelsIdsForNote(Ljava/io/Serializable;)Ljava/util/Set;
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
.end method

.method public abstract getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;
.end method

.method public abstract getNotesForLabel(Ljava/io/Serializable;)Ljava/util/List;
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
.end method

.method public abstract getNotesForQuery(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract insertLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/io/Serializable;
.end method

.method public abstract insertLabelToNote(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
.end method

.method public abstract insertNote(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/io/Serializable;
.end method

.method public abstract removeStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z
.end method

.method public abstract setNotesSortOrder(Lcom/iliakplv/notes/notes/NotesUtils$NoteSortOrder;)Z
.end method

.method public abstract sync()V
.end method

.method public abstract updateLabel(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/Label;)Z
.end method

.method public abstract updateNote(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/AbstractNote;)Z
.end method
