.class public Landroid/support/v4/i/bt;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/i/cg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/i/cf;

    invoke-direct {v0}, Landroid/support/v4/i/cf;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/i/ce;

    invoke-direct {v0}, Landroid/support/v4/i/ce;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/i/cd;

    invoke-direct {v0}, Landroid/support/v4/i/cd;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/i/cb;

    invoke-direct {v0}, Landroid/support/v4/i/cb;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0

    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/i/ca;

    invoke-direct {v0}, Landroid/support/v4/i/ca;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/i/by;

    invoke-direct {v0}, Landroid/support/v4/i/by;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0

    :cond_5
    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/i/bz;

    invoke-direct {v0}, Landroid/support/v4/i/bz;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0

    :cond_6
    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    new-instance v0, Landroid/support/v4/i/bx;

    invoke-direct {v0}, Landroid/support/v4/i/bx;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    new-instance v0, Landroid/support/v4/i/bw;

    invoke-direct {v0}, Landroid/support/v4/i/bw;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    if-lt v0, v1, :cond_9

    new-instance v0, Landroid/support/v4/i/bv;

    invoke-direct {v0}, Landroid/support/v4/i/bv;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0

    :cond_9
    new-instance v0, Landroid/support/v4/i/bu;

    invoke-direct {v0}, Landroid/support/v4/i/bu;-><init>()V

    sput-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    goto :goto_0
.end method

.method public static A(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->B(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static B(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->C(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static C(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->D(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static a(II)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(III)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/i/cg;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/i/ec;)Landroid/support/v4/i/ec;
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Landroid/support/v4/i/ec;)Landroid/support/v4/i/ec;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;F)V

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/i/cg;->a(Landroid/view/View;II)V

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/i/cg;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/i/cg;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/i/a/l;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Landroid/support/v4/i/a/l;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/i/a;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Landroid/support/v4/i/a;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/i/bl;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Landroid/support/v4/i/bl;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/i/cg;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/i/ec;)Landroid/support/v4/i/ec;
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->b(Landroid/view/View;Landroid/support/v4/i/ec;)Landroid/support/v4/i/ec;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->b(Landroid/view/View;F)V

    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->c(Landroid/view/View;F)V

    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->c(Landroid/view/View;I)V

    return-void
.end method

.method public static c(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->c(Landroid/view/View;Z)V

    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->d(Landroid/view/View;)V

    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->d(Landroid/view/View;F)V

    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/i/cg;->d(Landroid/view/View;I)V

    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public static f(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->f(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->n(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->o(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static o(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->p(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->q(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static q(Landroid/view/View;)Landroid/support/v4/i/di;
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->r(Landroid/view/View;)Landroid/support/v4/i/di;

    move-result-object v0

    return-object v0
.end method

.method public static r(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->u(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static s(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->s(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static t(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->t(Landroid/view/View;)V

    return-void
.end method

.method public static u(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->w(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static v(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->x(Landroid/view/View;)V

    return-void
.end method

.method public static w(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->m(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static x(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->y(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static y(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->z(Landroid/view/View;)V

    return-void
.end method

.method public static z(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/i/bt;->a:Landroid/support/v4/i/cg;

    invoke-interface {v0, p0}, Landroid/support/v4/i/cg;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
