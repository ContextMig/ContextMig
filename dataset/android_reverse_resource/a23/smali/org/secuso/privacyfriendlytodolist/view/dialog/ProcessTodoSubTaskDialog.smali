.class public Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;
.super Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;
.source "ProcessTodoSubTaskDialog.java"


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private dialogTitleEdit:Landroid/widget/TextView;

.field private dialogTitleNew:Landroid/widget/TextView;

.field private etSubtaskName:Landroid/widget/EditText;

.field private subtask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0020

    .line 44
    invoke-direct {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->initGui()V

    .line 47
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-direct {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;-><init>()V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->subtask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 48
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->subtask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setCreated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)V
    .locals 1

    const v0, 0x7f0b0020

    .line 53
    invoke-direct {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->initGui()V

    .line 56
    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->subtask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 57
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->subtask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setChanged()V

    .line 60
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->etSubtaskName:Landroid/widget/EditText;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;)Landroid/widget/EditText;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->etSubtaskName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->subtask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    return-object p0
.end method

.method private initGui()V
    .locals 3

    const v0, 0x7f090071

    .line 64
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->etSubtaskName:Landroid/widget/EditText;

    const v0, 0x7f090031

    .line 65
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090030

    .line 66
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->cancelButton:Landroid/widget/Button;

    const v2, 0x7f090064

    .line 69
    invoke-virtual {p0, v2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->dialogTitleEdit:Landroid/widget/TextView;

    const v2, 0x7f090065

    .line 70
    invoke-virtual {p0, v2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->dialogTitleNew:Landroid/widget/TextView;

    .line 72
    new-instance v2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;

    invoke-direct {v2, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$2;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public titleEdit()V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->dialogTitleNew:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->dialogTitleEdit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
