.class public Lcom/woefe/shoppinglist/activity/ShoppingListFragment;
.super Landroid/app/Fragment;
.source "ShoppingListFragment.java"

# interfaces
.implements Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;


# instance fields
.field private adapter:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

.field private editBar:Lcom/woefe/shoppinglist/activity/EditBar;

.field private layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rootView:Landroid/view/View;

.field private shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/woefe/shoppinglist/activity/ShoppingListFragment;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/woefe/shoppinglist/activity/ShoppingListFragment;)Lcom/woefe/shoppinglist/activity/EditBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    return-object p0
.end method

.method private connectList()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->adapter:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->adapter:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->connectShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    iget-object v1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0, v1}, Lcom/woefe/shoppinglist/activity/EditBar;->connectShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V

    :cond_1
    return-void
.end method

.method public static newInstance(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)Lcom/woefe/shoppinglist/activity/ShoppingListFragment;
    .locals 1

    .line 46
    new-instance v0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;

    invoke-direct {v0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->setShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    new-instance p1, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->adapter:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    .line 109
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->connectList()V

    .line 110
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->adapter:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->registerRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 111
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->adapter:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    new-instance v0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment$1;

    invoke-direct {v0, p0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment$1;-><init>(Lcom/woefe/shoppinglist/activity/ShoppingListFragment;)V

    invoke-virtual {p1, v0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->setOnItemLongClickListener(Lcom/woefe/shoppinglist/activity/RecyclerListAdapter$ItemLongClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->adapter:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/EditBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/EditBar;->hide()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0a0030

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->rootView:Landroid/view/View;

    .line 60
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->rootView:Landroid/view/View;

    const p2, 0x7f0800a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 61
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 63
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 65
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 66
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 68
    new-instance p1, Landroid/support/v7/widget/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 69
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 71
    new-instance p1, Lcom/woefe/shoppinglist/activity/EditBar;

    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/woefe/shoppinglist/activity/EditBar;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    .line 72
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {p1, p0}, Lcom/woefe/shoppinglist/activity/EditBar;->addEditBarListener(Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;)V

    .line 73
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/woefe/shoppinglist/activity/EditBar;->enableAutoHideFAB(Landroid/support/v7/widget/RecyclerView;)V

    if-eqz p3, :cond_0

    .line 76
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {p1, p3}, Lcom/woefe/shoppinglist/activity/EditBar;->restoreState(Landroid/os/Bundle;)V

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {v0, p0}, Lcom/woefe/shoppinglist/activity/EditBar;->removeEditBarListener(Lcom/woefe/shoppinglist/activity/EditBar$EditBarListener;)V

    .line 85
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/EditBar;->hide()V

    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onEditSave(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->editItem(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {p2}, Lcom/woefe/shoppinglist/activity/EditBar;->hide()V

    .line 140
    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onNewItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0, p1, p2}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    iget-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {v0, p1}, Lcom/woefe/shoppinglist/activity/EditBar;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->adapter:Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/RecyclerListAdapter;->disconnectShoppingList()V

    .line 101
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->editBar:Lcom/woefe/shoppinglist/activity/EditBar;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/activity/EditBar;->disconnectShoppingList()V

    .line 102
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public removeAllCheckedItems()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-virtual {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->removeAllCheckedItems()V

    return-void
.end method

.method public setShoppingList(Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->shoppingList:Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    .line 53
    invoke-direct {p0}, Lcom/woefe/shoppinglist/activity/ShoppingListFragment;->connectList()V

    return-void
.end method
