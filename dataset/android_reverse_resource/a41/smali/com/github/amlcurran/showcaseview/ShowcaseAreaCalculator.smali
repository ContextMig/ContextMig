.class Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;
.super Ljava/lang/Object;
.source "ShowcaseAreaCalculator.java"


# instance fields
.field private final mShowcaseRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public calculateShowcaseRect(FFLcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "showcaseDrawer"    # Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    .prologue
    .line 37
    float-to-int v0, p1

    .local v0, "cx":I
    float-to-int v1, p2

    .line 38
    .local v1, "cy":I
    invoke-interface {p3}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->getShowcaseWidth()I

    move-result v3

    .line 39
    .local v3, "dw":I
    invoke-interface {p3}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->getShowcaseHeight()I

    move-result v2

    .line 41
    .local v2, "dh":I
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v0, v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    if-ne v4, v5, :cond_0

    .line 42
    const/4 v4, 0x0

    .line 52
    :goto_0
    return v4

    .line 45
    :cond_0
    const-string v4, "ShowcaseView"

    const-string v5, "Recalculated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v0, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 48
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 49
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 50
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 52
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getShowcaseRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->mShowcaseRect:Landroid/graphics/Rect;

    return-object v0
.end method
