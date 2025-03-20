.class public Lorg/mozilla/focus/menu/context/WebContextMenu;
.super Ljava/lang/Object;
.source "WebContextMenu.java"


# direct methods
.method private static createTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0023

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    .local v0, "titleView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-object v0
.end method

.method private static setupMenuForHitTarget(Landroid/app/Dialog;Landroid/support/design/widget/NavigationView;Lorg/mozilla/focus/web/IWebView$Callback;Lorg/mozilla/focus/web/IWebView$HitTarget;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "navigationView"    # Landroid/support/design/widget/NavigationView;
    .param p2, "callback"    # Lorg/mozilla/focus/web/IWebView$Callback;
    .param p3, "hitTarget"    # Lorg/mozilla/focus/web/IWebView$HitTarget;

    .prologue
    .line 112
    const v0, 0x7f0c0003

    invoke-virtual {p1, v0}, Landroid/support/design/widget/NavigationView;->inflateMenu(I)V

    .line 114
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0900a9

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p3, Lorg/mozilla/focus/web/IWebView$HitTarget;->isLink:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 115
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0900a8

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p3, Lorg/mozilla/focus/web/IWebView$HitTarget;->isLink:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0900a7

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p3, Lorg/mozilla/focus/web/IWebView$HitTarget;->isLink:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 117
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0900a6

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p3, Lorg/mozilla/focus/web/IWebView$HitTarget;->isImage:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0900a4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p3, Lorg/mozilla/focus/web/IWebView$HitTarget;->isImage:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0900a5

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p3, Lorg/mozilla/focus/web/IWebView$HitTarget;->isImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p3, Lorg/mozilla/focus/web/IWebView$HitTarget;->imageURL:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Lorg/mozilla/focus/utils/UrlUtils;->isHttpOrHttps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 120
    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    new-instance v0, Lorg/mozilla/focus/menu/context/WebContextMenu$2;

    invoke-direct {v0, p0, p3, p2}, Lorg/mozilla/focus/menu/context/WebContextMenu$2;-><init>(Landroid/app/Dialog;Lorg/mozilla/focus/web/IWebView$HitTarget;Lorg/mozilla/focus/web/IWebView$Callback;)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 183
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Lorg/mozilla/focus/web/IWebView$Callback;Lorg/mozilla/focus/web/IWebView$HitTarget;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lorg/mozilla/focus/web/IWebView$Callback;
    .param p2, "hitTarget"    # Lorg/mozilla/focus/web/IWebView$HitTarget;

    .prologue
    .line 45
    iget-boolean v6, p2, Lorg/mozilla/focus/web/IWebView$HitTarget;->isLink:Z

    if-nez v6, :cond_0

    iget-boolean v6, p2, Lorg/mozilla/focus/web/IWebView$HitTarget;->isImage:Z

    if-nez v6, :cond_0

    .line 47
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "WebContextMenu can only handle long-press on images and/or links."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    :cond_0
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->openWebContextMenuEvent()V

    .line 52
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-boolean v6, p2, Lorg/mozilla/focus/web/IWebView$HitTarget;->isLink:Z

    if-eqz v6, :cond_1

    .line 56
    iget-object v6, p2, Lorg/mozilla/focus/web/IWebView$HitTarget;->linkURL:Ljava/lang/String;

    invoke-static {p0, v6}, Lorg/mozilla/focus/menu/context/WebContextMenu;->createTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 62
    .local v3, "titleView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 64
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0b0022

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 65
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 67
    new-instance v6, Lorg/mozilla/focus/menu/context/WebContextMenu$1;

    invoke-direct {v6, p2}, Lorg/mozilla/focus/menu/context/WebContextMenu$1;-><init>(Lorg/mozilla/focus/web/IWebView$HitTarget;)V

    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 88
    .local v1, "dialog":Landroid/app/Dialog;
    const v6, 0x7f09004b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/NavigationView;

    .line 89
    .local v2, "menu":Landroid/support/design/widget/NavigationView;
    invoke-static {v1, v2, p1, p2}, Lorg/mozilla/focus/menu/context/WebContextMenu;->setupMenuForHitTarget(Landroid/app/Dialog;Landroid/support/design/widget/NavigationView;Lorg/mozilla/focus/web/IWebView$Callback;Lorg/mozilla/focus/web/IWebView$HitTarget;)V

    .line 91
    const v6, 0x7f090134

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 92
    .local v5, "warningView":Landroid/widget/TextView;
    iget-boolean v6, p2, Lorg/mozilla/focus/web/IWebView$HitTarget;->isImage:Z

    if-eqz v6, :cond_3

    .line 94
    const v6, 0x7f0f004d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x7f0f0028

    .line 95
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_1
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 101
    return-void

    .line 57
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "menu":Landroid/support/design/widget/NavigationView;
    .end local v3    # "titleView":Landroid/view/View;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "warningView":Landroid/widget/TextView;
    :cond_1
    iget-boolean v6, p2, Lorg/mozilla/focus/web/IWebView$HitTarget;->isImage:Z

    if-eqz v6, :cond_2

    .line 58
    iget-object v6, p2, Lorg/mozilla/focus/web/IWebView$HitTarget;->imageURL:Ljava/lang/String;

    invoke-static {p0, v6}, Lorg/mozilla/focus/menu/context/WebContextMenu;->createTitleView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "titleView":Landroid/view/View;
    goto :goto_0

    .line 60
    .end local v3    # "titleView":Landroid/view/View;
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unhandled long press target type"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 97
    .restart local v1    # "dialog":Landroid/app/Dialog;
    .restart local v2    # "menu":Landroid/support/design/widget/NavigationView;
    .restart local v3    # "titleView":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "warningView":Landroid/widget/TextView;
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
