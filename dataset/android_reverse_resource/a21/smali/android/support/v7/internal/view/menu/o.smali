.class public Landroid/support/v7/internal/view/menu/o;
.super Landroid/support/v7/internal/view/menu/e;

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/e/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/e;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Landroid/support/v7/internal/view/menu/p;
    .locals 2

    new-instance v0, Landroid/support/v7/internal/view/menu/p;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/internal/view/menu/p;-><init>(Landroid/support/v7/internal/view/menu/o;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

.method public a(Z)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setExclusiveCheckable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/o;->c:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MenuItemWrapper"

    const-string v2, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->a()Landroid/support/v4/i/n;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/internal/view/menu/p;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/internal/view/menu/p;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/p;->a:Landroid/view/ActionProvider;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getActionView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/internal/view/menu/q;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/internal/view/menu/q;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/q;->c()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/view/ActionProvider;)Landroid/support/v7/internal/view/menu/p;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Landroid/support/v4/e/a/b;->a(Landroid/support/v4/i/n;)Landroid/support/v4/e/a/b;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setActionView(I)Landroid/view/MenuItem;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0}, Landroid/support/v4/e/a/b;->getActionView()Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    new-instance v2, Landroid/support/v7/internal/view/menu/q;

    invoke-direct {v2, v1}, Landroid/support/v7/internal/view/menu/q;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v2}, Landroid/support/v4/e/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/internal/view/menu/q;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/q;-><init>(Landroid/view/View;)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/support/v7/internal/view/menu/r;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/r;-><init>(Landroid/support/v7/internal/view/menu/o;Landroid/view/MenuItem$OnActionExpandListener;)V

    :goto_0
    invoke-interface {v0, v1}, Landroid/support/v4/e/a/b;->a(Landroid/support/v4/i/av;)Landroid/support/v4/e/a/b;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/support/v7/internal/view/menu/s;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/support/v7/internal/view/menu/o;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :goto_0
    invoke-interface {v0, v1}, Landroid/support/v4/e/a/b;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/e/a/b;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setShowAsAction(I)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/b;

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/b;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
