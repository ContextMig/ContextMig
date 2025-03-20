.class Landroid/support/design/widget/ah;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/support/design/widget/aj;

.field final synthetic b:Landroid/support/design/widget/af;


# direct methods
.method constructor <init>(Landroid/support/design/widget/af;Landroid/support/design/widget/aj;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ah;->b:Landroid/support/design/widget/af;

    iput-object p2, p0, Landroid/support/design/widget/ah;->a:Landroid/support/design/widget/aj;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ah;->a:Landroid/support/design/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ah;->a:Landroid/support/design/widget/aj;

    invoke-interface {v0}, Landroid/support/design/widget/aj;->a()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ah;->b:Landroid/support/design/widget/af;

    iget-object v0, v0, Landroid/support/design/widget/af;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
