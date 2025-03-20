.class public Lchan/android/app/pocketnote/util/view/CircularImageView;
.super Landroid/widget/ImageView;
.source "CircularImageView.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/CircularImageView;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1e896af94362f554L

    const-string v2, "chan/android/app/pocketnote/util/view/CircularImageView"

    const/16 v3, 0x1e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/CircularImageView;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/util/view/CircularImageView;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lchan/android/app/pocketnote/util/view/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/CircularImageView;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lchan/android/app/pocketnote/util/view/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/CircularImageView;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const v9, 0x3f333333    # 0.7f

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/CircularImageView;->$jacocoInit()[Z

    move-result-object v2

    .line 28
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, p1, :cond_0

    const/4 v3, 0x3

    aput-boolean v11, v2, v3

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v0, v3

    .line 30
    .local v0, "smallest":F
    int-to-float v3, p1

    div-float v3, v0, v3

    const/4 v4, 0x5

    aput-boolean v11, v2, v4

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v3

    float-to-int v3, v3

    invoke-static {p0, v4, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 32
    .local v1, "src":Landroid/graphics/Bitmap;
    const/4 v3, 0x6

    aput-boolean v11, v2, v3

    move-object p0, v1

    .line 36
    :goto_1
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/16 v4, 0x8

    aput-boolean v11, v2, v4

    .line 37
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v4, 0x9

    aput-boolean v11, v2, v4

    .line 38
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 v4, 0xa

    aput-boolean v11, v2, v4

    .line 39
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v4, 0xb

    aput-boolean v11, v2, v4

    .line 40
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0xc

    aput-boolean v11, v2, v4

    .line 41
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0xd

    aput-boolean v11, v2, v5

    .line 42
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v6, 0xe

    aput-boolean v11, v2, v6

    .line 43
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v7, 0xf

    aput-boolean v11, v2, v7

    .line 44
    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/16 v7, 0x10

    aput-boolean v11, v2, v7

    .line 45
    div-int/lit8 v7, p1, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v9

    div-int/lit8 v8, p1, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v9

    div-int/lit8 v9, p1, 0x2

    int-to-float v9, v9

    const v10, 0x3dcccccd    # 0.1f

    add-float/2addr v9, v10

    invoke-virtual {v5, v7, v8, v9, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v7, 0x11

    aput-boolean v11, v2, v7

    .line 46
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v7, 0x12

    aput-boolean v11, v2, v7

    .line 47
    invoke-virtual {v5, p0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 48
    const/16 v3, 0x13

    aput-boolean v11, v2, v3

    return-object v4

    .line 28
    .end local v0    # "smallest":F
    .end local v1    # "src":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, p1, :cond_1

    const/4 v3, 0x4

    aput-boolean v11, v2, v3

    goto/16 :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x7

    aput-boolean v11, v2, v3

    goto/16 :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/CircularImageView;->$jacocoInit()[Z

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/view/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 55
    const/16 v2, 0x14

    aput-boolean v5, v1, v2

    .line 66
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 57
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/view/CircularImageView;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x15

    aput-boolean v5, v1, v2

    .line 58
    :goto_1
    const/16 v2, 0x17

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/view/CircularImageView;->getHeight()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x16

    aput-boolean v5, v1, v2

    goto :goto_1

    .line 60
    :cond_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x18

    aput-boolean v5, v1, v3

    .line 61
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x19

    aput-boolean v5, v1, v3

    .line 62
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/view/CircularImageView;->getWidth()I

    move-result v3

    const/16 v4, 0x1a

    aput-boolean v5, v1, v4

    .line 63
    invoke-virtual {p0}, Lchan/android/app/pocketnote/util/view/CircularImageView;->getHeight()I

    const/16 v4, 0x1b

    aput-boolean v5, v1, v4

    .line 64
    invoke-static {v2, v3}, Lchan/android/app/pocketnote/util/view/CircularImageView;->getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x1c

    aput-boolean v5, v1, v3

    .line 65
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    const/16 v2, 0x1d

    aput-boolean v5, v1, v2

    goto :goto_0
.end method
