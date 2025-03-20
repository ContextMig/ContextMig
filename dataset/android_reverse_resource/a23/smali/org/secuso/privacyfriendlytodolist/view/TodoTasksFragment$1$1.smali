.class Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1$1;
.super Ljava/lang/Object;
.source "TodoTasksFragment.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V
    .locals 1

    .line 144
    instance-of v0, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->access$000(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->saveNewTasks()V

    .line 147
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->access$100(Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
