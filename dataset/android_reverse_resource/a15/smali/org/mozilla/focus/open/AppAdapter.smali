.class public Lorg/mozilla/focus/open/AppAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;,
        Lorg/mozilla/focus/open/AppAdapter$App;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/open/AppAdapter$App;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;

.field private final store:Lorg/mozilla/focus/open/AppAdapter$App;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoArray"    # [Landroid/content/pm/ActivityInfo;
    .param p3, "store"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/open/AppAdapter$App;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p2, v2

    .line 56
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    new-instance v4, Lorg/mozilla/focus/open/AppAdapter$App;

    invoke-direct {v4, p1, v1}, Lorg/mozilla/focus/open/AppAdapter$App;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Lorg/mozilla/focus/open/AppAdapter$1;

    invoke-direct {v2, p0}, Lorg/mozilla/focus/open/AppAdapter$1;-><init>(Lorg/mozilla/focus/open/AppAdapter;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    iput-object v0, p0, Lorg/mozilla/focus/open/AppAdapter;->apps:Ljava/util/List;

    .line 67
    if-eqz p3, :cond_1

    new-instance v2, Lorg/mozilla/focus/open/AppAdapter$App;

    invoke-direct {v2, p1, p3}, Lorg/mozilla/focus/open/AppAdapter$App;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    :goto_1
    iput-object v2, p0, Lorg/mozilla/focus/open/AppAdapter;->store:Lorg/mozilla/focus/open/AppAdapter$App;

    .line 68
    return-void

    .line 67
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private bindApp(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 110
    move-object v1, p1

    check-cast v1, Lorg/mozilla/focus/open/AppViewHolder;

    .line 111
    .local v1, "appViewHolder":Lorg/mozilla/focus/open/AppViewHolder;
    iget-object v2, p0, Lorg/mozilla/focus/open/AppAdapter;->apps:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/open/AppAdapter$App;

    .line 113
    .local v0, "app":Lorg/mozilla/focus/open/AppAdapter$App;
    iget-object v2, p0, Lorg/mozilla/focus/open/AppAdapter;->listener:Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/focus/open/AppViewHolder;->bind(Lorg/mozilla/focus/open/AppAdapter$App;Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;)V

    .line 114
    return-void
.end method

.method private bindInstallBanner(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 117
    move-object v0, p1

    check-cast v0, Lorg/mozilla/focus/open/InstallBannerViewHolder;

    .line 118
    .local v0, "installViewHolder":Lorg/mozilla/focus/open/InstallBannerViewHolder;
    iget-object v1, p0, Lorg/mozilla/focus/open/AppAdapter;->store:Lorg/mozilla/focus/open/AppAdapter$App;

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/open/InstallBannerViewHolder;->bind(Lorg/mozilla/focus/open/AppAdapter$App;)V

    .line 119
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/mozilla/focus/open/AppAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lorg/mozilla/focus/open/AppAdapter;->store:Lorg/mozilla/focus/open/AppAdapter$App;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lorg/mozilla/focus/open/AppAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 92
    const v0, 0x7f0b0040

    .line 94
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0044

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 102
    .local v0, "itemViewType":I
    const v1, 0x7f0b0040

    if-ne v0, v1, :cond_1

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/open/AppAdapter;->bindApp(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const v1, 0x7f0b0044

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lorg/mozilla/focus/open/AppAdapter;->bindInstallBanner(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v4, 0x7f0b0044

    const v3, 0x7f0b0040

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-ne p2, v3, :cond_0

    .line 75
    new-instance v1, Lorg/mozilla/focus/open/AppViewHolder;

    .line 76
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/focus/open/AppViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    :goto_0
    return-object v1

    .line 77
    :cond_0
    if-ne p2, v4, :cond_1

    .line 78
    new-instance v1, Lorg/mozilla/focus/open/InstallBannerViewHolder;

    .line 79
    invoke-virtual {v0, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/focus/open/InstallBannerViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown view type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setOnAppSelectedListener(Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/mozilla/focus/open/AppAdapter;->listener:Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;

    .line 87
    return-void
.end method
