.class Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;
.super Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;
.source "NewShowcaseDrawer.java"


# static fields
.field private static final ALPHA_60_PERCENT:I = 0x99


# instance fields
.field private final innerRadius:F

.field private final outerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 31
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius_outer:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->outerRadius:F

    .line 32
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius_inner:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->innerRadius:F

    .line 33
    return-void
.end method


# virtual methods
.method public drawShowcase(Landroid/graphics/Bitmap;FFF)V
    .locals 3
    .param p1, "buffer"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "scaleMultiplier"    # F

    .prologue
    .line 42
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    .local v0, "bufferCanvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    iget v1, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->outerRadius:F

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    iget v1, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->innerRadius:F

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method public getBlockedRadius()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->innerRadius:F

    return v0
.end method

.method public getShowcaseHeight()I
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->outerRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getShowcaseWidth()I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->outerRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setShowcaseColour(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    return-void
.end method
