.class Lcom/rubenroy/minimaltodo/n;
.super Lcom/rubenroy/minimaltodo/j;


# instance fields
.field final synthetic c:Lcom/rubenroy/minimaltodo/MainActivity;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/n;->c:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/n;->c:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/MainActivity;->b(Lcom/rubenroy/minimaltodo/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/n;->c:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/MainActivity;->b(Lcom/rubenroy/minimaltodo/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/r;

    iget v0, v0, Landroid/support/design/widget/r;->bottomMargin:I

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/n;->c:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/MainActivity;->b(Lcom/rubenroy/minimaltodo/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/n;->c:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v2}, Lcom/rubenroy/minimaltodo/MainActivity;->b(Lcom/rubenroy/minimaltodo/MainActivity;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
