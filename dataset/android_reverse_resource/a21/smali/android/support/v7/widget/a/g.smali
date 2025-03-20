.class public abstract Landroid/support/v7/widget/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v7/widget/a/n;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/a/h;

    invoke-direct {v0}, Landroid/support/v7/widget/a/h;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v7/widget/a/i;

    invoke-direct {v0}, Landroid/support/v7/widget/a/i;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->c:Landroid/view/animation/Interpolator;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/a/r;

    invoke-direct {v0}, Landroid/support/v7/widget/a/r;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v7/widget/a/q;

    invoke-direct {v0}, Landroid/support/v7/widget/a/q;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v7/widget/a/p;

    invoke-direct {v0}, Landroid/support/v7/widget/a/p;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/a/g;->d:I

    return-void
.end method

.method public static a(II)I
    .locals 5

    const v4, 0xc0c0c

    and-int v0, p0, v4

    if-nez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p0

    if-nez p1, :cond_1

    shl-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0

    :cond_1
    shl-int/lit8 v2, v0, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/ch;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/a/g;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/d/b;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/g;->d:I

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/a/g;->d:I

    return v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Ljava/util/List;IFF)V
    .locals 11

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_0

    invoke-interface {p4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    invoke-virtual {v0}, Landroid/support/v7/widget/a/k;->c()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v3, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    iget v4, v0, Landroid/support/v7/widget/a/k;->k:F

    iget v5, v0, Landroid/support/v7/widget/a/k;->l:F

    iget v6, v0, Landroid/support/v7/widget/a/k;->i:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;FFIZ)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;FFIZ)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/g;Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Ljava/util/List;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/support/v7/widget/a/g;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Ljava/util/List;IFF)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/a/g;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/a/g;->d(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)Z

    move-result v0

    return v0
.end method

.method public static b(II)I
    .locals 2

    const/4 v0, 0x0

    or-int v1, p1, p0

    invoke-static {v0, v1}, Landroid/support/v7/widget/a/g;->c(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, p1}, Landroid/support/v7/widget/a/g;->c(II)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Landroid/support/v7/widget/a/g;->c(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Ljava/util/List;IFF)V
    .locals 11

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_0

    invoke-interface {p4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v3, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    iget v4, v0, Landroid/support/v7/widget/a/k;->k:F

    iget v5, v0, Landroid/support/v7/widget/a/k;->l:F

    iget v6, v0, Landroid/support/v7/widget/a/k;->i:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;FFIZ)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;FFIZ)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v0, v9, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    invoke-static {v0}, Landroid/support/v7/widget/a/k;->a(Landroid/support/v7/widget/a/k;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/support/v7/widget/a/k;->j:Z

    if-nez v3, :cond_2

    invoke-interface {p4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/do;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/do;->a(Z)V

    move v0, v1

    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/support/v7/widget/a/k;->a(Landroid/support/v7/widget/a/k;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/support/v7/widget/ch;->invalidate()V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method static synthetic b(Landroid/support/v7/widget/a/g;Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Ljava/util/List;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/support/v7/widget/a/g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Ljava/util/List;IFF)V

    return-void
.end method

.method public static c(II)I
    .locals 1

    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method private d(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)I

    move-result v0

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/do;)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public a(Landroid/support/v7/widget/ch;IIIJ)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ch;)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v3, p3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    int-to-float v4, p2

    div-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-int/2addr v1, v3

    int-to-float v1, v1

    sget-object v3, Landroid/support/v7/widget/a/g;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-wide/16 v2, 0x7d0

    cmp-long v2, p5, v2

    if-lez v2, :cond_1

    :goto_0
    int-to-float v1, v1

    sget-object v2, Landroid/support/v7/widget/a/g;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_0

    if-lez p3, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    long-to-float v0, p5

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public abstract a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)I
.end method

.method public a(Landroid/support/v7/widget/ch;IFF)J
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getItemAnimator()Landroid/support/v7/widget/cs;

    move-result-object v0

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_0

    const-wide/16 v0, 0xc8

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0xfa

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/cs;->d()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/cs;->f()J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/do;Ljava/util/List;II)Landroid/support/v7/widget/do;
    .locals 13

    iget-object v0, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v5, p3, v0

    iget-object v0, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v6, p4, v0

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v7, p3, v0

    iget-object v0, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v8, p4, v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v9, :cond_0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/do;

    if-lez v7, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v5

    if-gez v3, :cond_1

    iget-object v10, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget-object v11, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    if-le v10, v11, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v1, :cond_1

    move v2, v3

    move-object v3, v0

    :goto_1
    if-gez v7, :cond_4

    iget-object v1, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v1, p3

    if-lez v1, :cond_4

    iget-object v10, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    if-ge v10, v11, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_4

    move-object v3, v0

    :goto_2
    if-gez v8, :cond_3

    iget-object v2, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, p4

    if-lez v2, :cond_3

    iget-object v10, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_3

    move-object v3, v0

    :goto_3
    if-lez v8, :cond_2

    iget-object v1, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v6

    if-gez v1, :cond_2

    iget-object v10, v0, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget-object v11, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_2

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    :cond_0
    return-object v2

    :cond_1
    move-object v3, v2

    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v2

    move-object v1, v3

    goto :goto_4

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;FFIZ)V
    .locals 8

    sget-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    iget-object v3, p3, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/a/n;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;ILandroid/support/v7/widget/do;III)V
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getLayoutManager()Landroid/support/v7/widget/cy;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/a/m;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v7/widget/a/m;

    iget-object v1, p2, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    iget-object v2, p4, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-interface {v0, v1, v2, p6, p7}, Landroid/support/v7/widget/a/m;->a(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/cy;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p4, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cy;->g(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getPaddingLeft()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-virtual {p1, p5}, Landroid/support/v7/widget/ch;->a(I)V

    :cond_2
    iget-object v1, p4, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cy;->i(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_3

    invoke-virtual {p1, p5}, Landroid/support/v7/widget/ch;->a(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/cy;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p4, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cy;->h(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getPaddingTop()I

    move-result v2

    if-gt v1, v2, :cond_4

    invoke-virtual {p1, p5}, Landroid/support/v7/widget/ch;->a(I)V

    :cond_4
    iget-object v1, p4, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cy;->j(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/ch;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p5}, Landroid/support/v7/widget/ch;->a(I)V

    goto :goto_0
.end method

.method public abstract a(Landroid/support/v7/widget/do;I)V
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Landroid/support/v7/widget/do;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/support/v7/widget/do;)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method final b(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/i/bt;->h(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/a/g;->d(II)I

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;FFIZ)V
    .locals 8

    sget-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    iget-object v3, p3, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/a/n;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/ch;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/do;I)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    iget-object v1, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/a/n;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract b(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;Landroid/support/v7/widget/do;)Z
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/do;)V
    .locals 2

    sget-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    iget-object v1, p2, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/a/n;->a(Landroid/view/View;)V

    return-void
.end method

.method public d(II)I
    .locals 5

    const v4, 0x303030

    and-int v0, p1, v4

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p1

    if-nez p2, :cond_1

    shr-int/lit8 v0, v0, 0x2

    or-int p1, v1, v0

    goto :goto_0

    :cond_1
    shr-int/lit8 v2, v0, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x2

    or-int p1, v1, v0

    goto :goto_0
.end method
