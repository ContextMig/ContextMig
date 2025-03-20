.class Landroid/support/design/widget/ab;
.super Landroid/support/design/widget/b;


# instance fields
.field final synthetic a:Landroid/support/design/widget/aj;

.field final synthetic b:Landroid/support/design/widget/z;


# direct methods
.method constructor <init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aj;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ab;->b:Landroid/support/design/widget/z;

    iput-object p2, p0, Landroid/support/design/widget/ab;->a:Landroid/support/design/widget/aj;

    invoke-direct {p0}, Landroid/support/design/widget/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ab;->a:Landroid/support/design/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ab;->a:Landroid/support/design/widget/aj;

    invoke-interface {v0}, Landroid/support/design/widget/aj;->a()V

    :cond_0
    return-void
.end method
