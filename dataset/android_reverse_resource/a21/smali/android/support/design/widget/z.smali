.class Landroid/support/design/widget/z;
.super Landroid/support/design/widget/ai;


# instance fields
.field a:Landroid/support/design/widget/ap;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:F

.field private k:F

.field private l:I

.field private m:Landroid/support/design/widget/bk;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/aq;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/ai;-><init>(Landroid/view/View;Landroid/support/design/widget/aq;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/z;->l:I

    new-instance v0, Landroid/support/design/widget/bk;

    invoke-direct {v0}, Landroid/support/design/widget/bk;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/z;->m:Landroid/support/design/widget/bk;

    iget-object v0, p0, Landroid/support/design/widget/z;->m:Landroid/support/design/widget/bk;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/bk;->a(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/z;->m:Landroid/support/design/widget/bk;

    sget-object v1, Landroid/support/design/widget/z;->b:[I

    new-instance v2, Landroid/support/design/widget/ad;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/ad;-><init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aa;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/z;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/bk;->a([ILandroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/support/design/widget/z;->m:Landroid/support/design/widget/bk;

    sget-object v1, Landroid/support/design/widget/z;->c:[I

    new-instance v2, Landroid/support/design/widget/ad;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/ad;-><init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aa;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/z;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/bk;->a([ILandroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/support/design/widget/z;->m:Landroid/support/design/widget/bk;

    sget-object v1, Landroid/support/design/widget/z;->d:[I

    new-instance v2, Landroid/support/design/widget/ae;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/ae;-><init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aa;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/z;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/bk;->a([ILandroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/z;)F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/z;->j:F

    return v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2

    sget-object v0, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v0, p0, Landroid/support/design/widget/z;->l:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p1
.end method

.method static synthetic a(Landroid/support/design/widget/z;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/widget/z;->n:Z

    return p1
.end method

.method static synthetic b(Landroid/support/design/widget/z;)F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/z;->k:F

    return v0
.end method

.method private static b(I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v1, 0x3

    const/4 v4, 0x0

    new-array v0, v1, [[I

    new-array v1, v1, [I

    sget-object v2, Landroid/support/design/widget/z;->c:[I

    aput-object v2, v0, v4

    aput p0, v1, v4

    const/4 v2, 0x1

    sget-object v3, Landroid/support/design/widget/z;->b:[I

    aput-object v3, v0, v2

    aput p0, v1, v2

    const/4 v2, 0x2

    new-array v3, v4, [I

    aput-object v3, v0, v2

    aput v4, v1, v2

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private c()V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/ap;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Landroid/support/design/widget/z;->f:Landroid/support/design/widget/aq;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/aq;->a(IIII)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/z;->m:Landroid/support/design/widget/bk;

    invoke-virtual {v0}, Landroid/support/design/widget/bk;->b()V

    return-void
.end method

.method a(F)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/z;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    iget v1, p0, Landroid/support/design/widget/z;->k:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/ap;->a(FF)V

    iput p1, p0, Landroid/support/design/widget/z;->j:F

    invoke-direct {p0}, Landroid/support/design/widget/z;->c()V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/z;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/widget/z;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/z;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/design/widget/z;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/z;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/z;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/support/design/widget/z;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/d/a/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/z;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/z;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/z;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p3}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Landroid/support/design/widget/z;->f:Landroid/support/design/widget/aq;

    invoke-interface {v1}, Landroid/support/design/widget/aq;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {v0}, Landroid/support/v4/d/a/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/z;->h:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/z;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p4}, Landroid/support/design/widget/z;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/design/widget/z;->h:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    if-lez p5, :cond_1

    invoke-virtual {p0, p5, p2}, Landroid/support/design/widget/z;->a(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/z;->i:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/z;->i:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/z;->g:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/design/widget/z;->h:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    move-object v3, v0

    :goto_0
    new-instance v0, Landroid/support/design/widget/ap;

    iget-object v1, p0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/support/design/widget/z;->f:Landroid/support/design/widget/aq;

    invoke-interface {v3}, Landroid/support/design/widget/aq;->a()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/z;->j:F

    iget v5, p0, Landroid/support/design/widget/z;->j:F

    iget v6, p0, Landroid/support/design/widget/z;->k:F

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/ap;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v0, p0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    iget-object v0, p0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/ap;->a(Z)V

    iget-object v0, p0, Landroid/support/design/widget/z;->f:Landroid/support/design/widget/aq;

    iget-object v1, p0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    invoke-interface {v0, v1}, Landroid/support/design/widget/aq;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/support/design/widget/z;->c()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/z;->i:Landroid/graphics/drawable/Drawable;

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/z;->g:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/z;->h:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    move-object v3, v0

    goto :goto_0
.end method

.method a(Landroid/support/design/widget/aj;)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/design/widget/z;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/support/design/widget/aj;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/b;->design_fab_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/support/design/widget/aa;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/aa;-><init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method a([I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/z;->m:Landroid/support/design/widget/bk;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/bk;->a([I)V

    return-void
.end method

.method b(F)V
    .locals 2

    iget v0, p0, Landroid/support/design/widget/z;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/z;->k:F

    iget-object v0, p0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    iget v1, p0, Landroid/support/design/widget/z;->j:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ap;->b(F)V

    invoke-direct {p0}, Landroid/support/design/widget/z;->c()V

    :cond_0
    return-void
.end method

.method b(Landroid/support/design/widget/aj;)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/z;->n:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/b;->design_fab_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/support/design/widget/ab;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/ab;-><init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/support/design/widget/z;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/support/design/widget/aj;->a()V

    goto :goto_0
.end method
