.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;
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

    .line 246
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 249
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$900(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$600(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J

    move-result-wide v4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;-><init>(Landroid/content/Context;JJ)V

    .line 250
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$7;)V

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->setCallback(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;)V

    .line 275
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->show()V

    return-void
.end method
