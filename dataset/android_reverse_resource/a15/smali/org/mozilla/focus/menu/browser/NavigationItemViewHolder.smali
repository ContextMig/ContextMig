.class public Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;
.super Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
.source "NavigationItemViewHolder.java"


# instance fields
.field final refreshButton:Landroid/view/View;

.field final stopButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "fragment"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    const v1, 0x7f0900cf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;->refreshButton:Landroid/view/View;

    .line 23
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;->refreshButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v1, 0x7f090109

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;->stopButton:Landroid/view/View;

    .line 26
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;->stopButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p2}, Lorg/mozilla/focus/fragment/BrowserFragment;->getSession()Lorg/mozilla/focus/session/Session;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/session/Session;->getLoading()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;->updateLoading(Z)V

    .line 30
    const v1, 0x7f09007c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "forwardView":Landroid/view/View;
    invoke-virtual {p2}, Lorg/mozilla/focus/fragment/BrowserFragment;->canGoForward()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public updateLoading(Z)V
    .locals 4
    .param p1, "loading"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 40
    iget-object v3, p0, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;->refreshButton:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;->stopButton:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v2, v1

    .line 41
    goto :goto_1
.end method
