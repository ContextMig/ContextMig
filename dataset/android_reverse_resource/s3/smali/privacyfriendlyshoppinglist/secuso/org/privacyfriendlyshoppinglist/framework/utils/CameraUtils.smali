.class public abstract Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static imagesBeingSaved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7b53358399f04b3dL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->imagesBeingSaved:Ljava/util/List;

    const/16 v1, 0x24

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Landroid/graphics/Bitmap;Ljava/lang/String;I)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->lambda$saveBitmap$0(Landroid/graphics/Bitmap;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x25

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static declared-synchronized addImageToSet(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-class v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->imagesBeingSaved:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const/16 v2, 0x21

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getCameraInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 71
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/16 v3, 0xf

    aput-boolean v4, v1, v3

    .line 72
    const/4 v0, 0x0

    const/16 v3, 0x10

    aput-boolean v4, v1, v3

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/16 v3, 0x11

    aput-boolean v4, v1, v3

    .line 80
    :goto_1
    const/16 v3, 0x15

    aput-boolean v4, v1, v3

    return-object v2

    .line 72
    :cond_0
    const/16 v3, 0x12

    aput-boolean v4, v1, v3

    .line 74
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 75
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1

    .line 77
    const/16 v3, 0x13

    aput-boolean v4, v1, v3

    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x14

    aput-boolean v4, v1, v3

    goto :goto_0
.end method

.method public static getCameraOrientation()I
    .locals 5

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 65
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->getCameraInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 66
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    const/16 v3, 0xe

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    return v2
.end method

.method public static getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v7

    .line 26
    invoke-static {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->getRotationAdjustment(I)I

    move-result v0

    aput-boolean v6, v7, v6

    .line 27
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x2

    aput-boolean v6, v7, v2

    .line 28
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v0, 0x3

    aput-boolean v6, v7, v0

    .line 29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x4

    aput-boolean v6, v7, v1

    return-object v0
.end method

.method public static getRotationAdjustment(I)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "degrees":I
    packed-switch p0, :pswitch_data_0

    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    .line 51
    :goto_0
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->getCameraOrientation()I

    move-result v0

    .line 52
    .local v0, "cameraOrientation":I
    sub-int v3, v0, v1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0xa

    aput-boolean v5, v2, v4

    return v3

    .line 38
    .end local v0    # "cameraOrientation":I
    :pswitch_0
    const/4 v1, 0x0

    .line 39
    const/4 v3, 0x6

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 41
    :pswitch_1
    const/16 v1, 0x5a

    .line 42
    const/4 v3, 0x7

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 44
    :pswitch_2
    const/16 v1, 0xb4

    .line 45
    const/16 v3, 0x8

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 47
    :pswitch_3
    const/16 v1, 0x10e

    const/16 v3, 0x9

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized isSavingImage(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const-class v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 116
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->imagesBeingSaved:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    aput-boolean v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v2

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static synthetic lambda$saveBitmap$0(Landroid/graphics/Bitmap;Ljava/lang/String;I)Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-static {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->saveBitmapSync(Landroid/graphics/Bitmap;Ljava/lang/String;I)Ljava/lang/Void;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x23

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static declared-synchronized removeImageFromSet(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-class v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->imagesBeingSaved:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    const/16 v2, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    .line 4294967295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 57
    invoke-static {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils$$Lambda$1;->lambdaFactory$(Landroid/graphics/Bitmap;Ljava/lang/String;I)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v4, v1, v3

    .line 58
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0xc

    aput-boolean v4, v1, v3

    .line 59
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 60
    .local v0, "observable":Lrx/Observable;
    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method private static saveBitmapSync(Landroid/graphics/Bitmap;Ljava/lang/String;I)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 85
    invoke-static {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->addImageToSet(Ljava/lang/String;)V

    const/16 v0, 0x16

    aput-boolean v5, v1, v0

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x17

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 90
    invoke-static {p0, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0x18

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 91
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x19

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    .line 92
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v0, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 93
    invoke-static {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->removeImageFromSet(Ljava/lang/String;)V

    const/16 v0, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 94
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/16 v0, 0x1c

    aput-boolean v5, v1, v0

    .line 101
    :goto_0
    const/4 v0, 0x0

    const/16 v2, 0x1f

    aput-boolean v5, v1, v2

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    const/16 v2, 0x1d

    aput-boolean v5, v1, v2

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x1e

    aput-boolean v5, v1, v0

    goto :goto_0
.end method
