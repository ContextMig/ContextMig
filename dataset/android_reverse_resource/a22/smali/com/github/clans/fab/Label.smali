.class public Lcom/github/clans/fab/Label;
.super Landroid/widget/TextView;


# static fields
.field private static final b:Landroid/graphics/Xfermode;


# instance fields
.field a:Landroid/view/GestureDetector;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/github/clans/fab/FloatingActionButton;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/animation/Animation;

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/clans/fab/Label;->b:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->h:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->s:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/Label$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/Label$2;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/Label;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->h:Z

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->s:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/Label$2;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/Label$2;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/Label;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/github/clans/fab/Label;->n:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/github/clans/fab/Label;->n:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/github/clans/fab/Label;->n:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/github/clans/fab/Label;->n:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/github/clans/fab/Label;->n:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/github/clans/fab/Label;->n:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/github/clans/fab/Label;->n:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/github/clans/fab/Label;->n:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v1
.end method

.method static synthetic a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->o:Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method static synthetic b(Lcom/github/clans/fab/Label;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/Label;->k:I

    return v0
.end method

.method static synthetic c(Lcom/github/clans/fab/Label;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/Label;->c:I

    return v0
.end method

.method static synthetic d(Lcom/github/clans/fab/Label;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/Label;->d:I

    return v0
.end method

.method static synthetic e(Lcom/github/clans/fab/Label;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/Label;->e:I

    return v0
.end method

.method static synthetic f(Lcom/github/clans/fab/Label;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/Label;->f:I

    return v0
.end method

.method static synthetic g(Lcom/github/clans/fab/Label;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/Label;->i:I

    return v0
.end method

.method static synthetic g()Landroid/graphics/Xfermode;
    .locals 1

    sget-object v0, Lcom/github/clans/fab/Label;->b:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method private h()I
    .locals 2

    iget v0, p0, Lcom/github/clans/fab/Label;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->i:I

    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/github/clans/fab/Label;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/Label;->j:I

    return v0
.end method

.method private i()I
    .locals 2

    iget v0, p0, Lcom/github/clans/fab/Label;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->j:I

    :cond_0
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic i(Lcom/github/clans/fab/Label;)I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/Label;->n:I

    return v0
.end method

.method private j()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v0, v7, [I

    const v2, 0x10100a7

    aput v2, v0, v6

    iget v2, p0, Lcom/github/clans/fab/Label;->l:I

    invoke-direct {p0, v2}, Lcom/github/clans/fab/Label;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v6, [I

    iget v2, p0, Lcom/github/clans/fab/Label;->k:I

    invoke-direct {p0, v2}, Lcom/github/clans/fab/Label;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/github/clans/fab/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v7, [[I

    new-array v4, v6, [I

    aput-object v4, v3, v6

    new-array v4, v7, [I

    iget v5, p0, Lcom/github/clans/fab/Label;->m:I

    aput v5, v4, v6

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/github/clans/fab/Label$1;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/Label$1;-><init>(Lcom/github/clans/fab/Label;)V

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/Label;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, v7}, Lcom/github/clans/fab/Label;->setClipToOutline(Z)V

    iput-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iput-object v1, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    goto :goto_0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->p:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/Label;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/github/clans/fab/Label;->p:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->q:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/Label;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/github/clans/fab/Label;->q:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/github/clans/fab/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/Label;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/Label;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setShadow(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowColor()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->f:I

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->c:I

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->d:I

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/Label;->e:I

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/clans/fab/Label;->h:Z

    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/Label;->c:I

    iget v1, p0, Lcom/github/clans/fab/Label;->d:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(III)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/Label;->k:I

    iput p2, p0, Lcom/github/clans/fab/Label;->l:I

    iput p3, p0, Lcom/github/clans/fab/Label;->m:I

    return-void
.end method

.method a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->k()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    return-void
.end method

.method b()I
    .locals 2

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/clans/fab/Label;->c:I

    iget v1, p0, Lcom/github/clans/fab/Label;->e:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->l()V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/Label;->setVisibility(I)V

    return-void
.end method

.method c()V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    new-instance v3, Lcom/github/clans/fab/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/github/clans/fab/d;-><init>(Lcom/github/clans/fab/Label;Lcom/github/clans/fab/Label$1;)V

    aput-object v3, v2, v5

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/github/clans/fab/Label;->c:I

    iget v3, p0, Lcom/github/clans/fab/Label;->d:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/github/clans/fab/Label;->c:I

    iget v4, p0, Lcom/github/clans/fab/Label;->e:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/github/clans/fab/Label;->c:I

    iget v5, p0, Lcom/github/clans/fab/Label;->d:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/github/clans/fab/Label;->c:I

    iget v6, p0, Lcom/github/clans/fab/Label;->e:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/github/clans/fab/Label;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method d()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v4, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/github/clans/fab/Label;->setPressed(Z)V

    return-void

    :cond_2
    invoke-static {}, Lcom/github/clans/fab/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method e()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v3, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/github/clans/fab/Label;->setPressed(Z)V

    return-void

    :cond_2
    invoke-static {}, Lcom/github/clans/fab/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->g:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    new-array v1, v3, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    invoke-virtual {v0, v4, v4}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/Label;->s:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->h()I

    move-result v0

    invoke-direct {p0}, Lcom/github/clans/fab/Label;->i()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/Label;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/Label;->o:Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/Label;->o:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/Label;->o:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/github/clans/fab/Label;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/github/clans/fab/Label;->e()V

    iget-object v0, p0, Lcom/github/clans/fab/Label;->o:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->g()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method setCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/Label;->n:I

    return-void
.end method

.method setFab(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/Label;->o:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0, p1}, Lcom/github/clans/fab/Label;->setShadow(Lcom/github/clans/fab/FloatingActionButton;)V

    return-void
.end method

.method setHandleVisibilityChanges(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->s:Z

    return-void
.end method

.method setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/Label;->q:Landroid/view/animation/Animation;

    return-void
.end method

.method setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/Label;->p:Landroid/view/animation/Animation;

    return-void
.end method

.method setShowShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->h:Z

    return-void
.end method

.method setUsingStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/Label;->r:Z

    return-void
.end method
