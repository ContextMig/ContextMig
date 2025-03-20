.class Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;
.super Ljava/lang/Object;
.source "SimplyDoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkdk/android/simplydo/SimplyDoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListsListReactor"
.end annotation


# instance fields
.field final synthetic this$0:Lkdk/android/simplydo/SimplyDoActivity;


# direct methods
.method private constructor <init>(Lkdk/android/simplydo/SimplyDoActivity;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/SimplyDoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;
    .param p2, "x1"    # Lkdk/android/simplydo/SimplyDoActivity$1;

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 797
    const-string v2, "SimplyDo"

    const-string v3, "ListsListReactor.onCreateContextMenu()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p3

    .line 799
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 800
    .local v0, "ctxMenuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 801
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkdk/android/simplydo/ListDesc;

    invoke-static {v3, v2}, Lkdk/android/simplydo/SimplyDoActivity;->access$1202(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/ListDesc;)Lkdk/android/simplydo/ListDesc;

    .line 803
    const-string v2, "List Options"

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 804
    const/16 v2, 0x66

    const-string v3, "Edit"

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 805
    const/16 v2, 0x65

    const-string v3, "Delete"

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 806
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "SimplyDo"

    const-string v3, "ListsListReactor.onItemClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 789
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdk/android/simplydo/ListDesc;

    .line 790
    .local v0, "listDesc":Lkdk/android/simplydo/ListDesc;
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity$ListsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lkdk/android/simplydo/SimplyDoActivity;->access$1100(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/ListDesc;Z)V

    .line 791
    return-void
.end method
