.class public Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;
.super Ljava/lang/Object;
.source "MaterialShowcaseDrawer.java"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;


# instance fields
.field private backgroundColor:I

.field private final basicPaint:Landroid/graphics/Paint;

.field private final eraserPaint:Landroid/graphics/Paint;

.field private final radius:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->showcase_radius_material:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    .line 20
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 23
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->basicPaint:Landroid/graphics/Paint;

    .line 25
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
    .line 34
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    .local v0, "bufferCanvas":Landroid/graphics/Canvas;
    iget v1, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method public drawToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmapBuffer"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->basicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    return-void
.end method

.method public erase(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmapBuffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    iget v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 61
    return-void
.end method

.method public getBlockedRadius()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    return v0
.end method

.method public getShowcaseHeight()I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getShowcaseWidth()I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setBackgroundColour(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/github/amlcurran/showcaseview/MaterialShowcaseDrawer;->backgroundColor:I

    .line 56
    return-void
.end method

.method public setShowcaseColour(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 30
    return-void
.end method
