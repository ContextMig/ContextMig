.class Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;
.super Ljava/lang/Object;
.source "ExpandableTodoTaskAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

.field final synthetic val$currentSubTask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

.field final synthetic val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->val$currentSubTask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    iput-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 605
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 606
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->val$currentSubTask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setDone(Z)V

    .line 607
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->doneStatusChanged()V

    .line 608
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->val$currentSubTask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;->setChanged()V

    .line 609
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->val$currentSubTask:Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;

    invoke-static {p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoSubTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoSubTask;)I

    .line 610
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$000(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->getProgressDone(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;Z)V

    .line 611
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-static {p1, p2}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->saveTodoTaskInDb(Landroid/database/sqlite/SQLiteDatabase;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    .line 612
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$4;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
