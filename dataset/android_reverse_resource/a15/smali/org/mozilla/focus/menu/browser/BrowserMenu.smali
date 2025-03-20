.class public Lorg/mozilla/focus/menu/browser/BrowserMenu;
.super Landroid/widget/PopupWindow;
.source "BrowserMenu.java"


# instance fields
.field private final adapter:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/customtabs/CustomTabConfig;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lorg/mozilla/focus/fragment/BrowserFragment;
    .param p3, "customTabConfig"    # Lorg/mozilla/focus/customtabs/CustomTabConfig;

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0046

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 35
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->setContentView(Landroid/view/View;)V

    .line 37
    new-instance v3, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;

    invoke-direct {v3, p1, p0, p2, p3}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;-><init>(Landroid/content/Context;Lorg/mozilla/focus/menu/browser/BrowserMenu;Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/customtabs/CustomTabConfig;)V

    iput-object v3, p0, Lorg/mozilla/focus/menu/browser/BrowserMenu;->adapter:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;

    .line 39
    const v3, 0x7f09009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 40
    .local v1, "menuList":Landroid/support/v7/widget/RecyclerView;
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p1, v7, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 41
    iget-object v3, p0, Lorg/mozilla/focus/menu/browser/BrowserMenu;->adapter:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 43
    if-eqz p3, :cond_0

    .line 44
    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    .local v0, "brandingView":Landroid/widget/TextView;
    const v3, 0x7f0f008f

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0f0028

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    .end local v0    # "brandingView":Landroid/widget/TextView;
    :cond_0
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0, v7}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, v8}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->setHeight(I)V

    .line 54
    invoke-virtual {p0, v8}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->setWidth(I)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v3}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->setElevation(F)V

    .line 57
    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-static {p1}, Lorg/mozilla/focus/utils/ViewUtils;->isRTL(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v0, v1

    .line 70
    .local v0, "xOffset":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 71
    return-void

    .line 68
    .end local v0    # "xOffset":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLoading(Z)V
    .locals 1
    .param p1, "loading"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenu;->adapter:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->updateLoading(Z)V

    .line 65
    return-void
.end method

.method public updateTrackers(I)V
    .locals 1
    .param p1, "trackers"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenu;->adapter:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->updateTrackers(I)V

    .line 61
    return-void
.end method
