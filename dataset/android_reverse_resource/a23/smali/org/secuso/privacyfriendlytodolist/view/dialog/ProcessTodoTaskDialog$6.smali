.class Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;
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

    .line 223
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 226
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;->this$0:Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->access$600(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;)J

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;-><init>(Landroid/content/Context;J)V

    .line 227
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog$6;)V

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->setCallback(Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog$DeadlineCallback;)V

    .line 240
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/DeadlineDialog;->show()V

    return-void
.end method
