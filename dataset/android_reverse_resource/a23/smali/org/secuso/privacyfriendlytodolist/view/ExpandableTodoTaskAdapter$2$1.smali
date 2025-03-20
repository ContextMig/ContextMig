.class Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;
.super Ljava/lang/Object;
.source "ExpandableTodoTaskAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;ZLandroid/widget/CompoundButton;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iput-boolean p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->val$isChecked:Z

    iput-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 468
    iget-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->val$isChecked:Z

    if-eqz p1, :cond_0

    .line 469
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 470
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDone(Z)V

    .line 471
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setAllSubTasksDone(Z)V

    .line 472
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object v1, v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object v2, v2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {v2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$000(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getProgressDone(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;Z)V

    .line 473
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setChanged()V

    .line 474
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    .line 475
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object v1, v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-static {p1, v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    .line 476
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 477
    invoke-virtual {v1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setDone(Z)V

    .line 478
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object v2, v2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {v2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoSubTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    goto :goto_0

    .line 481
    :cond_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 482
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDone(Z)V

    .line 483
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setAllSubTasksDone(Z)V

    .line 484
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object v1, v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object v2, v2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {v2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$000(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getProgressDone(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;Z)V

    .line 485
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setChanged()V

    .line 486
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    .line 487
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object v1, v1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-static {p1, v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    .line 488
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    .line 489
    invoke-virtual {v1, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setDone(Z)V

    .line 490
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;->this$1:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;

    iget-object v2, v2, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {v2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoSubTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    goto :goto_1

    :cond_1
    return-void
.end method
