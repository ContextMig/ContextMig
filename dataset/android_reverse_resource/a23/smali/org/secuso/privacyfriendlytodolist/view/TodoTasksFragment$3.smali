.class Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$3;
.super Ljava/lang/Object;
.source "TodoTasksFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;->initExListViewGUI(Landroid/view/View;)V
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

    .line 186
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment$3;->this$0:Lorg/secuso/privacyfriendlytodolist/view/TodoTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 192
    instance-of p3, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;

    if-eqz p3, :cond_1

    .line 194
    check-cast p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;

    .line 196
    iget-object p3, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->seperator:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 p4, 0x8

    if-ne p3, p4, :cond_0

    .line 197
    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->seperator:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p1, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$GroupTaskViewHolder;->seperator:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return p2
.end method
