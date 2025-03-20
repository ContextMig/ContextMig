.class public Lchan/android/app/pocketnote/util/BitmapUtility;
.super Ljava/lang/Object;
.source "BitmapUtility.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/BitmapUtility;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x33bea1814bba7067L    # 1.9061642890949795E-59

    const-string v2, "chan/android/app/pocketnote/util/BitmapUtility"

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/BitmapUtility;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/BitmapUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 19
    new-instance v1, Ljava/lang/AssertionError;

    const-class v2, Lchan/android/app/pocketnote/util/BitmapUtility;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    aput-boolean v3, v0, v3

    throw v1
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/BitmapUtility;->$jacocoInit()[Z

    move-result-object v4

    .line 37
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .local v1, "height":I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 39
    .local v3, "width":I
    const/4 v2, 0x1

    .line 40
    .local v2, "inSampleSize":I
    if-le v1, p2, :cond_0

    const/4 v5, 0x2

    aput-boolean v7, v4, v5

    .line 41
    :goto_0
    div-int/lit8 v0, v1, 0x2

    .line 42
    .local v0, "halfHeight":I
    div-int/lit8 v5, v3, 0x2

    const/4 v6, 0x5

    aput-boolean v7, v4, v6

    .line 46
    :goto_1
    div-int v6, v0, v2

    if-gt v6, p2, :cond_2

    const/4 v5, 0x6

    aput-boolean v7, v4, v5

    .line 50
    .end local v0    # "halfHeight":I
    :goto_2
    const/16 v5, 0x9

    aput-boolean v7, v4, v5

    return v2

    .line 40
    :cond_0
    if-gt v3, p1, :cond_1

    const/4 v5, 0x3

    aput-boolean v7, v4, v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x4

    aput-boolean v7, v4, v5

    goto :goto_0

    .line 46
    .restart local v0    # "halfHeight":I
    :cond_2
    div-int v6, v5, v2

    if-gt v6, p1, :cond_3

    const/4 v5, 0x7

    aput-boolean v7, v4, v5

    goto :goto_2

    .line 47
    :cond_3
    mul-int/lit8 v2, v2, 0x2

    const/16 v6, 0x8

    aput-boolean v7, v4, v6

    goto :goto_1
.end method

.method public static decodeBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/BitmapUtility;->$jacocoInit()[Z

    move-result-object v11

    .line 70
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v0, 0xa

    aput-boolean v6, v11, v0

    .line 72
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0xb

    aput-boolean v6, v11, v2

    .line 73
    invoke-static {v0, v3, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/16 v2, 0xc

    aput-boolean v6, v11, v2

    .line 74
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/16 v0, 0xd

    aput-boolean v6, v11, v0

    .line 77
    invoke-static {v9, p1, p2}, Lchan/android/app/pocketnote/util/BitmapUtility;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 78
    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v0, 0xe

    aput-boolean v6, v11, v0

    .line 81
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v8, "instream":Ljava/io/FileInputStream;
    const/16 v0, 0xf

    aput-boolean v6, v11, v0

    .line 82
    invoke-static {v8, v3, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0x10

    aput-boolean v6, v11, v2

    .line 83
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    const/16 v2, 0x11

    aput-boolean v6, v11, v2

    .line 86
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x12

    aput-boolean v6, v11, v3

    .line 87
    const-string v3, "Orientation"

    invoke-virtual {v2, v3, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    .line 88
    .local v10, "orientation":I
    const/4 v7, 0x0

    .line 89
    .local v7, "angle":I
    const/4 v2, 0x6

    if-ne v10, v2, :cond_0

    .line 90
    const/16 v7, 0x5a

    const/16 v2, 0x13

    aput-boolean v6, v11, v2

    .line 96
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/16 v2, 0x17

    aput-boolean v6, v11, v2

    .line 97
    int-to-float v2, v7

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 v2, 0x18

    aput-boolean v6, v11, v2

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x19

    aput-boolean v6, v11, v1

    return-object v0

    .line 91
    :cond_0
    const/4 v2, 0x3

    if-ne v10, v2, :cond_1

    .line 92
    const/16 v7, 0xb4

    const/16 v2, 0x14

    aput-boolean v6, v11, v2

    goto :goto_0

    .line 93
    :cond_1
    const/16 v2, 0x8

    if-eq v10, v2, :cond_2

    const/16 v2, 0x15

    aput-boolean v6, v11, v2

    goto :goto_0

    .line 94
    :cond_2
    const/16 v7, 0x10e

    const/16 v2, 0x16

    aput-boolean v6, v11, v2

    goto :goto_0
.end method
