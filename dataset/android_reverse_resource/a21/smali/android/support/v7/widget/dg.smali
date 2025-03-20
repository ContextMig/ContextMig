.class Landroid/support/v7/widget/dg;
.super Landroid/support/v7/widget/cq;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ch;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ch;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-direct {p0}, Landroid/support/v7/widget/cq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/ci;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/dg;-><init>(Landroid/support/v7/widget/ch;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->g(Landroid/support/v7/widget/ch;)Landroid/support/v7/widget/co;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->f:Landroid/support/v7/widget/dl;

    invoke-static {v0, v2}, Landroid/support/v7/widget/dl;->a(Landroid/support/v7/widget/dl;Z)Z

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->m(Landroid/support/v7/widget/ch;)V

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->f:Landroid/support/v7/widget/dl;

    invoke-static {v0, v2}, Landroid/support/v7/widget/dl;->a(Landroid/support/v7/widget/dl;Z)Z

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->m(Landroid/support/v7/widget/ch;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/dg;->b()V

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/p;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/dg;->b()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->n(Landroid/support/v7/widget/ch;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->o(Landroid/support/v7/widget/ch;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->p(Landroid/support/v7/widget/ch;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    iget-object v1, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-static {v1}, Landroid/support/v7/widget/ch;->q(Landroid/support/v7/widget/ch;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/i/bt;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/ch;->c(Landroid/support/v7/widget/ch;Z)Z

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->requestLayout()V

    goto :goto_0
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ch;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/dg;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/dg;->b()V

    :cond_0
    return-void
.end method
