.class Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;
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
    name = "ItemsListReactor"
.end annotation


# instance fields
.field final synthetic this$0:Lkdk/android/simplydo/SimplyDoActivity;


# direct methods
.method private constructor <init>(Lkdk/android/simplydo/SimplyDoActivity;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/SimplyDoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lkdk/android/simplydo/SimplyDoActivity;
    .param p2, "x1"    # Lkdk/android/simplydo/SimplyDoActivity$1;

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;-><init>(Lkdk/android/simplydo/SimplyDoActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, 0x0

    .line 741
    const-string v3, "SimplyDo"

    const-string v4, "ItemsListReactor.onCreateContextMenu()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p3

    .line 743
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 744
    .local v0, "ctxMenuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 745
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v4, p0, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkdk/android/simplydo/ItemDesc;

    invoke-static {v4, v3}, Lkdk/android/simplydo/SimplyDoActivity;->access$802(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/ItemDesc;)Lkdk/android/simplydo/ItemDesc;

    .line 747
    const-string v3, "Item Options"

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 748
    const/16 v3, 0x68

    const-string v4, "Edit"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 749
    const/16 v3, 0x67

    const-string v4, "Delete"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 751
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-static {v3}, Lkdk/android/simplydo/SimplyDoActivity;->access$800(Lkdk/android/simplydo/SimplyDoActivity;)Lkdk/android/simplydo/ItemDesc;

    move-result-object v3

    invoke-virtual {v3}, Lkdk/android/simplydo/ItemDesc;->isStar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 753
    const-string v2, "Remove Star"

    .line 759
    .local v2, "toggleText":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x69

    invoke-interface {p1, v5, v3, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 760
    iget-object v3, p0, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-static {v3}, Lkdk/android/simplydo/SimplyDoActivity;->access$900(Lkdk/android/simplydo/SimplyDoActivity;)Lkdk/android/simplydo/DataViewer;

    move-result-object v3

    invoke-interface {v3}, Lkdk/android/simplydo/DataViewer;->getListData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 762
    const/16 v3, 0x6c

    const-string v4, "Move To"

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 764
    :cond_0
    return-void

    .line 757
    .end local v2    # "toggleText":Ljava/lang/String;
    :cond_1
    const-string v2, "Add Star"

    .restart local v2    # "toggleText":Ljava/lang/String;
    goto :goto_0
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
    .line 771
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "SimplyDo"

    const-string v3, "ItemsListReactor.onItemClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Lkdk/android/simplydo/SimplyDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 774
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkdk/android/simplydo/ItemDesc;

    .line 775
    .local v0, "itemDesc":Lkdk/android/simplydo/ItemDesc;
    iget-object v2, p0, Lkdk/android/simplydo/SimplyDoActivity$ItemsListReactor;->this$0:Lkdk/android/simplydo/SimplyDoActivity;

    invoke-static {v2, v0}, Lkdk/android/simplydo/SimplyDoActivity;->access$1000(Lkdk/android/simplydo/SimplyDoActivity;Lkdk/android/simplydo/ItemDesc;)V

    .line 776
    return-void
.end method
