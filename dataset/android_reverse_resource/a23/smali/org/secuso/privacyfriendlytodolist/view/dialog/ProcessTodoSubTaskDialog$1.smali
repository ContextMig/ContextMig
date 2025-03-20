.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;
.super Ljava/lang/Object;
.source "ProcessTodoSubTaskDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->initGui()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->access$100(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setName(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->access$100(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;->finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V

    .line 84
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->dismiss()V

    :goto_0
    return-void
.end method
