.class final Landroid/support/v4/view/en$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/en;->a(Landroid/view/View;Landroid/support/v4/view/ep;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ep;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ep;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/en$1;->a:Landroid/support/v4/view/ep;

    iput-object p2, p0, Landroid/support/v4/view/en$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/en$1;->a:Landroid/support/v4/view/ep;

    iget-object v1, p0, Landroid/support/v4/view/en$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ep;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/en$1;->a:Landroid/support/v4/view/ep;

    iget-object v1, p0, Landroid/support/v4/view/en$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ep;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/en$1;->a:Landroid/support/v4/view/ep;

    iget-object v1, p0, Landroid/support/v4/view/en$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/ep;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
