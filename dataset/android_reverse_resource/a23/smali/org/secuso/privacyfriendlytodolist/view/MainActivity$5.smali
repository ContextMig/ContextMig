.class Lorg/secuso/privacyfriendlytodolist/view/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->showAllTasks()V
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

    .line 890
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$5;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 893
    invoke-static {p4, p5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result p1

    .line 895
    invoke-static {p4, p5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 897
    invoke-static {p4, p5}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result p2

    .line 898
    iget-object p3, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$5;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p3}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setLongClickedSubTaskByPos(II)V

    goto :goto_0

    .line 900
    :cond_0
    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$5;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$100(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->setLongClickedTaskByPos(I)V

    .line 902
    :goto_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$5;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    iget-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity$5;->this$0:Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-static {p2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->access$1000(Lorg/secuso/privacyfriendlytodolist/view/MainActivity;)Landroid/widget/ExpandableListView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method
