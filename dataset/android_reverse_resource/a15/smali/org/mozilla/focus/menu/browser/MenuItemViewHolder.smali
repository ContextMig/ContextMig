.class Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;
.super Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
.source "MenuItemViewHolder.java"


# instance fields
.field private final menuItemView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "itemView":Landroid/view/View;
    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->menuItemView:Landroid/widget/TextView;

    .line 22
    return-void
.end method


# virtual methods
.method bind(Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;)V
    .locals 4
    .param p1, "menuItem"    # Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    .prologue
    .line 25
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->menuItemView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 26
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->menuItemView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->browserFragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->getSession()Lorg/mozilla/focus/session/Session;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/session/Session;->getLoading()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 30
    .local v0, "isLoading":Z
    invoke-virtual {p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->getId()I

    move-result v1

    const v2, 0x7f09001b

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;->getId()I

    move-result v1

    const v2, 0x7f090078

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 31
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->menuItemView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->browserFragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v2}, Lorg/mozilla/focus/fragment/BrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->menuItemView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->menuItemView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
