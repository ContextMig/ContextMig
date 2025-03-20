.class public Landroid/support/design/widget/bq;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/widget/LinearLayout;

.field private e:Z

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/content/res/ColorStateList;

.field private p:Landroid/content/res/ColorStateList;

.field private final q:Landroid/support/design/widget/l;

.field private r:Z

.field private s:Landroid/support/design/widget/bx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/bq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/bq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/support/design/widget/l;

    invoke-direct {v0, p0}, Landroid/support/design/widget/l;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-static {p1}, Landroid/support/design/widget/bw;->a(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Landroid/support/design/widget/bq;->setOrientation(I)V

    invoke-virtual {p0, v4}, Landroid/support/design/widget/bq;->setWillNotDraw(Z)V

    invoke-virtual {p0, v5}, Landroid/support/design/widget/bq;->setAddStatesFromChildren(Z)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->a(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->b(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->d(I)V

    sget-object v0, Landroid/support/design/k;->TextInputLayout:[I

    sget v1, Landroid/support/design/j;->Widget_Design_TextInputLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/design/k;->TextInputLayout_android_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/bq;->setHint(Ljava/lang/CharSequence;)V

    sget v1, Landroid/support/design/k;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/bq;->r:Z

    sget v1, Landroid/support/design/k;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/design/k;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/bq;->p:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/support/design/widget/bq;->o:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Landroid/support/design/k;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, v6, :cond_1

    sget v1, Landroid/support/design/k;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/bq;->setHintTextAppearance(I)V

    :cond_1
    sget v1, Landroid/support/design/k;->TextInputLayout_errorTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/bq;->g:I

    sget v1, Landroid/support/design/k;->TextInputLayout_errorEnabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    sget v2, Landroid/support/design/k;->TextInputLayout_counterEnabled:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    sget v3, Landroid/support/design/k;->TextInputLayout_counterMaxLength:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/bq;->setCounterMaxLength(I)V

    sget v3, Landroid/support/design/k;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/bq;->l:I

    sget v3, Landroid/support/design/k;->TextInputLayout_counterOverflowTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/bq;->m:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/bq;->setErrorEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/support/design/widget/bq;->setCounterEnabled(Z)V

    invoke-static {p0}, Landroid/support/v4/i/bt;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v5}, Landroid/support/v4/i/bt;->c(Landroid/view/View;I)V

    :cond_2
    new-instance v0, Landroid/support/design/widget/bv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/bv;-><init>(Landroid/support/design/widget/bq;Landroid/support/design/widget/br;)V

    invoke-static {p0, v0}, Landroid/support/v4/i/bt;->a(Landroid/view/View;Landroid/support/v4/i/a;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/bq;->c:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/bq;->c:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/bq;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v1}, Landroid/support/design/widget/l;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/support/design/widget/bq;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v1}, Landroid/support/design/widget/l;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object p1

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/i/bt;->k(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-static {v3}, Landroid/support/v4/i/bt;->l(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/i/bt;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method private a(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0}, Landroid/support/design/widget/l;->c()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/support/design/widget/cq;->a()Landroid/support/design/widget/bx;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    sget-object v1, Landroid/support/design/widget/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bx;->a(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bx;->a(I)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    new-instance v1, Landroid/support/design/widget/bu;

    invoke-direct {v1, p0}, Landroid/support/design/widget/bu;-><init>(Landroid/support/design/widget/bq;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bx;->a(Landroid/support/design/widget/bz;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    iget-object v1, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v1}, Landroid/support/design/widget/l;->c()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/bx;->a(FF)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    invoke-virtual {v0}, Landroid/support/design/widget/bx;->a()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/support/design/widget/bq;->n:Z

    iget v0, p0, Landroid/support/design/widget/bq;->k:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Landroid/support/design/widget/bq;->n:Z

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->n:Z

    if-eq v3, v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/bq;->b()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/design/widget/bq;->k:I

    if-le p1, v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/design/widget/bq;->n:Z

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->n:Z

    if-eq v3, v0, :cond_2

    iget-object v4, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->n:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/design/widget/bq;->m:I

    :goto_2
    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/i;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v2, p0, Landroid/support/design/widget/bq;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget v0, p0, Landroid/support/design/widget/bq;->l:I

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/design/widget/bq;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/bq;->a(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/bq;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/bq;->a(Z)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/bq;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;ILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/bq;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/bq;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getDrawableState()[I

    move-result-object v3

    const v4, 0x101009c

    invoke-static {v3, v4}, Landroid/support/design/widget/bq;->a([II)Z

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/bq;->o:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/bq;->p:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    iget-object v4, p0, Landroid/support/design/widget/bq;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/design/widget/l;->b(I)V

    iget-object v4, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    if-eqz v3, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/bq;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/support/design/widget/l;->a(I)V

    :cond_0
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    if-eqz v1, :cond_5

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/widget/bq;->b(Z)V

    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/support/design/widget/bq;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Landroid/support/design/widget/bq;->c(Z)V

    goto :goto_3
.end method

.method static synthetic a(Landroid/support/design/widget/bq;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->i:Z

    return v0
.end method

.method private static a([II)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/design/widget/bq;)Landroid/support/design/widget/l;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/i/bt;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/bq;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/i/bt;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/ao;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/ao;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    sget v2, Landroid/support/design/f;->abc_edit_text_material:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ao;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/i/bt;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    invoke-virtual {v0}, Landroid/support/design/widget/bx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    invoke-virtual {v0}, Landroid/support/design/widget/bx;->e()V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->r:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Landroid/support/design/widget/bq;->a(F)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->b(F)V

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/design/widget/bq;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    invoke-virtual {v0}, Landroid/support/design/widget/bx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->s:Landroid/support/design/widget/bx;

    invoke-virtual {v0}, Landroid/support/design/widget/bx;->e()V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->r:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Landroid/support/design/widget/bq;->a(F)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->b(F)V

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/design/widget/bq;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    iget-object v1, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->a(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    iget-object v1, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->a(F)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    iget-object v1, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->c(I)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    new-instance v1, Landroid/support/design/widget/br;

    invoke-direct {v1, p0}, Landroid/support/design/widget/br;-><init>(Landroid/support/design/widget/bq;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->o:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/bq;->o:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/bq;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/bq;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(I)V

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/bq;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/support/design/widget/bq;->a()V

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(Z)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->setEditText(Landroid/widget/EditText;)V

    const/4 v0, 0x0

    invoke-direct {p0, p3}, Landroid/support/design/widget/bq;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/l;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCounterMaxLength()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/bq;->k:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bq;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0}, Landroid/support/design/widget/l;->b()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    iget-object v3, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/l;->a(IIII)V

    iget-object v2, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/l;->b(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0}, Landroid/support/design/widget/l;->e()V

    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    invoke-static {p0}, Landroid/support/v4/i/bt;->z(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(Z)V

    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->i:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/bq;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800005

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/support/v4/i/bt;->d(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, v0}, Landroid/support/design/widget/bq;->a(Landroid/widget/TextView;ILandroid/widget/LinearLayout$LayoutParams;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(I)V

    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/bq;->i:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/bq;->j:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/bq;->k:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_1

    iput p1, p0, Landroid/support/design/widget/bq;->k:I

    :goto_0
    iget-boolean v0, p0, Landroid/support/design/widget/bq;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/bq;->k:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_1
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 6

    const-wide/16 v4, 0xc8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->e:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/design/widget/bq;->setErrorEnabled(Z)V

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/i/bt;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/i/bt;->q(Landroid/view/View;)Landroid/support/v4/i/di;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/i/di;->a(F)Landroid/support/v4/i/di;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/i/di;->a(J)Landroid/support/v4/i/di;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/di;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/i/di;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/bs;

    invoke-direct {v1, p0}, Landroid/support/design/widget/bs;-><init>(Landroid/support/design/widget/bq;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/i/di;->a(Landroid/support/v4/i/dz;)Landroid/support/v4/i/di;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/i/di;->c()V

    iput-boolean v2, p0, Landroid/support/design/widget/bq;->h:Z

    invoke-direct {p0}, Landroid/support/design/widget/bq;->b()V

    invoke-direct {p0, v2}, Landroid/support/design/widget/bq;->a(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/i/bt;->q(Landroid/view/View;)Landroid/support/v4/i/di;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/i/di;->a(F)Landroid/support/v4/i/di;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/i/di;->a(J)Landroid/support/v4/i/di;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/di;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/i/di;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/bt;

    invoke-direct {v1, p0}, Landroid/support/design/widget/bt;-><init>(Landroid/support/design/widget/bq;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/i/di;->a(Landroid/support/v4/i/dz;)Landroid/support/v4/i/di;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/i/di;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/bq;->h:Z

    invoke-direct {p0}, Landroid/support/design/widget/bq;->b()V

    goto :goto_0
.end method

.method public setErrorEnabled(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/design/widget/bq;->e:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/i/bt;->q(Landroid/view/View;)Landroid/support/v4/i/di;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/i/di;->b()V

    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/bq;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/bq;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/i/bt;->d(Landroid/view/View;I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1, v3, v0}, Landroid/support/design/widget/bq;->a(Landroid/widget/TextView;ILandroid/widget/LinearLayout$LayoutParams;)V

    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/bq;->e:Z

    :cond_1
    return-void

    :cond_2
    iput-boolean v3, p0, Landroid/support/design/widget/bq;->h:Z

    invoke-direct {p0}, Landroid/support/design/widget/bq;->b()V

    iget-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/bq;->f:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/bq;->b:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/l;->a(Ljava/lang/CharSequence;)V

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/bq;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/widget/bq;->r:Z

    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/l;->e(I)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0}, Landroid/support/design/widget/l;->g()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/bq;->p:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(Z)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/bq;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/design/widget/bq;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bq;->q:Landroid/support/design/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/l;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
