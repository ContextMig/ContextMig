.class Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$4;
.super Ljava/lang/Object;
.source "TodoTasksFragment.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
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

    .line 245
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V
    .locals 1

    .line 248
    instance-of p1, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->access$100(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    .line 250
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "subtask altered"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
