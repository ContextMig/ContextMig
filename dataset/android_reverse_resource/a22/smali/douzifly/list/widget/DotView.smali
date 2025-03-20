.class public final Ldouzifly/list/widget/DotView;
.super Landroid/view/View;


# instance fields
.field private a:Ldouzifly/list/widget/c;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Ldouzifly/list/widget/c;->a:Ldouzifly/list/widget/c;

    iput-object v0, p0, Ldouzifly/list/widget/DotView;->a:Ldouzifly/list/widget/c;

    const/16 v0, -0x100

    iput v0, p0, Ldouzifly/list/widget/DotView;->b:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ldouzifly/list/widget/DotView;->e:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    iget v0, p0, Ldouzifly/list/widget/DotView;->b:I

    return v0
.end method

.method public final getColorRes()I
    .locals 1

    iget v0, p0, Ldouzifly/list/widget/DotView;->c:I

    return v0
.end method

.method public final getDoneDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/DotView;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getMode()Ldouzifly/list/widget/c;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/DotView;->a:Ldouzifly/list/widget/c;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldouzifly/list/widget/DotView;->a:Ldouzifly/list/widget/c;

    sget-object v1, Ldouzifly/list/widget/c;->c:Ldouzifly/list/widget/c;

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    iget-object v1, p0, Ldouzifly/list/widget/DotView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getHeight()I

    move-result v7

    div-int v0, v7, v0

    sub-int v0, v6, v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Ldouzifly/list/widget/DotView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v0, Lb/g;->a:Lb/g;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ldouzifly/list/widget/DotView;->e:Landroid/graphics/Paint;

    iget v1, p0, Ldouzifly/list/widget/DotView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v2, v5

    iget-object v3, p0, Ldouzifly/list/widget/DotView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Ldouzifly/list/widget/DotView;->a:Ldouzifly/list/widget/c;

    sget-object v4, Ldouzifly/list/widget/c;->b:Ldouzifly/list/widget/c;

    invoke-static {v3, v4}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x40200000    # 2.5f

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    sub-float v3, v2, v3

    iget-object v4, p0, Ldouzifly/list/widget/DotView;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Ldouzifly/list/widget/DotView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Ldouzifly/list/widget/DotView;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Ldouzifly/list/widget/DotView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Ldouzifly/list/widget/DotView;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Ldouzifly/list/widget/DotView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Ldouzifly/list/widget/DotView;->b:I

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->invalidate()V

    return-void
.end method

.method public final setColorRes(I)V
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ldouzifly/list/widget/DotView;->setColor(I)V

    return-void
.end method

.method public final setDoneDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/DotView;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setMode(Ldouzifly/list/widget/c;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/widget/DotView;->a:Ldouzifly/list/widget/c;

    invoke-virtual {p0}, Ldouzifly/list/widget/DotView;->invalidate()V

    return-void
.end method
