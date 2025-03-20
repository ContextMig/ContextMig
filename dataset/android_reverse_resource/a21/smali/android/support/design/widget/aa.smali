.class Landroid/support/design/widget/aa;
.super Landroid/support/design/widget/b;


# instance fields
.field final synthetic a:Landroid/support/design/widget/aj;

.field final synthetic b:Landroid/support/design/widget/z;


# direct methods
.method constructor <init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aj;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/aa;->b:Landroid/support/design/widget/z;

    iput-object p2, p0, Landroid/support/design/widget/aa;->a:Landroid/support/design/widget/aj;

    invoke-direct {p0}, Landroid/support/design/widget/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/aa;->b:Landroid/support/design/widget/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/z;->a(Landroid/support/design/widget/z;Z)Z

    iget-object v0, p0, Landroid/support/design/widget/aa;->b:Landroid/support/design/widget/z;

    iget-object v0, v0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/aa;->a:Landroid/support/design/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/aa;->a:Landroid/support/design/widget/aj;

    invoke-interface {v0}, Landroid/support/design/widget/aj;->b()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/aa;->b:Landroid/support/design/widget/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/z;->a(Landroid/support/design/widget/z;Z)Z

    return-void
.end method
