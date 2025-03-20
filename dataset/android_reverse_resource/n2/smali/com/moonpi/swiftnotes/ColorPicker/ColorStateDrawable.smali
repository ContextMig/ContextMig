.class public Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "ColorStateDrawable.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final PRESSED_STATE_MULTIPLIER:F = 0.7f


# instance fields
.field private mColor:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x70ef62566dba907L

    const-string v2, "com/moonpi/swiftnotes/ColorPicker/ColorStateDrawable"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 21
    iput p2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->mColor:I

    .line 22
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static getPressedColor(I)I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/16 v2, 0xb

    aput-boolean v4, v0, v2

    .line 49
    invoke-static {p0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 50
    aget v2, v1, v5

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    aput v2, v1, v5

    const/16 v2, 0xc

    aput-boolean v4, v0, v2

    .line 52
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    const/16 v2, 0xd

    aput-boolean v4, v0, v2

    return v1
.end method


# virtual methods
.method public isStateful()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    return v2
.end method

.method protected onStateChange([I)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->$jacocoInit()[Z

    move-result-object v3

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "pressedOrFocused":Z
    array-length v4, p1

    const/4 v2, 0x0

    aput-boolean v6, v3, v6

    :goto_0
    if-lt v2, v4, :cond_0

    const/4 v2, 0x2

    aput-boolean v6, v3, v2

    .line 35
    :goto_1
    if-eqz v0, :cond_3

    const/4 v2, 0x7

    aput-boolean v6, v3, v2

    .line 36
    iget v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->mColor:I

    invoke-static {v2}, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->getPressedColor(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v2, v4}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0x8

    aput-boolean v6, v3, v2

    .line 41
    :goto_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v2

    const/16 v4, 0xa

    aput-boolean v6, v3, v4

    return v2

    .line 28
    :cond_0
    aget v1, p1, v2

    .line 29
    .local v1, "state":I
    const v5, 0x10100a7

    if-ne v1, v5, :cond_1

    const/4 v2, 0x3

    aput-boolean v6, v3, v2

    .line 30
    :goto_3
    const/4 v0, 0x1

    .line 31
    const/4 v2, 0x5

    aput-boolean v6, v3, v2

    goto :goto_1

    .line 29
    :cond_1
    const v5, 0x101009c

    if-ne v1, v5, :cond_2

    const/4 v2, 0x4

    aput-boolean v6, v3, v2

    goto :goto_3

    .line 28
    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x6

    aput-boolean v6, v3, v5

    goto :goto_0

    .line 38
    .end local v1    # "state":I
    :cond_3
    iget v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;->mColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v2, v4}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v2, 0x9

    aput-boolean v6, v3, v2

    goto :goto_2
.end method
