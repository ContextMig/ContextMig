.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->startListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)V
    .locals 2

    .line 805
    instance-of v0, p1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$400(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$500(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$400(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 808
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$500(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/TodoListAdapter;->notifyDataSetChanged()V

    .line 809
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {v0, p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->sendToDatabase(Lorg/secuso/privacyfriendlytodolist/model/BaseTodo;)Z

    .line 810
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->hints()V

    .line 811
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$600(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    .line 812
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "list added"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
