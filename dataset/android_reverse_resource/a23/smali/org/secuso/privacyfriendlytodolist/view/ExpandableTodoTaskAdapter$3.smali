.class Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;
.super Ljava/lang/Object;
.source "ExpandableTodoTaskAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;->val$currentTask:Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 568
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    invoke-static {v0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->access$100(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;-><init>(Landroid/content/Context;)V

    .line 569
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3$1;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$3;)V

    invoke-virtual {p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->setDialogResult(Lorg/secuso/privacyfriendlytodolist/view/TodoCallback;)V

    .line 581
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ProcessTodoSubTaskDialog;->show()V

    return-void
.end method
