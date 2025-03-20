.class Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;
.super Ljava/lang/Object;
.source "ExpandableTodoTaskAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

.field final synthetic val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 463
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e00b9

    const/4 v1, 0x0

    .line 464
    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v2, 0x7f0e00bb

    .line 465
    new-instance v3, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;

    invoke-direct {v3, p0, p2, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;ZLandroid/widget/CompoundButton;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 496
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 497
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setDone(Z)V

    .line 498
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setAllSubTasksDone(Z)V

    .line 499
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$000(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getProgressDone(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;Z)V

    .line 500
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->setChanged()V

    .line 501
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    .line 502
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-static {p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    .line 503
    :goto_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    .line 504
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getSubTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setChanged()V

    .line 505
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$2;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
