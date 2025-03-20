.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;
.super Ljava/lang/Object;
.source "ProcessTodoTaskDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->initGui()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 186
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$300(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$400(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$100(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    const-string v1, ""

    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$500(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setName(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$500(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDescription(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$500(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$600(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDeadline(J)V

    .line 201
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$500(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$700(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setPriority(Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;)V

    .line 202
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$500(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$800(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setListId(I)V

    .line 203
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$500(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$200(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setProgress(I)V

    .line 204
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$500(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$900(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setReminderTime(J)V

    .line 205
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$500(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;->finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V

    .line 206
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->dismiss()V

    :goto_0
    return-void
.end method
