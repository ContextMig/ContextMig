.class Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;
.super Ljava/lang/Object;
.source "TodoTasksFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->initFab(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;)V

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->setDialogResult(Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;)V

    .line 151
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoTaskDialog;->show()V

    return-void
.end method
