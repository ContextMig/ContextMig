.class public Lcom/batch/android/e/d/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/d/c$a;,
        Lcom/batch/android/e/d/c$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:F = 3.0f

.field private static final l:F = 9.0f


# instance fields
.field private A:F

.field private m:Lcom/batch/android/e/d/c$a;

.field private final n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/ColorFilter;

.field private r:Landroid/graphics/PorterDuffColorFilter;

.field private s:I

.field private final t:Landroid/graphics/Path;

.field private final u:Landroid/graphics/RectF;

.field private v:Landroid/graphics/Paint;

.field private w:Z

.field private x:Z

.field private y:Landroid/graphics/Path;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v0, Lcom/batch/android/e/d/c$a;

    sget-object v1, Lcom/batch/android/e/d/c$b;->a:Lcom/batch/android/e/d/c$b;

    invoke-direct {v0, v1, v2, v2}, Lcom/batch/android/e/d/c$a;-><init>(Lcom/batch/android/e/d/c$b;[I[F)V

    invoke-direct {p0, v0, v2}, Lcom/batch/android/e/d/c;-><init>(Lcom/batch/android/e/d/c$a;Landroid/content/res/Resources;)V

    .line 142
    return-void
.end method

.method private constructor <init>(Lcom/batch/android/e/d/c$a;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1309
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    .line 104
    const/16 v0, 0xff

    iput v0, p0, Lcom/batch/android/e/d/c;->s:I

    .line 106
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/d/c;->t:Landroid/graphics/Path;

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    .line 113
    iput-boolean v1, p0, Lcom/batch/android/e/d/c;->z:Z

    .line 1310
    iput-object p1, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    .line 1312
    invoke-direct {p0, p2}, Lcom/batch/android/e/d/c;->a(Landroid/content/res/Resources;)V

    .line 1313
    return-void
.end method

.method synthetic constructor <init>(Lcom/batch/android/e/d/c$a;Landroid/content/res/Resources;Lcom/batch/android/e/d/c$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/batch/android/e/d/c;-><init>(Lcom/batch/android/e/d/c$a;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e/d/c$b;[I[F)V
    .locals 2
    .param p2    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 149
    new-instance v0, Lcom/batch/android/e/d/c$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/batch/android/e/d/c$a;-><init>(Lcom/batch/android/e/d/c$b;[I[F)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/batch/android/e/d/c;-><init>(Lcom/batch/android/e/d/c$a;Landroid/content/res/Resources;)V

    .line 150
    return-void
.end method

.method private a(Lcom/batch/android/e/d/c$a;)Landroid/graphics/Path;
    .locals 11

    .prologue
    const/4 v7, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    .line 624
    iget-object v0, p0, Lcom/batch/android/e/d/c;->y:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/batch/android/e/d/c$a;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/batch/android/e/d/c;->z:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/c;->y:Landroid/graphics/Path;

    .line 672
    :goto_0
    return-object v0

    .line 625
    :cond_1
    iput-boolean v10, p0, Lcom/batch/android/e/d/c;->z:Z

    .line 627
    iget-boolean v0, p1, Lcom/batch/android/e/d/c$a;->D:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getLevel()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v0, v2

    .line 629
    :goto_1
    new-instance v4, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 631
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v5, v2, v3

    .line 632
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v6, v2, v3

    .line 634
    iget v2, p1, Lcom/batch/android/e/d/c$a;->w:I

    if-eq v2, v7, :cond_3

    iget v2, p1, Lcom/batch/android/e/d/c$a;->w:I

    int-to-float v2, v2

    .line 637
    :goto_2
    iget v3, p1, Lcom/batch/android/e/d/c$a;->v:I

    if-eq v3, v7, :cond_4

    iget v3, p1, Lcom/batch/android/e/d/c$a;->v:I

    int-to-float v3, v3

    .line 640
    :goto_3
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 641
    sub-float v4, v5, v3

    sub-float v8, v6, v3

    invoke-virtual {v7, v4, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 643
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 644
    neg-float v4, v2

    neg-float v9, v2

    invoke-virtual {v8, v4, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 646
    iget-object v4, p0, Lcom/batch/android/e/d/c;->y:Landroid/graphics/Path;

    if-nez v4, :cond_5

    .line 647
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/batch/android/e/d/c;->y:Landroid/graphics/Path;

    .line 652
    :goto_4
    iget-object v4, p0, Lcom/batch/android/e/d/c;->y:Landroid/graphics/Path;

    .line 655
    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    const/high16 v1, -0x3c4c0000    # -360.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    .line 656
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 658
    add-float v1, v5, v3

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 660
    add-float v1, v5, v3

    add-float/2addr v1, v2

    invoke-virtual {v4, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 662
    const/4 v1, 0x0

    invoke-virtual {v4, v8, v1, v0, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 664
    neg-float v1, v0

    invoke-virtual {v4, v7, v0, v1, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 665
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    :goto_5
    move-object v0, v4

    .line 672
    goto :goto_0

    :cond_2
    move v0, v1

    .line 627
    goto :goto_1

    .line 635
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p1, Lcom/batch/android/e/d/c$a;->u:F

    div-float/2addr v2, v3

    goto :goto_2

    .line 638
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v7, p1, Lcom/batch/android/e/d/c$a;->t:F

    div-float/2addr v3, v7

    goto :goto_3

    .line 649
    :cond_5
    iget-object v4, p0, Lcom/batch/android/e/d/c;->y:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    goto :goto_4

    .line 668
    :cond_6
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v8, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 669
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_5
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1316
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    .line 1318
    iget-object v1, v0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 1319
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getState()[I

    move-result-object v1

    .line 1320
    iget-object v2, v0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 1321
    iget-object v2, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1332
    :goto_0
    iget-object v1, v0, Lcom/batch/android/e/d/c$a;->q:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/batch/android/e/d/c;->o:Landroid/graphics/Rect;

    .line 1334
    iget v1, v0, Lcom/batch/android/e/d/c$a;->l:I

    if-ltz v1, :cond_1

    .line 1335
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    .line 1336
    iget-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1337
    iget-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    iget v2, v0, Lcom/batch/android/e/d/c$a;->l:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1339
    iget-object v1, v0, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 1340
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getState()[I

    move-result-object v1

    .line 1341
    iget-object v2, v0, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 1343
    iget-object v2, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1346
    :cond_0
    iget v1, v0, Lcom/batch/android/e/d/c$a;->m:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_1

    .line 1347
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, v0, Lcom/batch/android/e/d/c$a;->m:F

    aput v3, v2, v4

    iget v3, v0, Lcom/batch/android/e/d/c$a;->n:F

    aput v3, v2, v5

    invoke-direct {v1, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1349
    iget-object v2, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1355
    :cond_1
    iput-boolean v5, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 1357
    invoke-static {v0}, Lcom/batch/android/e/d/c$a;->a(Lcom/batch/android/e/d/c$a;)V

    .line 1358
    return-void

    .line 1322
    :cond_2
    iget-object v1, v0, Lcom/batch/android/e/d/c$a;->h:[I

    if-nez v1, :cond_3

    .line 1326
    iget-object v1, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1329
    :cond_3
    iget-object v1, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private b(IIFF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    .line 290
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 293
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    const/4 v0, 0x0

    .line 296
    cmpl-float v1, p3, v3

    if-lez v1, :cond_1

    .line 297
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    aput p4, v1, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 300
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 301
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 614
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    .line 615
    iget-boolean v1, p0, Lcom/batch/android/e/d/c;->z:Z

    if-eqz v1, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/batch/android/e/d/c;->e()Z

    .line 617
    iget-object v1, p0, Lcom/batch/android/e/d/c;->t:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 618
    iget-object v1, p0, Lcom/batch/android/e/d/c;->t:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/batch/android/e/d/c$a;->p:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->z:Z

    .line 621
    :cond_0
    return-void
.end method

.method static d(I)Z
    .locals 2

    .prologue
    .line 1299
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)I
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lcom/batch/android/e/d/c;->s:I

    iget v1, p0, Lcom/batch/android/e/d/c;->s:I

    shr-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 430
    mul-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private e()Z
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const v12, 0x461c4000    # 10000.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 851
    iget-boolean v0, p0, Lcom/batch/android/e/d/c;->w:Z

    if-eqz v0, :cond_1

    .line 852
    iput-boolean v9, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 854
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 857
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_12

    .line 858
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    .line 861
    :goto_0
    iget-object v10, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    .line 863
    iget-object v4, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget v7, v3, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v0

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float v0, v3, v0

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 866
    iget-object v5, v10, Lcom/batch/android/e/d/c$a;->h:[I

    .line 867
    if-eqz v5, :cond_1

    .line 868
    iget-object v7, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    .line 871
    iget v0, v10, Lcom/batch/android/e/d/c$a;->c:I

    if-nez v0, :cond_3

    .line 872
    iget-boolean v0, v10, Lcom/batch/android/e/d/c$a;->C:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getLevel()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v12

    .line 873
    :goto_1
    sget-object v1, Lcom/batch/android/e/d/c$1;->a:[I

    iget-object v2, v10, Lcom/batch/android/e/d/c$a;->e:Lcom/batch/android/e/d/c$b;

    invoke-virtual {v2}, Lcom/batch/android/e/d/c$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 903
    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    .line 904
    iget v3, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v0

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, v0

    .line 908
    :goto_2
    iget-object v11, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v6, v10, Lcom/batch/android/e/d/c$a;->k:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 973
    :cond_0
    :goto_3
    iget-object v0, v10, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v8

    :goto_4
    return v0

    :cond_2
    move v0, v2

    .line 872
    goto :goto_1

    .line 875
    :pswitch_0
    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    .line 876
    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    mul-float v4, v0, v1

    move v1, v3

    .line 877
    goto :goto_2

    .line 879
    :pswitch_1
    iget v1, v7, Landroid/graphics/RectF;->right:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    .line 880
    iget v3, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v0

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, v0

    .line 881
    goto :goto_2

    .line 883
    :pswitch_2
    iget v1, v7, Landroid/graphics/RectF;->right:F

    iget v4, v7, Landroid/graphics/RectF;->top:F

    .line 884
    iget v2, v7, Landroid/graphics/RectF;->left:F

    mul-float v3, v0, v2

    move v2, v4

    .line 885
    goto :goto_2

    .line 887
    :pswitch_3
    iget v1, v7, Landroid/graphics/RectF;->right:F

    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    .line 888
    iget v3, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v0

    iget v4, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v0

    .line 889
    goto :goto_2

    .line 891
    :pswitch_4
    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    .line 892
    iget v1, v7, Landroid/graphics/RectF;->top:F

    mul-float v4, v0, v1

    move v1, v3

    .line 893
    goto :goto_2

    .line 895
    :pswitch_5
    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    .line 896
    iget v3, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v0

    iget v4, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v0

    .line 897
    goto :goto_2

    .line 899
    :pswitch_6
    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v4, v7, Landroid/graphics/RectF;->top:F

    .line 900
    iget v2, v7, Landroid/graphics/RectF;->right:F

    mul-float v3, v0, v2

    move v2, v4

    .line 901
    goto :goto_2

    .line 910
    :cond_3
    iget v0, v10, Lcom/batch/android/e/d/c$a;->c:I

    if-ne v0, v8, :cond_8

    .line 911
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->right:F

    iget v3, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, v10, Lcom/batch/android/e/d/c$a;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 912
    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    iget v4, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v4, v10, Lcom/batch/android/e/d/c$a;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 914
    iget v6, v10, Lcom/batch/android/e/d/c$a;->A:F

    .line 915
    iget v0, v10, Lcom/batch/android/e/d/c$a;->B:I

    if-ne v0, v8, :cond_7

    .line 918
    iget v0, v10, Lcom/batch/android/e/d/c$a;->r:I

    if-ltz v0, :cond_5

    iget v0, v10, Lcom/batch/android/e/d/c$a;->r:I

    int-to-float v0, v0

    .line 919
    :goto_5
    iget v4, v10, Lcom/batch/android/e/d/c$a;->s:I

    if-ltz v4, :cond_6

    iget v4, v10, Lcom/batch/android/e/d/c$a;->s:I

    int-to-float v4, v4

    .line 920
    :goto_6
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v6

    .line 925
    :goto_7
    iget-boolean v4, v10, Lcom/batch/android/e/d/c$a;->C:Z

    if-eqz v4, :cond_4

    .line 926
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getLevel()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    mul-float/2addr v0, v4

    .line 929
    :cond_4
    iput v0, p0, Lcom/batch/android/e/d/c;->A:F

    .line 931
    cmpg-float v1, v0, v1

    if-gtz v1, :cond_10

    .line 934
    const v4, 0x3a83126f    # 0.001f

    .line 937
    :goto_8
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_3

    .line 918
    :cond_5
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_5

    .line 919
    :cond_6
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    goto :goto_6

    .line 921
    :cond_7
    iget v0, v10, Lcom/batch/android/e/d/c$a;->B:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_11

    .line 922
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v6

    goto :goto_7

    .line 939
    :cond_8
    iget v0, v10, Lcom/batch/android/e/d/c$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 940
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->right:F

    iget v3, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    iget v3, v10, Lcom/batch/android/e/d/c$a;->y:F

    mul-float/2addr v1, v3

    add-float v4, v0, v1

    .line 941
    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    iget v3, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    iget v3, v10, Lcom/batch/android/e/d/c$a;->z:F

    mul-float/2addr v1, v3

    add-float v6, v0, v1

    .line 944
    const/4 v1, 0x0

    .line 946
    iget-boolean v0, v10, Lcom/batch/android/e/d/c$a;->C:Z

    if-eqz v0, :cond_f

    .line 947
    iget-object v0, v10, Lcom/batch/android/e/d/c$a;->i:[I

    .line 948
    array-length v7, v5

    .line 949
    if-eqz v0, :cond_9

    array-length v1, v0

    add-int/lit8 v3, v7, 0x1

    if-eq v1, v3, :cond_a

    .line 950
    :cond_9
    add-int/lit8 v0, v7, 0x1

    new-array v0, v0, [I

    iput-object v0, v10, Lcom/batch/android/e/d/c$a;->i:[I

    .line 952
    :cond_a
    invoke-static {v5, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 953
    add-int/lit8 v1, v7, -0x1

    aget v1, v5, v1

    aput v1, v0, v7

    .line 955
    iget-object v1, v10, Lcom/batch/android/e/d/c$a;->j:[F

    .line 956
    add-int/lit8 v3, v7, -0x1

    int-to-float v3, v3

    div-float v5, v2, v3

    .line 957
    if-eqz v1, :cond_b

    array-length v3, v1

    add-int/lit8 v11, v7, 0x1

    if-eq v3, v11, :cond_c

    .line 958
    :cond_b
    add-int/lit8 v1, v7, 0x1

    new-array v1, v1, [F

    iput-object v1, v10, Lcom/batch/android/e/d/c$a;->j:[F

    .line 961
    :cond_c
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getLevel()I

    move-result v3

    int-to-float v3, v3

    div-float v11, v3, v12

    move v3, v9

    .line 962
    :goto_9
    if-ge v3, v7, :cond_d

    .line 963
    int-to-float v12, v3

    mul-float/2addr v12, v5

    mul-float/2addr v12, v11

    aput v12, v1, v3

    .line 962
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 965
    :cond_d
    aput v2, v1, v7

    .line 968
    :goto_a
    iget-object v2, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/SweepGradient;

    invoke-direct {v3, v4, v6, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_3

    :cond_e
    move v0, v9

    .line 978
    goto/16 :goto_4

    :cond_f
    move-object v0, v5

    goto :goto_a

    :cond_10
    move v4, v0

    goto/16 :goto_8

    :cond_11
    move v0, v6

    goto/16 :goto_7

    :cond_12
    move v0, v1

    goto/16 :goto_0

    .line 873
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private f()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 998
    iget-object v1, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iget v1, v1, Lcom/batch/android/e/d/c$a;->l:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    .line 999
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v1}, Lcom/batch/android/e/d/c;->d(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return v0

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v1}, Lcom/batch/android/e/d/c;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()F
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iget v0, v0, Lcom/batch/android/e/d/c$a;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e/d/c;->e()Z

    .line 406
    iget v0, p0, Lcom/batch/android/e/d/c;->A:F

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v0, p1}, Lcom/batch/android/e/d/c$a;->a(F)V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->z:Z

    .line 201
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 202
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/batch/android/e/d/c$a;->a(FF)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 373
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 374
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e/d/c;->y:Landroid/graphics/Path;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->z:Z

    .line 336
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v0, p1}, Lcom/batch/android/e/d/c$a;->a(I)V

    .line 337
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 338
    return-void
.end method

.method public a(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/batch/android/e/d/c;->a(IIFF)V

    .line 219
    return-void
.end method

.method public a(IIFF)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 254
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/batch/android/e/d/c$a;->a(ILandroid/content/res/ColorStateList;FF)V

    .line 255
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/batch/android/e/d/c;->b(IIFF)V

    .line 256
    return-void
.end method

.method public a(ILandroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/batch/android/e/d/c;->a(ILandroid/content/res/ColorStateList;FF)V

    .line 236
    return-void
.end method

.method public a(ILandroid/content/res/ColorStateList;FF)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/batch/android/e/d/c$a;->a(ILandroid/content/res/ColorStateList;FF)V

    .line 278
    if-nez p2, :cond_0

    .line 284
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/batch/android/e/d/c;->b(IIFF)V

    .line 285
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getState()[I

    move-result-object v1

    .line 282
    invoke-virtual {p2, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 706
    iget-object v1, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v1, p1}, Lcom/batch/android/e/d/c$a;->a(Landroid/content/res/ColorStateList;)V

    .line 708
    if-nez p1, :cond_0

    .line 714
    :goto_0
    iget-object v1, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 715
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 716
    return-void

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getState()[I

    move-result-object v1

    .line 712
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/batch/android/e/d/c$b;)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iput-object p1, v0, Lcom/batch/android/e/d/c$a;->e:Lcom/batch/android/e/d/c$b;

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 453
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 454
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iput-boolean p1, v0, Lcom/batch/android/e/d/c$a;->C:Z

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 425
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 426
    return-void
.end method

.method public a([F)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v0, p1}, Lcom/batch/android/e/d/c$a;->b([F)V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->z:Z

    .line 181
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 182
    return-void
.end method

.method public a([I[F)V
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 471
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v0, p1}, Lcom/batch/android/e/d/c$a;->a([I)V

    .line 472
    if-eqz p2, :cond_0

    .line 474
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v0, p2}, Lcom/batch/android/e/d/c$a;->a([F)V

    .line 476
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 477
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 478
    return-void
.end method

.method public b()Lcom/batch/android/e/d/c$b;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iget-object v0, v0, Lcom/batch/android/e/d/c$a;->e:Lcom/batch/android/e/d/c$b;

    return-object v0
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/batch/android/e/d/c$a;->a(FI)V

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 391
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 392
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v0, p1}, Lcom/batch/android/e/d/c$a;->b(I)V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 354
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 355
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/batch/android/e/d/c$a;->a(II)V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->z:Z

    .line 319
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 320
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->x:Z

    .line 1071
    return-void
.end method

.method public c(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 687
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/c$a;->a(Landroid/content/res/ColorStateList;)V

    .line 688
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 689
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 690
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/batch/android/e/d/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 490
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    move v7, v0

    .line 492
    :goto_1
    invoke-direct {p0, v11}, Lcom/batch/android/e/d/c;->e(I)I

    move-result v2

    .line 493
    invoke-direct {p0, v7}, Lcom/batch/android/e/d/c;->e(I)I

    move-result v3

    .line 495
    if-lez v3, :cond_7

    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    .line 496
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    move v10, v0

    .line 497
    :goto_2
    if-lez v2, :cond_8

    const/4 v0, 0x1

    .line 498
    :goto_3
    iget-object v12, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    .line 499
    iget-object v1, p0, Lcom/batch/android/e/d/c;->q:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/batch/android/e/d/c;->q:Landroid/graphics/ColorFilter;

    move-object v9, v1

    .line 506
    :goto_4
    if-eqz v10, :cond_a

    if-eqz v0, :cond_a

    iget v0, v12, Lcom/batch/android/e/d/c$a;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/16 v0, 0xff

    if-ge v3, v0, :cond_a

    iget v0, p0, Lcom/batch/android/e/d/c;->s:I

    const/16 v1, 0xff

    if-lt v0, v1, :cond_2

    if-eqz v9, :cond_a

    :cond_2
    const/4 v0, 0x1

    move v8, v0

    .line 516
    :goto_5
    if-eqz v8, :cond_b

    .line 517
    iget-object v0, p0, Lcom/batch/android/e/d/c;->v:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 518
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/d/c;->v:Landroid/graphics/Paint;

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/batch/android/e/d/c;->v:Landroid/graphics/Paint;

    iget-boolean v1, v12, Lcom/batch/android/e/d/c$a;->x:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 521
    iget-object v0, p0, Lcom/batch/android/e/d/c;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/batch/android/e/d/c;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 522
    iget-object v0, p0, Lcom/batch/android/e/d/c;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 524
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 525
    iget-object v1, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/batch/android/e/d/c;->v:Landroid/graphics/Paint;

    const/4 v6, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 531
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 532
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 550
    :cond_4
    :goto_6
    iget v0, v12, Lcom/batch/android/e/d/c$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 603
    :cond_5
    :goto_7
    if-eqz v8, :cond_11

    .line 604
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 490
    :cond_6
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_1

    .line 496
    :cond_7
    const/4 v0, 0x0

    move v10, v0

    goto/16 :goto_2

    .line 497
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 499
    :cond_9
    iget-object v1, p0, Lcom/batch/android/e/d/c;->r:Landroid/graphics/PorterDuffColorFilter;

    move-object v9, v1

    goto :goto_4

    .line 506
    :cond_a
    const/4 v0, 0x0

    move v8, v0

    goto :goto_5

    .line 537
    :cond_b
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 538
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    iget-boolean v1, v12, Lcom/batch/android/e/d/c$a;->x:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 539
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 540
    if-eqz v9, :cond_c

    iget-object v0, v12, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_c

    .line 541
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/batch/android/e/d/c;->s:I

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    :cond_c
    if-eqz v10, :cond_4

    .line 544
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 545
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    iget-boolean v1, v12, Lcom/batch/android/e/d/c$a;->x:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 546
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_6

    .line 552
    :pswitch_0
    iget-object v0, v12, Lcom/batch/android/e/d/c$a;->p:[F

    if-eqz v0, :cond_d

    .line 553
    invoke-direct {p0}, Lcom/batch/android/e/d/c;->d()V

    .line 554
    iget-object v0, p0, Lcom/batch/android/e/d/c;->t:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 555
    if-eqz v10, :cond_5

    .line 556
    iget-object v0, p0, Lcom/batch/android/e/d/c;->t:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 558
    :cond_d
    iget v0, v12, Lcom/batch/android/e/d/c$a;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 564
    iget v0, v12, Lcom/batch/android/e/d/c$a;->o:F

    iget-object v1, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    .line 565
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 564
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 566
    iget-object v1, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 567
    if-eqz v10, :cond_5

    .line 568
    iget-object v1, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 571
    :cond_e
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_f

    if-nez v9, :cond_f

    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    .line 572
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 573
    :cond_f
    iget-object v0, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 575
    :cond_10
    if-eqz v10, :cond_5

    .line 576
    iget-object v0, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 581
    :pswitch_1
    iget-object v0, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 582
    if-eqz v10, :cond_5

    .line 583
    iget-object v0, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 587
    :pswitch_2
    iget-object v0, p0, Lcom/batch/android/e/d/c;->u:Landroid/graphics/RectF;

    .line 588
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 589
    if-eqz v10, :cond_5

    .line 590
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 595
    :pswitch_3
    invoke-direct {p0, v12}, Lcom/batch/android/e/d/c;->a(Lcom/batch/android/e/d/c$a;)Landroid/graphics/Path;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 597
    if-eqz v10, :cond_5

    .line 598
    iget-object v1, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 606
    :cond_11
    iget-object v0, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 607
    if-eqz v10, :cond_0

    .line 608
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/batch/android/e/d/c;->s:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 770
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {v1}, Lcom/batch/android/e/d/c$a;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/batch/android/e/d/c;->q:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/batch/android/e/d/c$a;->a:I

    .line 994
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iget v0, v0, Lcom/batch/android/e/d/c$a;->s:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iget v0, v0, Lcom/batch/android/e/d/c$a;->r:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 823
    iget v0, p0, Lcom/batch/android/e/d/c;->s:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iget-boolean v0, v0, Lcom/batch/android/e/d/c$a;->E:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/batch/android/e/d/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 1012
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget-object v2, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    .line 1016
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1018
    iget-boolean v0, v2, Lcom/batch/android/e/d/c$a;->F:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/batch/android/e/d/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/batch/android/e/d/c;->s:I

    int-to-float v0, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v0, v4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1020
    iget v0, v2, Lcom/batch/android/e/d/c$a;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1022
    :pswitch_0
    iget-object v0, v2, Lcom/batch/android/e/d/c$a;->p:[F

    if-eqz v0, :cond_2

    .line 1023
    invoke-direct {p0}, Lcom/batch/android/e/d/c;->d()V

    .line 1024
    iget-object v0, p0, Lcom/batch/android/e/d/c;->t:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1018
    goto :goto_1

    .line 1029
    :cond_2
    iget v0, v2, Lcom/batch/android/e/d/c$a;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1031
    iget v0, v2, Lcom/batch/android/e/d/c$a;->o:F

    .line 1032
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    .line 1031
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1034
    :cond_3
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    .line 1037
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1042
    :pswitch_2
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    const v0, 0x38d1b717    # 1.0E-4f

    .line 1044
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 1045
    sub-float v2, v1, v0

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1046
    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1048
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_0

    .line 1042
    :cond_4
    iget-object v0, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    .line 1043
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    mul-float/2addr v0, v5

    goto :goto_2

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/batch/android/e/d/c;->o:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/batch/android/e/d/c;->o:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    .line 762
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    .line 763
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, v0, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    .line 764
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    .line 765
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 762
    :goto_0
    return v0

    .line 765
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/batch/android/e/d/c;->x:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1058
    new-instance v0, Lcom/batch/android/e/d/c$a;

    iget-object v1, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    invoke-direct {v0, v1}, Lcom/batch/android/e/d/c$a;-><init>(Lcom/batch/android/e/d/c$a;)V

    iput-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    .line 1059
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c;->a(Landroid/content/res/Resources;)V

    .line 1060
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->x:Z

    .line 1062
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 829
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e/d/c;->y:Landroid/graphics/Path;

    .line 831
    iput-boolean v1, p0, Lcom/batch/android/e/d/c;->z:Z

    .line 832
    iput-boolean v1, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 833
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    .line 837
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 838
    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->w:Z

    .line 839
    iput-boolean v0, p0, Lcom/batch/android/e/d/c;->z:Z

    .line 840
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 841
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 7
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 720
    .line 722
    iget-object v3, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    .line 723
    iget-object v0, v3, Lcom/batch/android/e/d/c$a;->f:Landroid/content/res/ColorStateList;

    .line 724
    if-eqz v0, :cond_3

    .line 725
    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 726
    iget-object v4, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    .line 727
    if-eq v4, v0, :cond_3

    .line 728
    iget-object v4, p0, Lcom/batch/android/e/d/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    .line 733
    :goto_0
    iget-object v4, p0, Lcom/batch/android/e/d/c;->p:Landroid/graphics/Paint;

    .line 734
    if-eqz v4, :cond_0

    .line 735
    iget-object v5, v3, Lcom/batch/android/e/d/c$a;->g:Landroid/content/res/ColorStateList;

    .line 736
    if-eqz v5, :cond_0

    .line 737
    invoke-virtual {v5, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 738
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 739
    if-eq v6, v5, :cond_0

    .line 740
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    .line 746
    :cond_0
    iget-object v4, v3, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/batch/android/e/d/c$a;->H:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_1

    move v0, v1

    .line 751
    :cond_1
    if-eqz v0, :cond_2

    .line 752
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 756
    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 775
    iget v0, p0, Lcom/batch/android/e/d/c;->s:I

    if-eq p1, v0, :cond_0

    .line 776
    iput p1, p0, Lcom/batch/android/e/d/c;->s:I

    .line 777
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 779
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/batch/android/e/d/c;->q:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_0

    .line 802
    iput-object p1, p0, Lcom/batch/android/e/d/c;->q:Landroid/graphics/ColorFilter;

    .line 803
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 805
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 788
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iget-boolean v0, v0, Lcom/batch/android/e/d/c$a;->x:Z

    if-eq p1, v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iput-boolean p1, v0, Lcom/batch/android/e/d/c$a;->x:Z

    .line 790
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 792
    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iput-object p1, v0, Lcom/batch/android/e/d/c$a;->G:Landroid/content/res/ColorStateList;

    .line 811
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 812
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/batch/android/e/d/c;->m:Lcom/batch/android/e/d/c$a;

    iput-object p1, v0, Lcom/batch/android/e/d/c$a;->H:Landroid/graphics/PorterDuff$Mode;

    .line 818
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->invalidateSelf()V

    .line 819
    return-void
.end method
