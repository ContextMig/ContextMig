.class public Lcom/roomorama/caldroid/DateGridFragment;
.super Landroid/support/v4/app/Fragment;
.source "DateGridFragment.java"


# instance fields
.field private gridAdapter:Lcom/roomorama/caldroid/CaldroidGridAdapter;

.field private gridView:Landroid/widget/GridView;

.field private gridViewRes:I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private themeResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    iput v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridViewRes:I

    .line 29
    iput v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->themeResource:I

    return-void
.end method

.method private setupGridView()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridAdapter:Lcom/roomorama/caldroid/CaldroidGridAdapter;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridAdapter:Lcom/roomorama/caldroid/CaldroidGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/roomorama/caldroid/DateGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/roomorama/caldroid/DateGridFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 79
    :cond_2
    return-void
.end method


# virtual methods
.method public getGridAdapter()Lcom/roomorama/caldroid/CaldroidGridAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridAdapter:Lcom/roomorama/caldroid/CaldroidGridAdapter;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roomorama/caldroid/DateGridFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    iget v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridViewRes:I

    if-nez v2, :cond_0

    .line 87
    sget v2, Lcom/caldroid/R$layout;->date_grid_fragment:I

    iput v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridViewRes:I

    .line 90
    :cond_0
    iget v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->themeResource:I

    if-nez v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridAdapter:Lcom/roomorama/caldroid/CaldroidGridAdapter;

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridAdapter:Lcom/roomorama/caldroid/CaldroidGridAdapter;

    invoke-virtual {v2}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->getThemeResource()I

    move-result v2

    iput v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->themeResource:I

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridView:Landroid/widget/GridView;

    if-nez v2, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/roomorama/caldroid/DateGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/roomorama/caldroid/DateGridFragment;->themeResource:I

    invoke-static {v2, p1, v3}, Lcom/roomorama/caldroid/CaldroidFragment;->getThemeInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    .local v0, "localInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridViewRes:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridView:Landroid/widget/GridView;

    .line 100
    invoke-direct {p0}, Lcom/roomorama/caldroid/DateGridFragment;->setupGridView()V

    .line 108
    .end local v0    # "localInflater":Landroid/view/LayoutInflater;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridView:Landroid/widget/GridView;

    return-object v2

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 103
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 104
    iget-object v2, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setGridAdapter(Lcom/roomorama/caldroid/CaldroidGridAdapter;)V
    .locals 0
    .param p1, "gridAdapter"    # Lcom/roomorama/caldroid/CaldroidGridAdapter;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridAdapter:Lcom/roomorama/caldroid/CaldroidGridAdapter;

    .line 53
    return-void
.end method

.method public setGridViewRes(I)V
    .locals 0
    .param p1, "gridViewRes"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/roomorama/caldroid/DateGridFragment;->gridViewRes:I

    .line 61
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/roomorama/caldroid/DateGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 37
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "onItemLongClickListener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/roomorama/caldroid/DateGridFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 45
    return-void
.end method
