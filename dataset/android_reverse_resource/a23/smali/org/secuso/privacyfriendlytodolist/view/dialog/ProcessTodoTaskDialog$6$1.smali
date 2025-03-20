.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;
.super Ljava/lang/Object;
.source "ProcessTodoTaskDialog.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDeadline()V
    .locals 3

    .line 236
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$602(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;J)J

    .line 237
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$1000(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;

    iget-object v1, v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDeadline(J)V
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$602(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;J)J

    .line 231
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$1000(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;

    iget-object p2, p2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$600(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDate(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
