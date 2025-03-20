.class Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;
.super Ljava/lang/Object;
.source "LabelEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

.field final synthetic val$editMode:Z

.field final synthetic val$insertLabelToNote:Z

.field final synthetic val$label:Lcom/iliakplv/notes/notes/Label;

.field final synthetic val$labelDialogView:Landroid/view/View;

.field final synthetic val$noteId:Ljava/io/Serializable;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x57fba54f5917505dL    # 6.80811061105179E115

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;Landroid/view/View;Lcom/iliakplv/notes/notes/Label;ZZLjava/io/Serializable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    iput-object p2, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$labelDialogView:Landroid/view/View;

    iput-object p3, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$label:Lcom/iliakplv/notes/notes/Label;

    iput-boolean p4, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$editMode:Z

    iput-boolean p5, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$insertLabelToNote:Z

    iput-object p6, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$noteId:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->$jacocoInit()[Z

    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;->val$labelDialogView:Landroid/view/View;

    const v2, 0x7f0c0005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-boolean v3, v1, v3

    .line 86
    new-instance v2, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;

    invoke-direct {v2, p0, v0}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1$1;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iliakplv/notes/NotesApplication;->executeInBackground(Ljava/lang/Runnable;)V

    .line 102
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    return-void
.end method
