.class Landroid/support/v7/internal/view/menu/ae;
.super Landroid/support/v7/internal/view/menu/ac;

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/e/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/ac;-><init>(Landroid/content/Context;Landroid/support/v4/e/a/a;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/support/v4/e/a/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ae;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/e/a/c;

    return-object v0
.end method

.method public clearHeader()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ae;->b()Landroid/support/v4/e/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/e/a/c;->clearHeader()V

    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ae;->b()Landroid/support/v4/e/a/c;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/e/a/c;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ae;->b()Landroid/support/v4/e/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/c;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ae;->b()Landroid/support/v4/e/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/c;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ae;->b()Landroid/support/v4/e/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/c;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ae;->b()Landroid/support/v4/e/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/c;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ae;->b()Landroid/support/v4/e/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/c;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ae;->b()Landroid/support/v4/e/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/c;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ae;->b()Landroid/support/v4/e/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/e/a/c;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
