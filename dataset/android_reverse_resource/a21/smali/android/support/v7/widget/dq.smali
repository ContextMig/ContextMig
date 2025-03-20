.class Landroid/support/v7/widget/dq;
.super Landroid/support/v4/i/a;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/dp;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/dp;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/dp;

    invoke-direct {p0}, Landroid/support/v4/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/i/a/l;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/i/a;->a(Landroid/view/View;Landroid/support/v4/i/a/l;)V

    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/dp;

    invoke-static {v0}, Landroid/support/v7/widget/dp;->a(Landroid/support/v7/widget/dp;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/dp;

    iget-object v0, v0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/dp;

    iget-object v0, v0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/cy;->a(Landroid/view/View;Landroid/support/v4/i/a/l;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/i/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/dp;

    invoke-static {v0}, Landroid/support/v7/widget/dp;->a(Landroid/support/v7/widget/dp;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/dp;

    iget-object v0, v0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/dp;

    iget-object v0, v0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/cy;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
