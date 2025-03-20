.class public Lfr/ganfra/materialspinner/MaterialSpinner;
.super Landroid/widget/Spinner;

# interfaces
.implements Lcom/b/a/am;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Ljava/lang/CharSequence;

.field private I:Ljava/lang/CharSequence;

.field private J:Ljava/lang/CharSequence;

.field private K:I

.field private L:Z

.field private M:Landroid/graphics/Typeface;

.field private N:Z

.field private O:F

.field private P:F

.field private Q:I

.field private R:F

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/text/TextPaint;

.field private d:Landroid/text/StaticLayout;

.field private e:Landroid/graphics/Path;

.field private f:[Landroid/graphics/Point;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/b/a/k;

.field private v:I

.field private w:I

.field private x:F

.field private y:F

.field private z:Lcom/b/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/ganfra/materialspinner/MaterialSpinner;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lfr/ganfra/materialspinner/MaterialSpinner;I)I
    .locals 0

    iput p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->t:I

    return p1
.end method

.method static synthetic a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->I:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/ganfra/materialspinner/f;->label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->M:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->M:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->D:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->C:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->e:Landroid/graphics/Path;

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->e:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    new-array v0, v3, [Landroid/graphics/Point;

    iput-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->f:[Landroid/graphics/Point;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->f:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(F)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    if-nez v0, :cond_0

    const-string v0, "currentNbErrorLines"

    new-array v1, v1, [F

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/b/a/k;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/b/a/k;

    move-result-object v0

    iput-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    :goto_0
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    invoke-virtual {v0}, Lcom/b/a/k;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    new-array v1, v1, [F

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/b/a/k;->a([F)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lfr/ganfra/materialspinner/MaterialSpinner;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->a()V

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->d()V

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->b()V

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->f()V

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->e()V

    invoke-direct {p0, p1}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Landroid/content/Context;)V

    sget v0, Lfr/ganfra/materialspinner/g;->my_background:I

    invoke-virtual {p0, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->setBackgroundResource(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->b:Landroid/graphics/Paint;

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->E:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->f:[Landroid/graphics/Point;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->f:[Landroid/graphics/Point;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->f:[Landroid/graphics/Point;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Point;->set(II)V

    int-to-float v3, p2

    iget v4, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->R:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3, p3}, Landroid/graphics/Point;->set(II)V

    int-to-float v3, p2

    iget v4, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->R:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, p3

    iget v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->R:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v3, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->e:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->e:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->e:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->e:Landroid/graphics/Path;

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->Q:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->G:I

    goto :goto_1
.end method

.method private b(F)I
    .locals 2

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->J:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->i:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->g:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->h:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->j:I

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->p:I

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->k:I

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->c()V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lfr/ganfra/materialspinner/d;->colorControlNormal:I

    aput v1, v0, v5

    sget v1, Lfr/ganfra/materialspinner/d;->colorAccent:I

    aput v1, v0, v6

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfr/ganfra/materialspinner/e;->error_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lfr/ganfra/materialspinner/h;->MaterialSpinner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_baseColor:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->D:I

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_highlightColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->E:I

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_errorColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->F:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfr/ganfra/materialspinner/e;->disabled_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->G:I

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->I:Ljava/lang/CharSequence;

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_floatingLabelText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->J:Ljava/lang/CharSequence;

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_floatingLabelColor:I

    iget v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->D:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->K:I

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_multiline:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->L:Z

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_nbErrorLines:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->w:I

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_alignLabels:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->N:Z

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_thickness:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->O:F

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_thickness_error:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->P:F

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_arrowColor:I

    iget v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->D:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->Q:I

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_arrowSize:I

    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, v2}, Lfr/ganfra/materialspinner/MaterialSpinner;->b(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->R:F

    sget v1, Lfr/ganfra/materialspinner/h;->MaterialSpinner_ms_typeface:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->M:Landroid/graphics/Typeface;

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->y:F

    iput v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->v:I

    iput-boolean v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->A:Z

    iput-boolean v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->B:Z

    const/4 v0, -0x1

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->t:I

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->w:I

    int-to-float v0, v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->x:F

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->x:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->l:I

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->j()V

    return-void
.end method

.method static synthetic c(Lfr/ganfra/materialspinner/MaterialSpinner;)Z
    .locals 1

    iget-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->B:Z

    return v0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/ganfra/materialspinner/f;->underline_top_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->m:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/ganfra/materialspinner/f;->underline_bottom_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->n:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/ganfra/materialspinner/f;->floating_label_top_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->p:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/ganfra/materialspinner/f;->floating_label_bottom_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->q:I

    iget-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->N:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/ganfra/materialspinner/f;->right_left_spinner_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->s:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/ganfra/materialspinner/f;->floating_label_inside_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->r:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/ganfra/materialspinner/f;->error_label_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->o:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lfr/ganfra/materialspinner/MaterialSpinner;)V
    .locals 0

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->g()V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method static synthetic e(Lfr/ganfra/materialspinner/MaterialSpinner;)V
    .locals 0

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->h()V

    return-void
.end method

.method static synthetic f(Lfr/ganfra/materialspinner/MaterialSpinner;)I
    .locals 1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->t:I

    return v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    if-nez v0, :cond_0

    const-string v0, "floatingLabelPercent"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Lcom/b/a/k;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/b/a/k;

    move-result-object v0

    iput-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    invoke-virtual {v0, p0}, Lcom/b/a/k;->a(Lcom/b/a/am;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic g(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->B:Z

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    invoke-virtual {v0}, Lcom/b/a/k;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    invoke-virtual {v0}, Lcom/b/a/k;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    invoke-virtual {v0}, Lcom/b/a/k;->a()V

    goto :goto_0
.end method

.method private getCurrentNbErrorLines()F
    .locals 1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->x:F

    return v0
.end method

.method private getErrorLabelPosX()I
    .locals 1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->v:I

    return v0
.end method

.method private getFloatingLabelPercent()F
    .locals 1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->y:F

    return v0
.end method

.method static synthetic h(Lfr/ganfra/materialspinner/MaterialSpinner;)I
    .locals 1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->D:I

    return v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->B:Z

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    invoke-virtual {v0}, Lcom/b/a/k;->i()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lfr/ganfra/materialspinner/MaterialSpinner;)I
    .locals 1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->G:I

    return v0
.end method

.method private i()V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    if-nez v1, :cond_0

    const-string v1, "errorLabelPosX"

    new-array v2, v2, [I

    aput v3, v2, v3

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, v2, v4

    invoke-static {p0, v1, v2}, Lcom/b/a/k;->a(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/b/a/k;

    move-result-object v0

    iput-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/b/a/k;->d(J)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/k;->a(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/lit16 v1, v1, 0x96

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/b/a/k;->a(J)Lcom/b/a/k;

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    invoke-virtual {v0, p0}, Lcom/b/a/k;->a(Lcom/b/a/am;)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/b/a/k;->a(I)V

    :goto_0
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    invoke-virtual {v0}, Lcom/b/a/k;->a()V

    return-void

    :cond_0
    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    new-array v2, v2, [I

    aput v3, v2, v3

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/b/a/k;->a([I)V

    goto :goto_0
.end method

.method private j()V
    .locals 5

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->g:I

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->i:I

    iget v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->k:I

    add-int/2addr v1, v2

    iget v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->h:I

    iget v3, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->j:I

    iget v4, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->l:I

    add-int/2addr v3, v4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/Spinner;->setPadding(IIII)V

    return-void
.end method

.method private k()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getWidth()I

    move-result v1

    iget v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->s:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    iget-object v3, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private l()I
    .locals 8

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->w:I

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    iget-object v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->d:Landroid/text/StaticLayout;

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->d:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->w:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private setCurrentNbErrorLines(F)V
    .locals 0

    iput p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->x:F

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->c()V

    return-void
.end method

.method private setErrorLabelPosX(I)V
    .locals 0

    iput p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->v:I

    return-void
.end method

.method private setFloatingLabelPercent(F)V
    .locals 0

    iput p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->y:F

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/af;)V
    .locals 0

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->invalidate()V

    return-void
.end method

.method public getBaseColor()I
    .locals 1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->D:I

    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getErrorColor()I
    .locals 1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->F:I

    return v0
.end method

.method public getFloatingLabelText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->J:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHighlightColor()I
    .locals 1

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->E:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->I:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/widget/Spinner;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v6, 0x0

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->m:I

    add-int v4, v0, v1

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->y:F

    iget v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->q:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v7, v0

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->P:F

    invoke-direct {p0, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->b(F)I

    move-result v0

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->o:I

    add-int/2addr v1, v4

    add-int/2addr v1, v0

    iget-object v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->b:Landroid/graphics/Paint;

    iget v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->F:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    iget v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->F:I

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-boolean v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->L:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->s:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    iget v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->o:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->d:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    int-to-float v1, v6

    int-to-float v2, v4

    int-to-float v3, v3

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->I:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->J:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->A:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->E:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->z:Lcom/b/a/k;

    invoke-virtual {v0}, Lcom/b/a/k;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->B:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->y:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    add-double/2addr v2, v4

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->C:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->y:F

    float-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_2
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->J:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->J:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->s:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    int-to-float v2, v7

    iget-object v3, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getWidth()I

    move-result v0

    iget v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->s:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getPaddingTop()I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lfr/ganfra/materialspinner/MaterialSpinner;->b(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Landroid/graphics/Canvas;II)V

    return-void

    :cond_4
    iget-object v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->s:I

    add-int/2addr v5, v6

    iget v8, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->v:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    int-to-float v8, v1

    iget-object v9, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    iget-object v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v2, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->s:I

    add-int/2addr v5, v6

    iget v8, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->v:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    int-to-float v1, v1

    iget-object v8, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->O:F

    invoke-direct {p0, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->b(F)I

    move-result v1

    iget-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->A:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->b:Landroid/graphics/Paint;

    iget v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->E:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->D:I

    :goto_3
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->G:I

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->K:I

    :goto_4
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->G:I

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->I:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->A:Z

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->A:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lfr/ganfra/materialspinner/MaterialSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    new-instance v0, Lfr/ganfra/materialspinner/b;

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lfr/ganfra/materialspinner/b;-><init>(Lfr/ganfra/materialspinner/MaterialSpinner;Landroid/widget/SpinnerAdapter;Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setBaseColor(I)V
    .locals 1

    iput p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->D:I

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->c:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    iput v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->C:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->A:Z

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method public setError(I)V
    .locals 1

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->H:Ljava/lang/CharSequence;

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->u:Lcom/b/a/k;

    invoke-virtual {v0}, Lcom/b/a/k;->b()V

    :cond_0
    iget-boolean v0, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->L:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->l()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(F)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->requestLayout()V

    return-void

    :cond_2
    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->i()V

    goto :goto_0
.end method

.method public setErrorColor(I)V
    .locals 0

    iput p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->F:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->invalidate()V

    return-void
.end method

.method public setFloatingLabelText(I)V
    .locals 1

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFloatingLabelText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->J:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->invalidate()V

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 0

    iput p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->E:I

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->invalidate()V

    return-void
.end method

.method public setHint(I)V
    .locals 1

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lfr/ganfra/materialspinner/MaterialSpinner;->I:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lfr/ganfra/materialspinner/MaterialSpinner;->invalidate()V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    new-instance v0, Lfr/ganfra/materialspinner/a;

    invoke-direct {v0, p0, p1}, Lfr/ganfra/materialspinner/a;-><init>(Lfr/ganfra/materialspinner/MaterialSpinner;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-super {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;->setPadding(IIII)V

    return-void
.end method
