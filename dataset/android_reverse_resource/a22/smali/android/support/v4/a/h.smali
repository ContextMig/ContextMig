.class Landroid/support/v4/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final a:Landroid/support/v4/a/b;

.field final b:Landroid/support/v4/a/j;


# direct methods
.method public constructor <init>(Landroid/support/v4/a/b;Landroid/support/v4/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/a/h;->a:Landroid/support/v4/a/b;

    iput-object p2, p0, Landroid/support/v4/a/h;->b:Landroid/support/v4/a/j;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/a/h;->a:Landroid/support/v4/a/b;

    iget-object v1, p0, Landroid/support/v4/a/h;->b:Landroid/support/v4/a/j;

    invoke-interface {v0, v1}, Landroid/support/v4/a/b;->onAnimationCancel(Landroid/support/v4/a/j;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/a/h;->a:Landroid/support/v4/a/b;

    iget-object v1, p0, Landroid/support/v4/a/h;->b:Landroid/support/v4/a/j;

    invoke-interface {v0, v1}, Landroid/support/v4/a/b;->onAnimationEnd(Landroid/support/v4/a/j;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/a/h;->a:Landroid/support/v4/a/b;

    iget-object v1, p0, Landroid/support/v4/a/h;->b:Landroid/support/v4/a/j;

    invoke-interface {v0, v1}, Landroid/support/v4/a/b;->onAnimationRepeat(Landroid/support/v4/a/j;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/a/h;->a:Landroid/support/v4/a/b;

    iget-object v1, p0, Landroid/support/v4/a/h;->b:Landroid/support/v4/a/j;

    invoke-interface {v0, v1}, Landroid/support/v4/a/b;->onAnimationStart(Landroid/support/v4/a/j;)V

    return-void
.end method
