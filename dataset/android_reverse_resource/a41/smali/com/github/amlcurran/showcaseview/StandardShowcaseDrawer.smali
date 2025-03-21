.class Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;
.super Ljava/lang/Object;
.source "StandardShowcaseDrawer.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;


# instance fields
.field protected backgroundColour:I

.field private final basicPaint:Landroid/graphics/Paint;

.field protected final eraserPaint:Landroid/graphics/Paint;

.field protected final showcaseDrawable:Landroid/graphics/drawable/Drawable;

.field private final showcaseRadius:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 38
    .local v0, "xfermode":Landroid/graphics/PorterDuffXfermode;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 41
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->basicPaint:Landroid/graphics/Paint;

    .line 44
    sget v1, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseRadius:F

    .line 45
    sget v1, Lcom/github/amlcurran/showcaseview/R$drawable;->cling_bleached:I

    invoke-static {p1, v1, p2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    return-void
.end method


# virtual methods
.method public drawShowcase(Landroid/graphics/Bitmap;FFF)V
    .locals 8
    .param p1, "buffer"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "scaleMultiplier"    # F

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    .local v0, "bufferCanvas":Landroid/graphics/Canvas;
    iget v5, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseRadius:F

    iget-object v6, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->getShowcaseWidth()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 58
    .local v2, "halfW":I
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->getShowcaseHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 59
    .local v1, "halfH":I
    int-to-float v5, v2

    sub-float v5, p2, v5

    float-to-int v3, v5

    .line 60
    .local v3, "left":I
    int-to-float v5, v1

    sub-float v5, p3, v5

    float-to-int v4, v5

    .line 61
    .local v4, "top":I
    iget-object v5, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->getShowcaseWidth()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->getShowcaseHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object v5, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    return-void
.end method

.method public drawToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmapBuffer"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->basicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    return-void
.end method

.method public erase(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmapBuffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    iget v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->backgroundColour:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 90
    return-void
.end method

.method public getBlockedRadius()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseRadius:F

    return v0
.end method

.method public getShowcaseHeight()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShowcaseWidth()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public setBackgroundColour(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->backgroundColour:I

    .line 85
    return-void
.end method

.method public setShowcaseColour(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;->showcaseDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 51
    return-void
.end method
