.class public Landroid/support/v4/view/bx;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/ck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/cj;

    invoke-direct {v0}, Landroid/support/v4/view/cj;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/ci;

    invoke-direct {v0}, Landroid/support/v4/view/ci;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/ch;

    invoke-direct {v0}, Landroid/support/v4/view/ch;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/cf;

    invoke-direct {v0}, Landroid/support/v4/view/cf;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0

    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/ce;

    invoke-direct {v0}, Landroid/support/v4/view/ce;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/view/cc;

    invoke-direct {v0}, Landroid/support/v4/view/cc;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0

    :cond_5
    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/view/cd;

    invoke-direct {v0}, Landroid/support/v4/view/cd;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0

    :cond_6
    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    new-instance v0, Landroid/support/v4/view/cb;

    invoke-direct {v0}, Landroid/support/v4/view/cb;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    new-instance v0, Landroid/support/v4/view/ca;

    invoke-direct {v0}, Landroid/support/v4/view/ca;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    if-lt v0, v1, :cond_9

    new-instance v0, Landroid/support/v4/view/bz;

    invoke-direct {v0}, Landroid/support/v4/view/bz;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0

    :cond_9
    new-instance v0, Landroid/support/v4/view/by;

    invoke-direct {v0}, Landroid/support/v4/view/by;-><init>()V

    sput-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    goto :goto_0
.end method

.method public static A(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->B(Landroid/view/View;)V

    return-void
.end method

.method public static B(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->C(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static C(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->D(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static D(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->E(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static E(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->F(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static a(II)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(III)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ck;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/es;)Landroid/support/v4/view/es;
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Landroid/support/v4/view/es;)Landroid/support/v4/view/es;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;F)V

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ck;->a(Landroid/view/View;II)V

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ck;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ck;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a/l;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Landroid/support/v4/view/a/l;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/bo;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Landroid/support/v4/view/bo;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ck;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/es;)Landroid/support/v4/view/es;
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->b(Landroid/view/View;Landroid/support/v4/view/es;)Landroid/support/v4/view/es;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->b(Landroid/view/View;F)V

    return-void
.end method

.method public static b(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ck;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->c(Landroid/view/View;F)V

    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->c(Landroid/view/View;I)V

    return-void
.end method

.method public static c(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->c(Landroid/view/View;Z)V

    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->d(Landroid/view/View;)V

    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->d(Landroid/view/View;F)V

    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ck;->d(Landroid/view/View;I)V

    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->e(Landroid/view/View;)I

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

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->f(Landroid/view/View;)F

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

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->i(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->j(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->m(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->n(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static o(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->p(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->q(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static q(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->r(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static r(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->s(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static s(Landroid/view/View;)Landroid/support/v4/view/ec;
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->t(Landroid/view/View;)Landroid/support/v4/view/ec;

    move-result-object v0

    return-object v0
.end method

.method public static t(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->w(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static u(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->u(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static v(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->v(Landroid/view/View;)V

    return-void
.end method

.method public static w(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->y(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static x(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->z(Landroid/view/View;)V

    return-void
.end method

.method public static y(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->o(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static z(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bx;->a:Landroid/support/v4/view/ck;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ck;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
