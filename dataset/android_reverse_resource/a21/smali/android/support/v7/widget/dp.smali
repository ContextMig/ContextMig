.class public Landroid/support/v7/widget/dp;
.super Landroid/support/v4/i/a;


# instance fields
.field final a:Landroid/support/v7/widget/ch;

.field final c:Landroid/support/v4/i/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ch;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/i/a;-><init>()V

    new-instance v0, Landroid/support/v7/widget/dq;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/dq;-><init>(Landroid/support/v7/widget/dp;)V

    iput-object v0, p0, Landroid/support/v7/widget/dp;->c:Landroid/support/v4/i/a;

    iput-object p1, p0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/dp;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/dp;->c()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->p()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/i/a/l;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/i/a;->a(Landroid/view/View;Landroid/support/v4/i/a/l;)V

    const-class v0, Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/i/a/l;->b(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v7/widget/dp;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/cy;->a(Landroid/support/v4/i/a/l;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/i/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Landroid/support/v7/widget/ch;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/dp;->c()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/ch;

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/cy;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/i/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/dp;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/dp;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/cy;->a(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/support/v4/i/a;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/dp;->c:Landroid/support/v4/i/a;

    return-object v0
.end method
