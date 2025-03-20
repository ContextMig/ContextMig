.class public final Lcom/appflood/f/g;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:Z

.field b:Landroid/content/Context;

.field c:Lcom/appflood/f/e;

.field d:Lcom/appflood/f/f;

.field e:[Lcom/appflood/f/i;

.field private f:F

.field private g:I

.field private h:Lcom/appflood/e/b;

.field private i:Lcom/appflood/e/b;

.field private j:Landroid/graphics/Paint;

.field private k:Lcom/appflood/e/b;

.field private l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZFI)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/appflood/f/g;->f:F

    new-instance v1, Lcom/appflood/e/b;

    iget v2, p0, Lcom/appflood/f/g;->g:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit16 v2, v2, 0xd4

    int-to-float v2, v2

    iget v3, p0, Lcom/appflood/f/g;->g:I

    shl-int/lit8 v3, v3, 0x1

    add-int/lit16 v3, v3, 0xa2

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v1, p0, Lcom/appflood/f/g;->h:Lcom/appflood/e/b;

    new-instance v1, Lcom/appflood/e/b;

    iget v2, p0, Lcom/appflood/f/g;->g:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit16 v2, v2, 0x1c0

    int-to-float v2, v2

    iget v3, p0, Lcom/appflood/f/g;->g:I

    shl-int/lit8 v3, v3, 0x1

    add-int/lit16 v3, v3, 0x127

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v1, p0, Lcom/appflood/f/g;->i:Lcom/appflood/e/b;

    iput-object v4, p0, Lcom/appflood/f/g;->c:Lcom/appflood/f/e;

    iput-object v4, p0, Lcom/appflood/f/g;->d:Lcom/appflood/f/f;

    iput-object v4, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/appflood/f/g;->j:Landroid/graphics/Paint;

    new-instance v1, Lcom/appflood/e/b;

    invoke-direct {v1}, Lcom/appflood/e/b;-><init>()V

    iput-object v1, p0, Lcom/appflood/f/g;->k:Lcom/appflood/e/b;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/appflood/f/g;->l:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/appflood/f/g;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/appflood/f/g;->a:Z

    iput p3, p0, Lcom/appflood/f/g;->f:F

    iput p4, p0, Lcom/appflood/f/g;->g:I

    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [Lcom/appflood/f/i;

    iput-object v1, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    iget-boolean v1, p0, Lcom/appflood/f/g;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/appflood/e/b;

    shl-int/lit8 v2, p4, 0x1

    add-int/lit16 v2, v2, 0xd4

    int-to-float v2, v2

    shl-int/lit8 v3, p4, 0x1

    add-int/lit16 v3, v3, 0xa2

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v1, p0, Lcom/appflood/f/g;->h:Lcom/appflood/e/b;

    new-instance v1, Lcom/appflood/e/b;

    shl-int/lit8 v2, p4, 0x1

    add-int/lit16 v2, v2, 0x1c0

    int-to-float v2, v2

    shl-int/lit8 v3, p4, 0x1

    add-int/lit16 v3, v3, 0x127

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v1, p0, Lcom/appflood/f/g;->i:Lcom/appflood/e/b;

    :goto_0
    iget-object v1, p0, Lcom/appflood/f/g;->h:Lcom/appflood/e/b;

    invoke-virtual {v1, p3}, Lcom/appflood/e/b;->a(F)V

    iget-object v1, p0, Lcom/appflood/f/g;->i:Lcom/appflood/e/b;

    invoke-virtual {v1, p3}, Lcom/appflood/e/b;->a(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/appflood/f/g;->setWillNotDraw(Z)V

    iget-boolean v1, p0, Lcom/appflood/f/g;->a:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/appflood/f/g;->a()V

    :goto_1
    sget-object v1, Lcom/appflood/c/d;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v1

    iget-object v1, v1, Lcom/appflood/c/g;->a:[Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v1

    iget-object v1, v1, Lcom/appflood/c/g;->a:[Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/appflood/f/g;->a([Lorg/json/JSONObject;)V

    :cond_1
    new-instance v1, Lcom/appflood/b/b;

    sget-object v2, Lcom/appflood/c/d;->l:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v2, Lcom/appflood/f/g$1;

    invoke-direct {v2, p0, v0}, Lcom/appflood/f/g$1;-><init>(Lcom/appflood/f/g;Z)V

    iput-object v2, v1, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v1}, Lcom/appflood/b/b;->e()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v1, Lcom/appflood/e/b;

    shl-int/lit8 v2, p4, 0x1

    add-int/lit16 v2, v2, 0xa9

    int-to-float v2, v2

    shl-int/lit8 v3, p4, 0x1

    add-int/lit16 v3, v3, 0x82

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v1, p0, Lcom/appflood/f/g;->h:Lcom/appflood/e/b;

    new-instance v1, Lcom/appflood/e/b;

    shl-int/lit8 v2, p4, 0x1

    add-int/lit16 v2, v2, 0x1e6

    int-to-float v2, v2

    shl-int/lit8 v3, p4, 0x1

    add-int/lit16 v3, v3, 0xfb

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/appflood/e/b;-><init>(FF)V

    iput-object v1, p0, Lcom/appflood/f/g;->i:Lcom/appflood/e/b;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/appflood/f/g;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private a()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/appflood/f/g;->g:I

    mul-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iget v2, p0, Lcom/appflood/f/g;->f:F

    mul-float/2addr v0, v2

    float-to-int v2, v0

    new-instance v0, Lcom/appflood/f/e;

    iget-object v3, p0, Lcom/appflood/f/g;->b:Landroid/content/Context;

    iget v4, p0, Lcom/appflood/f/g;->f:F

    iget v5, p0, Lcom/appflood/f/g;->g:I

    invoke-direct {v0, v3, v4, v5}, Lcom/appflood/f/e;-><init>(Landroid/content/Context;FI)V

    iput-object v0, p0, Lcom/appflood/f/g;->c:Lcom/appflood/f/e;

    iget-object v0, p0, Lcom/appflood/f/g;->c:Lcom/appflood/f/e;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/appflood/f/e;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/appflood/f/g;->i:Lcom/appflood/e/b;

    iget v3, v3, Lcom/appflood/e/b;->a:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/appflood/f/g;->i:Lcom/appflood/e/b;

    iget v4, v4, Lcom/appflood/e/b;->b:F

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/appflood/f/g;->c:Lcom/appflood/f/e;

    invoke-virtual {p0, v3, v0}, Lcom/appflood/f/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    new-array v3, v0, [Landroid/widget/RelativeLayout$LayoutParams;

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    new-instance v5, Lcom/appflood/f/i;

    iget-object v6, p0, Lcom/appflood/f/g;->b:Landroid/content/Context;

    iget v7, p0, Lcom/appflood/f/g;->f:F

    iget-boolean v8, p0, Lcom/appflood/f/g;->a:Z

    invoke-direct {v5, v6, v7, v8}, Lcom/appflood/f/i;-><init>(Landroid/content/Context;FZ)V

    aput-object v5, v4, v0

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/appflood/f/g;->h:Lcom/appflood/e/b;

    iget v5, v5, Lcom/appflood/e/b;->a:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/appflood/f/g;->h:Lcom/appflood/e/b;

    iget v6, v6, Lcom/appflood/e/b;->b:F

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    aget-object v0, v0, v1

    invoke-virtual {v0, v11}, Lcom/appflood/f/i;->setId(I)V

    aget-object v0, v3, v1

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    aget-object v0, v3, v1

    const/4 v4, 0x5

    invoke-virtual {v0, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    aget-object v0, v3, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    aget-object v0, v0, v9

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/appflood/f/i;->setId(I)V

    aget-object v0, v3, v9

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    aget-object v0, v3, v9

    invoke-virtual {v0, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    aget-object v0, v3, v12

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    aget-object v0, v3, v12

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    aget-object v0, v3, v10

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    aget-object v0, v3, v10

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    iget-object v0, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    aget-object v0, v0, v1

    aget-object v2, v3, v1

    invoke-virtual {p0, v0, v2}, Lcom/appflood/f/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private b()V
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x6

    const/4 v11, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/appflood/f/g;->g:I

    mul-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x15

    int-to-float v0, v0

    iget v2, p0, Lcom/appflood/f/g;->f:F

    mul-float/2addr v0, v2

    float-to-int v2, v0

    iget v0, p0, Lcom/appflood/f/g;->g:I

    rsub-int/lit8 v0, v0, 0x19

    int-to-float v0, v0

    iget v3, p0, Lcom/appflood/f/g;->f:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    iget v0, p0, Lcom/appflood/f/g;->g:I

    rsub-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    iget v4, p0, Lcom/appflood/f/g;->f:F

    mul-float/2addr v0, v4

    float-to-int v4, v0

    new-instance v0, Lcom/appflood/f/f;

    iget-object v5, p0, Lcom/appflood/f/g;->b:Landroid/content/Context;

    iget v6, p0, Lcom/appflood/f/g;->f:F

    iget v7, p0, Lcom/appflood/f/g;->g:I

    invoke-direct {v0, v5, v6, v7}, Lcom/appflood/f/f;-><init>(Landroid/content/Context;FI)V

    iput-object v0, p0, Lcom/appflood/f/g;->d:Lcom/appflood/f/f;

    iget-object v0, p0, Lcom/appflood/f/g;->d:Lcom/appflood/f/f;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/appflood/f/f;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/appflood/f/g;->i:Lcom/appflood/e/b;

    iget v5, v5, Lcom/appflood/e/b;->a:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/appflood/f/g;->i:Lcom/appflood/e/b;

    iget v6, v6, Lcom/appflood/e/b;->b:F

    float-to-int v6, v6

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/appflood/f/g;->d:Lcom/appflood/f/f;

    invoke-virtual {p0, v5, v0}, Lcom/appflood/f/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    new-array v5, v0, [Landroid/widget/RelativeLayout$LayoutParams;

    move v0, v1

    :goto_0
    iget-object v6, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    new-instance v7, Lcom/appflood/f/i;

    iget-object v8, p0, Lcom/appflood/f/g;->b:Landroid/content/Context;

    iget v9, p0, Lcom/appflood/f/g;->f:F

    iget-boolean v10, p0, Lcom/appflood/f/g;->a:Z

    invoke-direct {v7, v8, v9, v10}, Lcom/appflood/f/i;-><init>(Landroid/content/Context;FZ)V

    aput-object v7, v6, v0

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/appflood/f/g;->h:Lcom/appflood/e/b;

    iget v7, v7, Lcom/appflood/e/b;->a:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/appflood/f/g;->h:Lcom/appflood/e/b;

    iget v8, v8, Lcom/appflood/e/b;->b:F

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    aget-object v0, v0, v1

    invoke-virtual {v0, v12}, Lcom/appflood/f/i;->setId(I)V

    aget-object v0, v5, v1

    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    aget-object v0, v5, v1

    const/4 v6, 0x5

    invoke-virtual {v0, v14, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    aget-object v0, v5, v1

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    aget-object v0, v5, v1

    neg-int v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    aget-object v0, v0, v11

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/appflood/f/i;->setId(I)V

    aget-object v0, v5, v11

    invoke-virtual {v0, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    aget-object v0, v5, v11

    invoke-virtual {v0, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    aget-object v0, v5, v11

    neg-int v3, v2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    aget-object v0, v0, v13

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/appflood/f/i;->setId(I)V

    aget-object v0, v5, v13

    const/4 v3, 0x7

    invoke-virtual {v0, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    aget-object v0, v5, v13

    const/4 v3, 0x7

    invoke-virtual {v0, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    aget-object v0, v5, v13

    neg-int v3, v2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    aget-object v0, v5, v14

    const/16 v3, 0x8

    invoke-virtual {v0, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    aget-object v0, v5, v14

    const/4 v3, 0x7

    invoke-virtual {v0, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    aget-object v0, v5, v14

    neg-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget-object v0, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    aget-object v0, v0, v1

    aget-object v2, v5, v1

    invoke-virtual {p0, v0, v2}, Lcom/appflood/f/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method final a([Lorg/json/JSONObject;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/appflood/c/e;->a(ZI)V

    move v3, v2

    :goto_0
    const/4 v0, 0x5

    if-ge v3, v0, :cond_3

    aget-object v1, p1, v3

    const-string v0, "name"

    invoke-static {v1, v0, v8}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "desc"

    invoke-static {v1, v0, v8}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "click_url"

    const-string v6, ""

    invoke-static {v1, v0, v6}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "://"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0, v8}, Lcom/appflood/e/k;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v6, "back_url"

    const-string v7, ""

    invoke-static {v1, v6, v7}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_2

    iget-boolean v1, p0, Lcom/appflood/f/g;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appflood/f/g;->c:Lcom/appflood/f/e;

    :goto_1
    invoke-virtual {v1, v4, v5}, Lcom/appflood/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/appflood/f/g$3;

    invoke-direct {v4, p0, v6, v0}, Lcom/appflood/f/g$3;-><init>(Lcom/appflood/f/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/appflood/f/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/appflood/f/g;->d:Lcom/appflood/f/f;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    add-int/lit8 v7, v3, -0x1

    aget-object v1, v1, v7

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_4

    new-instance v1, Lcom/appflood/b/b;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lcom/appflood/b/b;-><init>(Lorg/json/JSONObject;)V

    new-instance v2, Lcom/appflood/f/g$2;

    invoke-direct {v2, p0, v0}, Lcom/appflood/f/g$2;-><init>(Lcom/appflood/f/g;I)V

    iput-object v2, v1, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v1}, Lcom/appflood/b/b;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/appflood/f/g;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appflood/f/g;->k:Lcom/appflood/e/b;

    const v1, 0x44348000    # 722.0f

    iput v1, v0, Lcom/appflood/e/b;->a:F

    const/high16 v1, 0x43030000    # 131.0f

    iput v1, v0, Lcom/appflood/e/b;->b:F

    iget-object v0, p0, Lcom/appflood/f/g;->k:Lcom/appflood/e/b;

    iget v1, p0, Lcom/appflood/f/g;->f:F

    invoke-virtual {v0, v1}, Lcom/appflood/e/b;->a(F)V

    iget-object v0, p0, Lcom/appflood/f/g;->l:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/appflood/f/g;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/appflood/f/g;->k:Lcom/appflood/e/b;

    iget v3, v3, Lcom/appflood/e/b;->b:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/appflood/f/g;->k:Lcom/appflood/e/b;

    iget v3, v3, Lcom/appflood/e/b;->a:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/appflood/f/g;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/appflood/f/g;->j:Landroid/graphics/Paint;

    const v1, -0x80703

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appflood/f/g;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/appflood/f/g;->l:Landroid/graphics/RectF;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/appflood/f/g;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/appflood/f/g;->j:Landroid/graphics/Paint;

    const v1, -0x3d321f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appflood/f/g;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/appflood/f/g;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v0, p0, Lcom/appflood/f/g;->l:Landroid/graphics/RectF;

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/appflood/f/g;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
