.class Landroid/support/v7/widget/az;
.super Landroid/support/v7/widget/bg;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/do;

.field final synthetic b:Landroid/support/v4/i/di;

.field final synthetic c:Landroid/support/v7/widget/av;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/av;Landroid/support/v7/widget/do;Landroid/support/v4/i/di;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/az;->c:Landroid/support/v7/widget/av;

    iput-object p2, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/do;

    iput-object p3, p0, Landroid/support/v7/widget/az;->b:Landroid/support/v4/i/di;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/bg;-><init>(Landroid/support/v7/widget/aw;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/az;->c:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->k(Landroid/support/v7/widget/do;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/az;->b:Landroid/support/v4/i/di;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/i/di;->a(Landroid/support/v4/i/dz;)Landroid/support/v4/i/di;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/i/bt;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/az;->c:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->h(Landroid/support/v7/widget/do;)V

    iget-object v0, p0, Landroid/support/v7/widget/az;->c:Landroid/support/v7/widget/av;

    invoke-static {v0}, Landroid/support/v7/widget/av;->d(Landroid/support/v7/widget/av;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/az;->c:Landroid/support/v7/widget/av;

    invoke-static {v0}, Landroid/support/v7/widget/av;->e(Landroid/support/v7/widget/av;)V

    return-void
.end method
