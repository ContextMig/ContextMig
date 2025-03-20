.class Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3$1;
.super Ljava/lang/Object;
.source "ExpandableTodoTaskAdapter.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V
    .locals 2

    .line 572
    instance-of v0, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    if-eqz v0, :cond_0

    .line 573
    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 574
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setTaskId(J)V

    .line 576
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;

    iget-object v0, v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoSubTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    .line 577
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
