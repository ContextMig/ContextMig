.class Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;
.super Ljava/lang/Object;
.source "LabelEditDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

.field final synthetic val$labelName:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x68d314b3ae98ac2aL    # 8.914464910169631E196

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iput-object p2, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->val$labelName:Ljava/lang/String;

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

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->$jacocoInit()[Z

    move-result-object v2

    .line 89
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$label:Lcom/iliakplv/notes/notes/Label;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->val$labelName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/iliakplv/notes/notes/Label;->setName(Ljava/lang/String;)V

    aput-boolean v5, v2, v5

    .line 90
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$label:Lcom/iliakplv/notes/notes/Label;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    invoke-static {v3}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->access$000(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/iliakplv/notes/notes/Label;->setColor(I)V

    .line 91
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-boolean v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$editMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    .line 92
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->id:Ljava/io/Serializable;

    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v4, v4, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$label:Lcom/iliakplv/notes/notes/Label;

    invoke-interface {v1, v3, v4}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->updateLabel(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/Label;)Z

    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    .line 99
    .local v0, "labelId":Ljava/io/Serializable;
    :goto_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCallback;

    invoke-interface {v1}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCallback;->onLabelChanged()V

    .line 100
    const/4 v1, 0x7

    aput-boolean v5, v2, v1

    return-void

    .line 94
    .end local v0    # "labelId":Ljava/io/Serializable;
    :cond_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$label:Lcom/iliakplv/notes/notes/Label;

    invoke-interface {v1, v3}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->insertLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/io/Serializable;

    move-result-object v0

    .line 95
    .restart local v0    # "labelId":Ljava/io/Serializable;
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-boolean v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$insertLabelToNote:Z

    if-nez v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v5, v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    .line 96
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$noteId:Ljava/io/Serializable;

    invoke-interface {v1, v3, v0}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->insertLabelToNote(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    goto :goto_0
.end method
