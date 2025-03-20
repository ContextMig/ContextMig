.class public Lcom/getbase/floatingactionbutton/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionButton$FAB_SIZE;
    }
.end annotation


# static fields
.field private static final HALF_TRANSPARENT_BLACK:I

.field private static final HALF_TRANSPARENT_WHITE:I

.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private mCircleSize:F

.field mColorNormal:I

.field mColorPressed:I

.field private mDrawableSize:I

.field private mIcon:I

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mSize:I

.field mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 42
    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->HALF_TRANSPARENT_WHITE:I

    .line 43
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->HALF_TRANSPARENT_BLACK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private createCircleDrawable(Landroid/graphics/RectF;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "circleRect"    # Landroid/graphics/RectF;
    .param p2, "color"    # I

    .prologue
    .line 216
    iget v3, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 220
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method private createFillDrawable(Landroid/graphics/RectF;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .param p1, "circleRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x0

    .line 209
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 210
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    invoke-direct {p0, p1, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(Landroid/graphics/RectF;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 211
    new-array v1, v3, [I

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    invoke-direct {p0, p1, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createCircleDrawable(Landroid/graphics/RectF;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 212
    return-object v0
.end method

.method private createStrokesDrawable(Landroid/graphics/RectF;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "circleRect"    # Landroid/graphics/RectF;

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 234
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v10, "canvas":Landroid/graphics/Canvas;
    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_stroke_width:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v15

    .line 237
    .local v15, "strokeWidth":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v15, v1

    .line 239
    .local v11, "halfStrokeWidth":F
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v11

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v11

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v11

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v11

    invoke-direct {v13, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 246
    .local v13, "outerStrokeRect":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v11

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v11

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v11

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v11

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 253
    .local v12, "innerStrokeRect":Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 254
    .local v14, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 256
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    const/high16 v1, -0x1000000

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    const v1, 0x3ca3d70a    # 0.02f

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opacityToAlpha(F)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 261
    invoke-virtual {v10, v13, v14}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 264
    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v12, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x3

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    sget v8, Lcom/getbase/floatingactionbutton/FloatingActionButton;->HALF_TRANSPARENT_BLACK:I

    aput v8, v6, v7

    const/4 v7, 0x2

    const/high16 v8, -0x1000000

    aput v8, v6, v7

    const/4 v7, 0x3

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 269
    const v1, 0x3d23d70a    # 0.04f

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opacityToAlpha(F)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 270
    invoke-virtual {v10, v12, v14}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 273
    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v12, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x3

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, -0x1

    aput v8, v6, v7

    const/4 v7, 0x1

    sget v8, Lcom/getbase/floatingactionbutton/FloatingActionButton;->HALF_TRANSPARENT_WHITE:I

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x3

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 278
    const v1, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->opacityToAlpha(F)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 279
    invoke-virtual {v10, v12, v14}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 281
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 264
    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 273
    :array_1
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private opacityToAlpha(F)I
    .locals 1
    .param p1, "opacity"    # F

    .prologue
    .line 229
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateCircleSize()V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-nez v0, :cond_0

    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_size_normal:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    .line 94
    return-void

    .line 93
    :cond_0
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_size_mini:I

    goto :goto_0
.end method

.method private updateDrawableSize()V
    .locals 3

    .prologue
    .line 89
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    .line 90
    return-void
.end method


# virtual methods
.method getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorNormal()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    return v0
.end method

.method getDimension(I)F
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 201
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 72
    sget-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "attr":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const v2, 0x1060013

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    .line 74
    const v1, 0x1060012

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    .line 75
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    .line 76
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    .line 77
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mTitle:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateCircleSize()V

    .line 81
    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    .line 82
    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    .line 83
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateDrawableSize()V

    .line 85
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 172
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mDrawableSize:I

    invoke-virtual {p0, v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setMeasuredDimension(II)V

    .line 173
    return-void
.end method

.method public setColorNormal(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 133
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    if-eq v0, p1, :cond_0

    .line 134
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorNormal:I

    .line 135
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 137
    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 1
    .param p1, "colorNormal"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorNormal(I)V

    .line 130
    return-void
.end method

.method public setColorPressed(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    if-eq v0, p1, :cond_0

    .line 152
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mColorPressed:I

    .line 153
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 155
    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 1
    .param p1, "colorPressed"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setColorPressed(I)V

    .line 148
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 115
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    if-eq v0, p1, :cond_0

    .line 116
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mIcon:I

    .line 117
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 119
    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 97
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use @FAB_SIZE constants only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-eq v0, p1, :cond_1

    .line 102
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    .line 103
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateCircleSize()V

    .line 104
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateDrawableSize()V

    .line 105
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->updateBackground()V

    .line 107
    :cond_1
    return-void
.end method

.method updateBackground()V
    .locals 13

    .prologue
    const/4 v1, 0x3

    .line 176
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    .line 177
    .local v6, "circleLeft":F
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    iget v10, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    sub-float v8, v4, v10

    .line 179
    .local v8, "circleTop":F
    new-instance v7, Landroid/graphics/RectF;

    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    add-float/2addr v4, v6

    iget v10, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    add-float/2addr v10, v8

    invoke-direct {v7, v6, v8, v4, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 181
    .local v7, "circleRect":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x4

    new-array v10, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mSize:I

    if-nez v4, :cond_0

    sget v4, Lcom/getbase/floatingactionbutton/R$drawable;->fab_bg_normal:I

    :goto_0
    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x1

    invoke-direct {p0, v7}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createFillDrawable(Landroid/graphics/RectF;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v4, 0x2

    invoke-direct {p0, v7}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->createStrokesDrawable(Landroid/graphics/RectF;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v10, v1

    invoke-direct {v0, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 189
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mCircleSize:F

    sget v10, Lcom/getbase/floatingactionbutton/R$dimen;->fab_icon_size:I

    invoke-virtual {p0, v10}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getDimension(I)F

    move-result v10

    sub-float/2addr v4, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v9, v4, v10

    .line 191
    .local v9, "iconOffset":F
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    add-float/2addr v4, v9

    float-to-int v2, v4

    .line 192
    .local v2, "iconInsetHorizontal":I
    add-float v4, v8, v9

    float-to-int v3, v4

    .line 193
    .local v3, "iconInsetTop":I
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowRadius:F

    iget v10, p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;->mShadowOffset:F

    add-float/2addr v4, v10

    add-float/2addr v4, v9

    float-to-int v5, v4

    .local v5, "iconInsetBottom":I
    move v4, v2

    .line 195
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 197
    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 198
    return-void

    .line 181
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "iconInsetHorizontal":I
    .end local v3    # "iconInsetTop":I
    .end local v5    # "iconInsetBottom":I
    .end local v9    # "iconOffset":F
    :cond_0
    sget v4, Lcom/getbase/floatingactionbutton/R$drawable;->fab_bg_mini:I

    goto :goto_0
.end method
