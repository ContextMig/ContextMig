.class Landroid/support/v4/widget/bo;
.super Landroid/support/v4/widget/bm;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/bj;

    iget-object v0, v0, Landroid/support/v4/widget/bj;->d:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Landroid/support/v4/view/bx;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method
