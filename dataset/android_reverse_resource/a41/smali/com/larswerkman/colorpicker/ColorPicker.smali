.class public Lcom/larswerkman/colorpicker/ColorPicker;
.super Landroid/view/View;
.source "ColorPicker.java"


# static fields
.field private static final COLORS:[I

.field private static final STATE_ANGLE:Ljava/lang/String; = "angle"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"


# instance fields
.field private mAngle:F

.field private mColorWheelPaint:Landroid/graphics/Paint;

.field private mColorWheelRadius:F

.field private mColorWheelRectangle:Landroid/graphics/RectF;

.field private mColorWheelStrokeWidth:I

.field private mPointerColor:Landroid/graphics/Paint;

.field private mPointerHaloPaint:Landroid/graphics/Paint;

.field private mPointerRadius:I

.field private mTranslationOffset:F

.field private mUserIsMovingPointer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 144
    iput-boolean v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 144
    iput-boolean v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 181
    invoke-direct {p0, p2, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 186
    invoke-direct {p0, p2, p3}, Lcom/larswerkman/colorpicker/ColorPicker;->init(Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method private static ave(IIF)I
    .locals 1
    .param p0, "s"    # I
    .param p1, "d"    # I
    .param p2, "p"    # F

    .prologue
    .line 69
    sub-int v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method private static calculateColor(F)I
    .locals 14
    .param p0, "angle"    # F

    .prologue
    .line 81
    float-to-double v10, p0

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v10, v12

    double-to-float v8, v10

    .line 82
    .local v8, "unit":F
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    .line 83
    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    .line 86
    :cond_0
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_1

    .line 87
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 104
    :goto_0
    return v9

    .line 89
    :cond_1
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_2

    .line 90
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    sget-object v10, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    goto :goto_0

    .line 93
    :cond_2
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float v6, v8, v9

    .line 94
    .local v6, "p":F
    float-to-int v5, v6

    .line 95
    .local v5, "i":I
    int-to-float v9, v5

    sub-float/2addr v6, v9

    .line 97
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    aget v2, v9, v5

    .line 98
    .local v2, "c0":I
    sget-object v9, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    add-int/lit8 v10, v5, 0x1

    aget v3, v9, v10

    .line 99
    .local v3, "c1":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-static {v9, v10, v6}, Lcom/larswerkman/colorpicker/ColorPicker;->ave(IIF)I

    move-result v0

    .line 100
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v9, v10, v6}, Lcom/larswerkman/colorpicker/ColorPicker;->ave(IIF)I

    move-result v7

    .line 101
    .local v7, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v9, v10, v6}, Lcom/larswerkman/colorpicker/ColorPicker;->ave(IIF)I

    move-result v4

    .line 102
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-static {v9, v10, v6}, Lcom/larswerkman/colorpicker/ColorPicker;->ave(IIF)I

    move-result v1

    .line 104
    .local v1, "b":I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    goto :goto_0
.end method

.method private calculatePointerPosition(F)[F
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 463
    iget v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:F

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 464
    .local v0, "x":F
    iget v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:F

    float-to-double v2, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 466
    .local v1, "y":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method private colorToAngle(I)F
    .locals 20
    .param p1, "color"    # I

    .prologue
    .line 285
    invoke-direct/range {p0 .. p1}, Lcom/larswerkman/colorpicker/ColorPicker;->normalizeColor(I)[I

    move-result-object v4

    .line 286
    .local v4, "colorInfo":[I
    const/16 v16, 0x0

    aget v11, v4, v16

    .line 287
    .local v11, "normColor":I
    const/16 v16, 0x1

    aget v5, v4, v16

    .line 288
    .local v5, "colorMask":I
    const/16 v16, 0x2

    aget v13, v4, v16

    .line 290
    .local v13, "shiftValue":I
    xor-int/lit8 v16, v5, -0x1

    and-int v2, v11, v16

    .line 293
    .local v2, "anchorColor":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v8, v0, :cond_6

    .line 294
    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    aget v16, v16, v8

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 295
    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    add-int/lit8 v17, v8, 0x1

    aget v10, v16, v17

    .line 298
    .local v10, "nextValue":I
    shr-int v16, v11, v13

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x406fe00000000000L    # 255.0

    div-double v6, v16, v18

    .line 302
    .local v6, "decimals":D
    and-int v16, v10, v5

    and-int v17, v2, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 304
    if-ge v10, v2, :cond_1

    .line 305
    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v16, v6

    .line 325
    .local v14, "value":D
    :goto_1
    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v16, v16, v14

    sget-object v18, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 326
    .local v3, "angle":F
    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    cmpl-double v16, v16, v18

    if-lez v16, :cond_0

    .line 327
    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 335
    .end local v3    # "angle":F
    .end local v6    # "decimals":D
    .end local v10    # "nextValue":I
    .end local v14    # "value":D
    :cond_0
    :goto_2
    return v3

    .line 307
    .restart local v6    # "decimals":D
    .restart local v10    # "nextValue":I
    :cond_1
    int-to-double v0, v8

    move-wide/from16 v16, v0

    add-double v14, v16, v6

    .restart local v14    # "value":D
    goto :goto_1

    .line 313
    .end local v14    # "value":D
    :cond_2
    if-nez v8, :cond_3

    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v9, v16, -0x1

    .line 314
    .local v9, "index":I
    :goto_3
    sget-object v16, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    add-int/lit8 v17, v9, -0x1

    aget v12, v16, v17

    .line 317
    .local v12, "prevValue":I
    if-ge v12, v2, :cond_4

    .line 318
    add-int/lit8 v16, v9, -0x1

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v16, v6

    .restart local v14    # "value":D
    goto :goto_1

    .end local v9    # "index":I
    .end local v12    # "prevValue":I
    .end local v14    # "value":D
    :cond_3
    move v9, v8

    .line 313
    goto :goto_3

    .line 320
    .restart local v9    # "index":I
    .restart local v12    # "prevValue":I
    :cond_4
    int-to-double v0, v9

    move-wide/from16 v16, v0

    sub-double v14, v16, v6

    .restart local v14    # "value":D
    goto :goto_1

    .line 293
    .end local v6    # "decimals":D
    .end local v9    # "index":I
    .end local v10    # "nextValue":I
    .end local v12    # "prevValue":I
    .end local v14    # "value":D
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 335
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static getRandomColor()I
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v0

    return v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 190
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/larswerkman/colorpicker/R$styleable;->ColorPicker:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/larswerkman/colorpicker/R$styleable;->ColorPicker_wheel_size:I

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelStrokeWidth:I

    .line 194
    sget v2, Lcom/larswerkman/colorpicker/R$styleable;->ColorPicker_pointer_size:I

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerRadius:I

    .line 196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    new-instance v1, Landroid/graphics/SweepGradient;

    sget-object v2, Lcom/larswerkman/colorpicker/ColorPicker;->COLORS:[I

    const/4 v3, 0x0

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 200
    .local v1, "s":Landroid/graphics/Shader;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    .line 201
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 202
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    .line 206
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 208
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 210
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    .line 211
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    const v2, -0x4036f025

    iput v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    .line 214
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-static {v3}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    return-void
.end method

.method private normalizeColor(I)[I
    .locals 14
    .param p1, "color"    # I

    .prologue
    const/4 v13, 0x0

    .line 361
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 362
    .local v10, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 363
    .local v2, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 365
    .local v0, "blue":I
    move v8, v10

    .line 366
    .local v8, "newRed":I
    move v7, v2

    .line 367
    .local v7, "newGreen":I
    move v6, v0

    .line 369
    .local v6, "newBlue":I
    const/4 v5, 0x0

    .line 370
    .local v5, "maskRed":I
    const/4 v4, 0x0

    .line 371
    .local v4, "maskGreen":I
    const/4 v3, 0x0

    .line 374
    .local v3, "maskBlue":I
    if-ge v10, v2, :cond_1

    if-ge v10, v0, :cond_1

    .line 376
    const/4 v8, 0x0

    .line 377
    if-le v2, v0, :cond_0

    .line 379
    const/4 v11, 0x0

    .line 380
    .local v11, "shiftValue":I
    const/16 v3, 0xff

    .line 381
    const/16 v7, 0xff

    .line 418
    :goto_0
    const/16 v12, 0xff

    invoke-static {v12, v8, v7, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 419
    .local v9, "normColor":I
    invoke-static {v13, v5, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 421
    .local v1, "colorMask":I
    const/4 v12, 0x3

    new-array v12, v12, [I

    aput v9, v12, v13

    const/4 v13, 0x1

    aput v1, v12, v13

    const/4 v13, 0x2

    aput v11, v12, v13

    return-object v12

    .line 384
    .end local v1    # "colorMask":I
    .end local v9    # "normColor":I
    .end local v11    # "shiftValue":I
    :cond_0
    const/16 v11, 0x8

    .line 385
    .restart local v11    # "shiftValue":I
    const/16 v4, 0xff

    .line 386
    const/16 v6, 0xff

    goto :goto_0

    .line 388
    .end local v11    # "shiftValue":I
    :cond_1
    if-ge v2, v10, :cond_3

    if-ge v2, v0, :cond_3

    .line 390
    const/4 v7, 0x0

    .line 391
    if-le v10, v0, :cond_2

    .line 393
    const/4 v11, 0x0

    .line 394
    .restart local v11    # "shiftValue":I
    const/16 v3, 0xff

    .line 395
    const/16 v8, 0xff

    goto :goto_0

    .line 398
    .end local v11    # "shiftValue":I
    :cond_2
    const/16 v11, 0x10

    .line 399
    .restart local v11    # "shiftValue":I
    const/16 v5, 0xff

    .line 400
    const/16 v6, 0xff

    goto :goto_0

    .line 404
    .end local v11    # "shiftValue":I
    :cond_3
    const/4 v6, 0x0

    .line 405
    if-le v10, v2, :cond_4

    .line 407
    const/16 v11, 0x8

    .line 408
    .restart local v11    # "shiftValue":I
    const/16 v4, 0xff

    .line 409
    const/16 v8, 0xff

    goto :goto_0

    .line 412
    .end local v11    # "shiftValue":I
    :cond_4
    const/16 v11, 0x10

    .line 413
    .restart local v11    # "shiftValue":I
    const/16 v5, 0xff

    .line 414
    const/16 v7, 0xff

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-static {v0}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 221
    iget v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    iget v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    iget-object v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 226
    iget v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->calculatePointerPosition(F)[F

    move-result-object v0

    .line 229
    .local v0, "pointerPosition":[F
    aget v1, v0, v5

    aget v2, v0, v6

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 232
    aget v1, v0, v5

    aget v2, v0, v6

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerRadius:I

    int-to-double v4, v3

    const-wide v6, 0x3ff3333333333333L    # 1.2

    div-double/2addr v4, v6

    double-to-float v3, v4

    iget-object v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 234
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lcom/larswerkman/colorpicker/ColorPicker;->getDefaultSize(II)I

    move-result v0

    .line 240
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, p1}, Lcom/larswerkman/colorpicker/ColorPicker;->getDefaultSize(II)I

    move-result v2

    .line 241
    .local v2, "width":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 242
    .local v1, "min":I
    invoke-virtual {p0, v1, v1}, Lcom/larswerkman/colorpicker/ColorPicker;->setMeasuredDimension(II)V

    .line 244
    int-to-float v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    .line 245
    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:F

    .line 247
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:F

    neg-float v4, v4

    iget v5, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:F

    neg-float v5, v5

    iget v6, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:F

    iget v7, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mColorWheelRadius:F

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 249
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 482
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 484
    .local v0, "savedState":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 485
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 487
    const-string v2, "angle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    .line 488
    iget-object v2, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-static {v3}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 471
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 473
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 474
    .local v0, "state":Landroid/os/Bundle;
    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 475
    const-string v2, "angle"

    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 477
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/high16 v5, 0x42400000    # 48.0f

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    sub-float v1, v3, v4

    .line 428
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mTranslationOffset:F

    sub-float v2, v3, v4

    .line 430
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 451
    :cond_0
    :goto_0
    return v8

    .line 433
    :pswitch_0
    iget v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-direct {p0, v3}, Lcom/larswerkman/colorpicker/ColorPicker;->calculatePointerPosition(F)[F

    move-result-object v0

    .line 434
    .local v0, "pointerPosition":[F
    aget v3, v0, v6

    sub-float/2addr v3, v5

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    aget v3, v0, v6

    add-float/2addr v3, v5

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    aget v3, v0, v8

    sub-float/2addr v3, v5

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    aget v3, v0, v8

    add-float/2addr v3, v5

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    .line 436
    iput-boolean v8, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    .line 437
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    .line 441
    .end local v0    # "pointerPosition":[F
    :pswitch_1
    iget-boolean v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    if-eqz v3, :cond_0

    .line 442
    float-to-double v4, v2

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    .line 443
    iget-object v3, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v4, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-static {v4}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    .line 448
    :pswitch_2
    iput-boolean v6, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mUserIsMovingPointer:Z

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/larswerkman/colorpicker/ColorPicker;->colorToAngle(I)F

    move-result v0

    iput v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    .line 271
    iget-object v0, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mPointerColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/colorpicker/ColorPicker;->mAngle:F

    invoke-static {v1}, Lcom/larswerkman/colorpicker/ColorPicker;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    invoke-virtual {p0}, Lcom/larswerkman/colorpicker/ColorPicker;->invalidate()V

    .line 273
    return-void
.end method
