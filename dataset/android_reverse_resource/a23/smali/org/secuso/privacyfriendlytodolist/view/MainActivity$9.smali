.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1060
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->val$longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1063
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->val$longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    .line 1064
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$200(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->val$longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-static {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->recoverTasks(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    .line 1065
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 1066
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {v1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$200(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->recoverSubtasks(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    goto :goto_0

    .line 1068
    :cond_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$1300(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->val$longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListId()I

    move-result p1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    .line 1069
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->val$longClickedTodo:Lorg/secuso/privacyfriendlytodolist/model/Tuple;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/Tuple;->getLeft()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$1100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;I)V

    goto :goto_1

    .line 1071
    :cond_1
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$1200(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)V

    .line 1073
    :goto_1
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$9;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->hints()V

    return-void
.end method
