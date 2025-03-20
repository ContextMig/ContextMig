.class Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;
.super Ljava/lang/Object;
.source "NoteLabelsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->applyNoteLabelsChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

.field final synthetic val$labelsIdsToAdd:Ljava/util/Set;

.field final synthetic val$labelsIdsToDelete:Ljava/util/Set;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7bb6e915c39df1a2L    # 8.72148058864211E287

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;Ljava/util/Set;Ljava/util/Set;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->$jacocoInit()[Z

    move-result-object v0

    .line 147
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

    iput-object p2, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->val$labelsIdsToDelete:Ljava/util/Set;

    iput-object p3, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->val$labelsIdsToAdd:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->$jacocoInit()[Z

    move-result-object v1

    .line 150
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->val$labelsIdsToDelete:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    aput-boolean v5, v1, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const/4 v3, 0x2

    aput-boolean v5, v1, v3

    .line 151
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

    invoke-static {v4}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->access$200(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;)Ljava/io/Serializable;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->deleteLabelFromNote(Ljava/io/Serializable;Ljava/io/Serializable;)Z

    .line 152
    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->val$labelsIdsToAdd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const/4 v3, 0x5

    aput-boolean v5, v1, v3

    .line 154
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

    invoke-static {v4}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->access$200(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;)Ljava/io/Serializable;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->insertLabelToNote(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 155
    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    goto :goto_1

    .line 156
    :cond_1
    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    return-void
.end method
