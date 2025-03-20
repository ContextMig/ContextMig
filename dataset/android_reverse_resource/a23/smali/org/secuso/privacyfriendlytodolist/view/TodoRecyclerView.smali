.class public Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "TodoRecyclerView.java"


# instance fields
.field private emptyView:Landroid/view/View;

.field private final observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;

    invoke-direct {p1, p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;)V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;

    invoke-direct {p1, p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;)V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p1, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;

    invoke-direct {p1, p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;)V

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->checkIfEmpty()V

    return-void
.end method

.method private checkIfEmpty()V
    .locals 5

    .line 63
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 65
    :goto_0
    iget-object v2, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->emptyView:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    move v1, v3

    .line 66
    :cond_2
    invoke-virtual {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 79
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 82
    :cond_1
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->checkIfEmpty()V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->emptyView:Landroid/view/View;

    .line 87
    invoke-direct {p0}, Lorg/secuso/privacyfriendlytodolist/view/TodoRecyclerView;->checkIfEmpty()V

    return-void
.end method
