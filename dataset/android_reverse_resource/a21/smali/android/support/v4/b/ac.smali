.class Landroid/support/v4/b/ac;
.super Landroid/support/v4/b/ad;


# instance fields
.field final synthetic a:Landroid/support/v4/b/o;

.field final synthetic b:Landroid/support/v4/b/aa;


# direct methods
.method constructor <init>(Landroid/support/v4/b/aa;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/b/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/b/ac;->b:Landroid/support/v4/b/aa;

    iput-object p4, p0, Landroid/support/v4/b/ac;->a:Landroid/support/v4/b/o;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/b/ad;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/b/ad;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/support/v4/b/ac;->a:Landroid/support/v4/b/o;

    iget-object v0, v0, Landroid/support/v4/b/o;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/ac;->a:Landroid/support/v4/b/o;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/b/o;->c:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/b/ac;->b:Landroid/support/v4/b/aa;

    iget-object v1, p0, Landroid/support/v4/b/ac;->a:Landroid/support/v4/b/o;

    iget-object v2, p0, Landroid/support/v4/b/ac;->a:Landroid/support/v4/b/o;

    iget v2, v2, Landroid/support/v4/b/o;->d:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/b/aa;->a(Landroid/support/v4/b/o;IIIZ)V

    :cond_0
    return-void
.end method
