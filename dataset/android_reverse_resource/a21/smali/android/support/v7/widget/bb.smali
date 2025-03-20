.class Landroid/support/v7/widget/bb;
.super Landroid/support/v7/widget/bg;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/do;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/i/di;

.field final synthetic e:Landroid/support/v7/widget/av;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/av;Landroid/support/v7/widget/do;IILandroid/support/v4/i/di;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/bb;->e:Landroid/support/v7/widget/av;

    iput-object p2, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/do;

    iput p3, p0, Landroid/support/v7/widget/bb;->b:I

    iput p4, p0, Landroid/support/v7/widget/bb;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/bb;->d:Landroid/support/v4/i/di;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/bg;-><init>(Landroid/support/v7/widget/aw;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bb;->e:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->l(Landroid/support/v7/widget/do;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bb;->d:Landroid/support/v4/i/di;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/i/di;->a(Landroid/support/v4/i/dz;)Landroid/support/v4/i/di;

    iget-object v0, p0, Landroid/support/v7/widget/bb;->e:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->i(Landroid/support/v7/widget/do;)V

    iget-object v0, p0, Landroid/support/v7/widget/bb;->e:Landroid/support/v7/widget/av;

    invoke-static {v0}, Landroid/support/v7/widget/av;->g(Landroid/support/v7/widget/av;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bb;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/bb;->e:Landroid/support/v7/widget/av;

    invoke-static {v0}, Landroid/support/v7/widget/av;->e(Landroid/support/v7/widget/av;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v7/widget/bb;->b:I

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Landroid/support/v4/i/bt;->a(Landroid/view/View;F)V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bb;->c:I

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Landroid/support/v4/i/bt;->b(Landroid/view/View;F)V

    :cond_1
    return-void
.end method
