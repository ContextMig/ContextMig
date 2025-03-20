.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;
.super Ljava/lang/Object;
.source "ProcessTodoTaskDialog.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeReminder()V
    .locals 3

    .line 270
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$902(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;J)J

    .line 271
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    const v1, 0x7f09013b

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object v1, v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReminder(J)V
    .locals 5

    .line 259
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$600(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$600(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 260
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object p2, p2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0e0043

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$902(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;J)J

    .line 265
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$1100(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;

    iget-object p2, p2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$900(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDateTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
