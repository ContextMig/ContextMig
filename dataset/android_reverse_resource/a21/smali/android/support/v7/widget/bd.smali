.class Landroid/support/v7/widget/bd;
.super Landroid/support/v7/widget/bg;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/be;

.field final synthetic b:Landroid/support/v4/i/di;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/av;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/av;Landroid/support/v7/widget/be;Landroid/support/v4/i/di;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/bd;->d:Landroid/support/v7/widget/av;

    iput-object p2, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/be;

    iput-object p3, p0, Landroid/support/v7/widget/bd;->b:Landroid/support/v4/i/di;

    iput-object p4, p0, Landroid/support/v7/widget/bd;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/bg;-><init>(Landroid/support/v7/widget/aw;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/bd;->d:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/be;

    iget-object v1, v1, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/do;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/av;->b(Landroid/support/v7/widget/do;Z)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/bd;->b:Landroid/support/v4/i/di;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/i/di;->a(Landroid/support/v4/i/dz;)Landroid/support/v4/i/di;

    iget-object v0, p0, Landroid/support/v7/widget/bd;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/i/bt;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/bd;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/i/bt;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/bd;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/i/bt;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/bd;->d:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/be;

    iget-object v1, v1, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/do;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/do;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/bd;->d:Landroid/support/v7/widget/av;

    invoke-static {v0}, Landroid/support/v7/widget/av;->h(Landroid/support/v7/widget/av;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bd;->a:Landroid/support/v7/widget/be;

    iget-object v1, v1, Landroid/support/v7/widget/be;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/bd;->d:Landroid/support/v7/widget/av;

    invoke-static {v0}, Landroid/support/v7/widget/av;->e(Landroid/support/v7/widget/av;)V

    return-void
.end method
