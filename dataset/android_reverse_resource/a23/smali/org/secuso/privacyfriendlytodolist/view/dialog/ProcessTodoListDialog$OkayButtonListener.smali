.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;
.super Ljava/lang/Object;
.source "ProcessTodoListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OkayButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;


# direct methods
.method private constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->access$100(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    invoke-static {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->access$200(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->access$300(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoList;->setName(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->access$300(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;->finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V

    .line 96
    :cond_1
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->access$400(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->dismiss()V

    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog$OkayButtonListener;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoListDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
