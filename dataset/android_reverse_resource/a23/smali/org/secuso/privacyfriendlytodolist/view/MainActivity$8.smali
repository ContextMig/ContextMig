.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

.field final synthetic val$longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;Lorg/secuso/privacyfriendlytodolist/model/Tuple;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;->val$longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V
    .locals 2

    .line 1028
    instance-of v0, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->sendToDatabase(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)Z

    .line 1030
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    .line 1031
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$1300(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;->val$longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListId()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    .line 1032
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListId()I

    move-result p1

    invoke-static {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$1100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;I)V

    goto :goto_0

    .line 1034
    :cond_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$8;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$1200(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
