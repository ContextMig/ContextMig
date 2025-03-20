.class Lio/codetail/a/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/codetail/a/i;->a(Lio/codetail/a/h;)V
.end annotation


# instance fields
.field final synthetic a:Lio/codetail/a/h;

.field final synthetic b:Lio/codetail/a/i;


# direct methods
.method constructor <init>(Lio/codetail/a/i;Lio/codetail/a/h;)V
    .locals 0

    iput-object p1, p0, Lio/codetail/a/i$1;->b:Lio/codetail/a/i;

    iput-object p2, p0, Lio/codetail/a/i$1;->a:Lio/codetail/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lio/codetail/a/i$1;->a:Lio/codetail/a/h;

    invoke-interface {v0}, Lio/codetail/a/h;->b()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lio/codetail/a/i$1;->a:Lio/codetail/a/h;

    invoke-interface {v0}, Lio/codetail/a/h;->c()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lio/codetail/a/i$1;->a:Lio/codetail/a/h;

    invoke-interface {v0}, Lio/codetail/a/h;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lio/codetail/a/i$1;->a:Lio/codetail/a/h;

    invoke-interface {v0}, Lio/codetail/a/h;->d()V

    return-void
.end method
