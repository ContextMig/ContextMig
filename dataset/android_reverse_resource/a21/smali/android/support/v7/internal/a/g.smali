.class final Landroid/support/v7/internal/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/a/c;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/a/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/a/g;->a:Landroid/support/v7/internal/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/a/c;Landroid/support/v7/internal/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/a/g;-><init>(Landroid/support/v7/internal/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 4

    const/16 v3, 0x6c

    iget-object v0, p0, Landroid/support/v7/internal/a/g;->a:Landroid/support/v7/internal/a/c;

    invoke-static {v0}, Landroid/support/v7/internal/a/c;->a(Landroid/support/v7/internal/a/c;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/g;->a:Landroid/support/v7/internal/a/c;

    invoke-static {v0}, Landroid/support/v7/internal/a/c;->c(Landroid/support/v7/internal/a/c;)Landroid/support/v7/internal/widget/x;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/x;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/g;->a:Landroid/support/v7/internal/a/c;

    invoke-static {v0}, Landroid/support/v7/internal/a/c;->a(Landroid/support/v7/internal/a/c;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/g;->a:Landroid/support/v7/internal/a/c;

    invoke-static {v0}, Landroid/support/v7/internal/a/c;->a(Landroid/support/v7/internal/a/c;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/g;->a:Landroid/support/v7/internal/a/c;

    invoke-static {v0}, Landroid/support/v7/internal/a/c;->a(Landroid/support/v7/internal/a/c;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
