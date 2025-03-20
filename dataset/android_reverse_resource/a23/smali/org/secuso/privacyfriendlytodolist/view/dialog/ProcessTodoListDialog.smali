.class public Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;
.super Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;
.source "ProcessTodoListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;
    }
.end annotation


# instance fields
.field private buttonCancel:Landroid/widget/Button;

.field private buttonOkay:Landroid/widget/Button;

.field private etDescription:Landroid/widget/EditText;

.field private etName:Landroid/widget/EditText;

.field private self:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

.field private todoList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0023

    .line 47
    invoke-direct {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->self:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    .line 49
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->initGui()V

    .line 51
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-direct {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;-><init>()V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->todoList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 52
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->todoList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setCreated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/secuso/privacyfriendlytodolist/model/TodoList;)V
    .locals 1

    const v0, 0x7f0b0023

    .line 57
    invoke-direct {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->self:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    .line 59
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->initGui()V

    .line 60
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->etName:Landroid/widget/EditText;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->todoList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    .line 62
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->todoList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setChanged()V

    return-void
.end method

.method static synthetic access$100(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)Landroid/widget/EditText;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->etName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;Ljava/lang/String;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->changesMade(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoList;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->todoList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->self:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    return-object p0
.end method

.method private changesMade(Ljava/lang/String;)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->todoList:Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private initGui()V
    .locals 3

    const v0, 0x7f090035

    .line 69
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->buttonOkay:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->buttonOkay:Landroid/widget/Button;

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090034

    .line 71
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->buttonCancel:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->buttonCancel:Landroid/widget/Button;

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$1;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090075

    .line 78
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->etName:Landroid/widget/EditText;

    return-void
.end method
