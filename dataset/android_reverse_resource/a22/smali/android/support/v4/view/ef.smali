.class Landroid/support/v4/view/ef;
.super Landroid/support/v4/view/ed;


# instance fields
.field b:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/ed;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ef;->b:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ec;Landroid/view/View;)J
    .locals 2

    invoke-static {p2}, Landroid/support/v4/view/em;->a(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/support/v4/view/ec;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/em;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(Landroid/support/v4/view/ec;Landroid/view/View;J)V
    .locals 1

    invoke-static {p2, p3, p4}, Landroid/support/v4/view/em;->a(Landroid/view/View;J)V

    return-void
.end method

.method public a(Landroid/support/v4/view/ec;Landroid/view/View;Landroid/support/v4/view/ep;)V
    .locals 1

    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Landroid/support/v4/view/eg;

    invoke-direct {v0, p1}, Landroid/support/v4/view/eg;-><init>(Landroid/support/v4/view/ec;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/em;->a(Landroid/view/View;Landroid/support/v4/view/ep;)V

    return-void
.end method

.method public a(Landroid/support/v4/view/ec;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/em;->a(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public b(Landroid/support/v4/view/ec;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/view/em;->b(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/support/v4/view/ec;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/em;->b(Landroid/view/View;F)V

    return-void
.end method

.method public b(Landroid/support/v4/view/ec;Landroid/view/View;J)V
    .locals 1

    invoke-static {p2, p3, p4}, Landroid/support/v4/view/em;->b(Landroid/view/View;J)V

    return-void
.end method

.method public c(Landroid/support/v4/view/ec;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/view/em;->c(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/support/v4/view/ec;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/em;->c(Landroid/view/View;F)V

    return-void
.end method
