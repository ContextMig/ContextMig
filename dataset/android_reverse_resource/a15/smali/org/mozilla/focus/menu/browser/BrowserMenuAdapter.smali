.class public final Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BrowserMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrowserMenuAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrowserMenuAdapter.kt\norg/mozilla/focus/menu/browser/BrowserMenuAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,174:1\n1246#2:175\n1315#2,3:176\n*E\n*S KotlinDebug\n*F\n+ 1 BrowserMenuAdapter.kt\norg/mozilla/focus/menu/browser/BrowserMenuAdapter\n*L\n113#1:175\n113#1,3:176\n*E\n"
.end annotation


# instance fields
.field private blockingItemViewHolderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

.field private navigationItemViewHolderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/mozilla/focus/menu/browser/BrowserMenu;Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/customtabs/CustomTabConfig;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lorg/mozilla/focus/menu/browser/BrowserMenu;
    .param p3, "fragment"    # Lorg/mozilla/focus/fragment/BrowserFragment;
    .param p4, "customTabConfig"    # Lorg/mozilla/focus/customtabs/CustomTabConfig;

    .prologue
    const/4 v1, 0x0

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

    iput-object p3, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->navigationItemViewHolderReference:Ljava/lang/ref/WeakReference;

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->blockingItemViewHolderReference:Ljava/lang/ref/WeakReference;

    .line 58
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fragment.url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->initializeMenu(Ljava/lang/String;Lorg/mozilla/focus/customtabs/CustomTabConfig;)V

    return-void
.end method

.method private final initializeMenu(Ljava/lang/String;Lorg/mozilla/focus/customtabs/CustomTabConfig;)V
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "customTabConfig"    # Lorg/mozilla/focus/customtabs/CustomTabConfig;

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 63
    .local v8, "resources":Landroid/content/res/Resources;
    new-instance v2, Lorg/mozilla/focus/utils/Browsers;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-direct {v2, v9, v0}, Lorg/mozilla/focus/utils/Browsers;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .local v2, "browsers":Lorg/mozilla/focus/utils/Browsers;
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->shouldShowButtonToolbar()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    sget-object v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Navigation;->INSTANCE:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Navigation;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    sget-object v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$BlockingSwitch;->INSTANCE:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$BlockingSwitch;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->showShareMenuItem:Z

    if-eqz v9, :cond_2

    .line 72
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    new-instance v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    const v11, 0x7f0900f1

    const v12, 0x7f0f0096

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "resources.getString(R.string.menu_share)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    new-instance v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    const v11, 0x7f09001b

    const v12, 0x7f0f008e

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "resources.getString(R.st\u2026.menu_add_to_home_screen)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    new-instance v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    const v11, 0x7f090078

    const v12, 0x7f0f0077

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "resources.getString(R.string.find_in_page)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lorg/mozilla/focus/utils/Browsers;->hasMultipleThirdPartyBrowsers(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 79
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    new-instance v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    const v11, 0x7f0900bd

    .line 80
    const v12, 0x7f0f0091

    .line 79
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "resources.getString(\n   \u2026enu_open_with_a_browser2)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_3
    if-eqz p2, :cond_4

    .line 85
    const v9, 0x7f0f0028

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "appName":Ljava/lang/String;
    const v9, 0x7f0f0092

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "label":Ljava/lang/String;
    new-instance v7, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    const v9, 0x7f0900bc

    const-string v10, "label"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v9, v6}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;-><init>(ILjava/lang/String;)V

    .line 89
    .local v7, "menuItem":Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v1    # "appName":Ljava/lang/String;
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "menuItem":Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lorg/mozilla/focus/utils/Browsers;->hasThirdPartyDefaultBrowser(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 93
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    new-instance v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    const v11, 0x7f0900bb

    .line 94
    const v12, 0x7f0f0092

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lorg/mozilla/focus/utils/Browsers;->getDefaultBrowser()Landroid/content/pm/ActivityInfo;

    move-result-object v15

    if-nez v15, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 95
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 94
    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v13, v14

    .line 93
    invoke-virtual {v8, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "resources.getString(\n   \u2026 context.packageManager))"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_6
    if-nez p2, :cond_7

    .line 101
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    new-instance v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    const v11, 0x7f0900f0

    const v12, 0x7f0f0095

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "resources.getString(R.string.menu_settings)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    sget-object v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;->INSTANCE:Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$RequestDesktopCheck;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lorg/mozilla/focus/utils/AppConstants;->isGeckoBuild()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 108
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    new-instance v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    const v11, 0x7f0900d1

    const v12, 0x7f0f0093

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "resources.getString(R.st\u2026g.menu_report_site_issue)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_8
    if-eqz p2, :cond_a

    .line 112
    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->menuItems:Ljava/util/List;

    const-string v10, "customTabConfig.menuItems"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    .line 113
    nop

    .line 175
    new-instance v4, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 176
    .local v4, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 177
    .local v5, "item$iv$iv":Ljava/lang/Object;
    check-cast v5, Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;

    .line 113
    .end local v5    # "item$iv$iv":Ljava/lang/Object;
    new-instance v10, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;

    const v11, 0x7f09004f

    iget-object v12, v5, Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;->name:Ljava/lang/String;

    const-string v13, "it.name"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v5, Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;->pendingIntent:Landroid/app/PendingIntent;

    const-string v14, "it.pendingIntent"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12, v13}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    move-object v3, v4

    .line 178
    check-cast v3, Ljava/util/List;

    .line 114
    .local v3, "customTabItems":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    .end local v3    # "customTabItems":Ljava/util/List;
    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    :cond_a
    return-void
.end method

.method private final shouldShowButtonToolbar()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/mozilla/focus/utils/HardwareUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;

    invoke-virtual {v0}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;->getViewType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->onBindViewHolder(Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
    .param p2, "position"    # I

    .prologue
    const-string v1, "holder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->menu:Lorg/mozilla/focus/menu/browser/BrowserMenu;

    invoke-virtual {p1, v1}, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;->setMenu(Lorg/mozilla/focus/menu/browser/BrowserMenu;)V

    .line 159
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {p1, v1}, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;->setOnClickListener(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    .line 161
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;

    .line 163
    .local v0, "item":Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
    instance-of v1, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;

    .end local p1    # "holder":Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
    check-cast v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;

    .end local v0    # "item":Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
    invoke-virtual {p1, v0}, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;->bind(Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Custom;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v0    # "item":Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
    .restart local p1    # "holder":Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
    :cond_1
    instance-of v1, v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;

    .end local p1    # "holder":Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
    check-cast v0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;

    .end local v0    # "item":Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem;
    invoke-virtual {p1, v0}, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;->bind(Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter$MenuItem$Default;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, 0x0

    const-string v3, "parent"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 131
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sparse-switch p2, :sswitch_data_0

    .line 153
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown view type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 133
    :sswitch_0
    new-instance v2, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;

    .line 134
    const v3, 0x7f0b0049

    invoke-virtual {v1, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 133
    invoke-direct {v2, v3, v4}, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;-><init>(Landroid/view/View;Lorg/mozilla/focus/fragment/BrowserFragment;)V

    .line 135
    .local v2, "navigationItemViewHolder":Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->navigationItemViewHolderReference:Ljava/lang/ref/WeakReference;

    .line 136
    check-cast v2, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;

    .end local v2    # "navigationItemViewHolder":Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;
    move-object v3, v2

    .line 131
    :goto_0
    return-object v3

    .line 139
    :sswitch_1
    new-instance v0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    .line 140
    const v3, 0x7f0b0047

    invoke-virtual {v1, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 139
    invoke-direct {v0, v3, v4}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;-><init>(Landroid/view/View;Lorg/mozilla/focus/fragment/BrowserFragment;)V

    .line 141
    .local v0, "blockingItemViewHolder":Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->blockingItemViewHolderReference:Ljava/lang/ref/WeakReference;

    .line 142
    check-cast v0, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;

    .end local v0    # "blockingItemViewHolder":Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;
    move-object v3, v0

    goto :goto_0

    .line 145
    :sswitch_2
    new-instance v3, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;

    .line 146
    const v4, 0x7f0b005f

    invoke-virtual {v1, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 147
    iget-object v5, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->fragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    .line 145
    invoke-direct {v3, v4, v5}, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;-><init>(Landroid/view/View;Lorg/mozilla/focus/fragment/BrowserFragment;)V

    check-cast v3, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;

    goto :goto_0

    .line 149
    :sswitch_3
    new-instance v3, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;

    const v4, 0x7f0b0048

    invoke-virtual {v1, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/mozilla/focus/menu/browser/MenuItemViewHolder;-><init>(Landroid/view/View;)V

    check-cast v3, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;

    goto :goto_0

    .line 150
    :sswitch_4
    new-instance v3, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;

    .line 151
    const v4, 0x7f0b0024

    invoke-virtual {v1, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 150
    invoke-direct {v3, v4}, Lorg/mozilla/focus/menu/browser/CustomTabMenuItemViewHolder;-><init>(Landroid/view/View;)V

    check-cast v3, Lorg/mozilla/focus/menu/browser/BrowserMenuViewHolder;

    goto :goto_0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0024 -> :sswitch_4
        0x7f0b0047 -> :sswitch_1
        0x7f0b0048 -> :sswitch_3
        0x7f0b0049 -> :sswitch_0
        0x7f0b005f -> :sswitch_2
    .end sparse-switch
.end method

.method public final updateLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .prologue
    .line 124
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->navigationItemViewHolderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;

    if-eqz v0, :cond_0

    .line 125
    .local v0, "navigationItemViewHolder":Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;
    invoke-virtual {v0, p1}, Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;->updateLoading(Z)V

    .line 126
    .end local v0    # "navigationItemViewHolder":Lorg/mozilla/focus/menu/browser/NavigationItemViewHolder;
    :cond_0
    return-void
.end method

.method public final updateTrackers(I)V
    .locals 2
    .param p1, "trackers"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/BrowserMenuAdapter;->blockingItemViewHolderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    if-eqz v0, :cond_0

    .line 120
    .local v0, "navigationItemViewHolder":Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;
    invoke-virtual {v0, p1}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->updateTrackers(I)V

    .line 121
    .end local v0    # "navigationItemViewHolder":Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;
    :cond_0
    return-void
.end method
