.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final FLASH_OPTIONS_AVAILABLE:I = 0x3

.field public static final THUMBNAIL_KEY:Ljava/lang/String; = "thumbnail"

.field private static final THUMBNAIL_SIZE:I = 0xc8


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private cameraOrientation:I

.field private cameraPreview:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraPreview;

.field private captureButton:Landroid/support/design/widget/FloatingActionButton;

.field private currentFlashIconIndex:I

.field private flashButton:Landroid/support/design/widget/FloatingActionButton;

.field private flashIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imageData:[B

.field private mPicture:Landroid/hardware/Camera$PictureCallback;

.field private photoCaptured:Z

.field private photoConfirmed:Z

.field private productId:Ljava/lang/String;

.field private retakeButton:Landroid/support/design/widget/FloatingActionButton;

.field private rotatedThumbnailBitmap:Landroid/graphics/Bitmap;

.field private takenImageBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7f51dbe94ac8270dL    # 1.959536922552668E305

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity"

    const/16 v3, 0x6c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 224
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity$1;

    invoke-direct {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;)V

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->mPicture:Landroid/hardware/Camera$PictureCallback;

    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$002(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;[B)[B
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->imageData:[B

    const/16 v1, 0x65

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;)Landroid/hardware/Camera;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    const/16 v2, 0x66

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;)Landroid/support/design/widget/FloatingActionButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->captureButton:Landroid/support/design/widget/FloatingActionButton;

    const/16 v2, 0x67

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;)Landroid/support/design/widget/FloatingActionButton;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->retakeButton:Landroid/support/design/widget/FloatingActionButton;

    const/16 v2, 0x68

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->lambda$handleButtonCapture$0(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/16 v1, 0x69

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->lambda$handleButtonCapture$1()V

    const/16 v1, 0x6a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$2(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;[B)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->lambda$prepareBitmaps$2([B)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x6b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getImagePath()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 255
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x4f

    aput-boolean v3, v1, v2

    .line 256
    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    invoke-virtual {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    const/16 v2, 0x50

    aput-boolean v3, v1, v2

    .line 257
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->productId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->getProductImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x51

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method private handleButtonCapture()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 139
    iget-boolean v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->photoCaptured:Z

    if-nez v0, :cond_0

    const/16 v0, 0x24

    aput-boolean v1, v2, v0

    .line 141
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->captureButton:Landroid/support/design/widget/FloatingActionButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 142
    iput-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->photoCaptured:Z

    const/16 v0, 0x25

    aput-boolean v1, v2, v0

    .line 143
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->captureButton:Landroid/support/design/widget/FloatingActionButton;

    const v3, 0x7f020067

    invoke-virtual {v0, v3}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    const/16 v0, 0x26

    aput-boolean v1, v2, v0

    .line 144
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v0, 0x27

    aput-boolean v1, v2, v0

    .line 145
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->mPicture:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v6, v6, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    const/16 v0, 0x28

    aput-boolean v1, v2, v0

    .line 174
    :goto_0
    const/16 v0, 0x32

    aput-boolean v1, v2, v0

    return-void

    .line 149
    :cond_0
    iget-boolean v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->photoConfirmed:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x29

    aput-boolean v1, v2, v0

    goto :goto_0

    .line 152
    :cond_1
    iget-boolean v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->photoConfirmed:Z

    if-nez v0, :cond_2

    const/16 v0, 0x2a

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->photoConfirmed:Z

    const/16 v0, 0x2c

    aput-boolean v1, v2, v0

    .line 153
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->getImagePath()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2d

    aput-boolean v1, v2, v3

    .line 156
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->imageData:[B

    invoke-direct {p0, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->prepareBitmaps([B)Lrx/Observable;

    move-result-object v3

    invoke-static {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;Ljava/lang/String;)Lrx/functions/Action1;

    move-result-object v0

    const/16 v4, 0x2e

    aput-boolean v1, v2, v4

    .line 157
    invoke-virtual {v3, v0}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;)Lrx/functions/Action0;

    move-result-object v3

    const/16 v4, 0x2f

    aput-boolean v1, v2, v4

    .line 163
    invoke-virtual {v0, v3}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    const/16 v3, 0x30

    aput-boolean v1, v2, v3

    .line 171
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    const/16 v0, 0x31

    aput-boolean v1, v2, v0

    goto :goto_0

    .line 152
    :cond_2
    const/4 v0, 0x0

    const/16 v3, 0x2b

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method private handleButtonRetake()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->photoConfirmed:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x33

    aput-boolean v4, v0, v1

    .line 186
    :goto_0
    const/16 v1, 0x39

    aput-boolean v4, v0, v1

    return-void

    .line 180
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->photoCaptured:Z

    const/16 v1, 0x34

    aput-boolean v4, v0, v1

    .line 181
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->retakeButton:Landroid/support/design/widget/FloatingActionButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    const/16 v1, 0x35

    aput-boolean v4, v0, v1

    .line 182
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v1, 0x36

    aput-boolean v4, v0, v1

    .line 183
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->captureButton:Landroid/support/design/widget/FloatingActionButton;

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    const/16 v1, 0x37

    aput-boolean v4, v0, v1

    .line 184
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const/16 v1, 0x38

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private synthetic lambda$handleButtonCapture$0(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 159
    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->rotatedThumbnailBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x63

    aput-boolean v3, v0, v1

    .line 161
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->takenImageBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->cameraOrientation:I

    invoke-static {v1, p1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 162
    const/16 v1, 0x64

    aput-boolean v3, v0, v1

    return-void
.end method

.method private synthetic lambda$handleButtonCapture$1()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 165
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x5e

    aput-boolean v4, v0, v2

    .line 166
    const-string v2, "thumbnail"

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->rotatedThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x5f

    aput-boolean v4, v0, v2

    .line 167
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    const/16 v1, 0x60

    aput-boolean v4, v0, v1

    .line 168
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    const/16 v1, 0x61

    aput-boolean v4, v0, v1

    .line 169
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->finish()V

    .line 170
    const/16 v1, 0x62

    aput-boolean v4, v0, v1

    return-void
.end method

.method private synthetic lambda$prepareBitmaps$2([B)Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 240
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->prepareBitmapsSync([B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x5d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private prepareBitmaps([B)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lrx/Observable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 239
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity$$Lambda$3;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;[B)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0x48

    aput-boolean v4, v1, v3

    .line 240
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x49

    aput-boolean v4, v1, v3

    .line 241
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x4a

    aput-boolean v4, v1, v3

    .line 242
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 243
    .local v0, "observable":Lrx/Observable;
    const/16 v2, 0x4b

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method private prepareBitmapsSync([B)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 248
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->takenImageBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x4c

    aput-boolean v3, v0, v1

    .line 249
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->takenImageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v4, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x4d

    aput-boolean v3, v0, v2

    .line 250
    iget v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->cameraOrientation:I

    invoke-static {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x4e

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private setAutoFocus(Landroid/hardware/Camera;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const/16 v2, 0x5a

    aput-boolean v3, v0, v2

    .line 283
    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const/16 v2, 0x5b

    aput-boolean v3, v0, v2

    .line 284
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 285
    const/16 v1, 0x5c

    aput-boolean v3, v0, v1

    return-void
.end method

.method private setupCameraPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 190
    new-instance v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraPreview;

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-direct {v0, p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraPreview;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->cameraPreview:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraPreview;

    const/16 v0, 0x3a

    aput-boolean v3, v1, v0

    .line 191
    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/16 v2, 0x3b

    aput-boolean v3, v1, v2

    .line 192
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->cameraPreview:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraPreview;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 193
    const/16 v0, 0x3c

    aput-boolean v3, v1, v0

    return-void
.end method

.method private setupFlash()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 197
    iget v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->currentFlashIconIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->currentFlashIconIndex:I

    rem-int/lit8 v1, v1, 0x3

    iput v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->currentFlashIconIndex:I

    const/16 v1, 0x3d

    aput-boolean v5, v2, v1

    .line 198
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashIcons:Ljava/util/List;

    iget v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->currentFlashIconIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    const/16 v1, 0x3e

    aput-boolean v5, v2, v1

    .line 200
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 201
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->currentFlashIconIndex:I

    packed-switch v1, :pswitch_data_0

    .line 210
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const/16 v1, 0x41

    aput-boolean v5, v2, v1

    .line 212
    :goto_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 213
    const/16 v1, 0x42

    aput-boolean v5, v2, v1

    return-void

    .line 204
    :pswitch_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 205
    const/16 v1, 0x3f

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 207
    :pswitch_1
    const-string v1, "on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 208
    const/16 v1, 0x40

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupFlashIcons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 217
    const/4 v1, 0x0

    iput v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->currentFlashIconIndex:I

    const/16 v1, 0x43

    aput-boolean v3, v0, v1

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashIcons:Ljava/util/List;

    const/16 v1, 0x44

    aput-boolean v3, v0, v1

    .line 219
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashIcons:Ljava/util/List;

    const v2, 0x7f02006f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x45

    aput-boolean v3, v0, v1

    .line 220
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashIcons:Ljava/util/List;

    const v2, 0x7f020071

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x46

    aput-boolean v3, v0, v1

    .line 221
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashIcons:Ljava/util/List;

    const v2, 0x7f020070

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const/16 v1, 0x47

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public getInitializedCamera()Landroid/hardware/Camera;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 263
    const/4 v0, 0x0

    const/16 v2, 0x52

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 266
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .local v0, "camera":Landroid/hardware/Camera;
    const/16 v2, 0x53

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 267
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->cameraOrientation:I

    const/16 v2, 0x54

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 268
    iget v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->cameraOrientation:I

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->getRotationAdjustment(I)I

    move-result v2

    const/16 v3, 0x55

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 269
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    const/16 v2, 0x56

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 270
    invoke-direct {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->setAutoFocus(Landroid/hardware/Camera;)V

    .line 271
    const/4 v2, 0x0

    iput-boolean v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->photoCaptured:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    const/16 v2, 0x57

    aput-boolean v5, v1, v2

    .line 277
    :goto_0
    const/16 v2, 0x59

    aput-boolean v5, v1, v2

    return-object v0

    .line 273
    :catch_0
    move-exception v2

    const/16 v2, 0x58

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 94
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    const/16 v2, 0x13

    aput-boolean v3, v1, v2

    .line 105
    :goto_0
    const/16 v2, 0x17

    aput-boolean v3, v1, v2

    return-void

    .line 97
    :pswitch_0
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->handleButtonCapture()V

    .line 98
    const/16 v2, 0x14

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->setupFlash()V

    .line 101
    const/16 v2, 0x15

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->handleButtonRetake()V

    const/16 v2, 0x16

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x7f10008c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 56
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 58
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 59
    const-string v0, "product.id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->productId:Ljava/lang/String;

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 60
    const-string v0, "product.name"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 61
    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 62
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->setupFlashIcons()V

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    .line 64
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->getInitializedCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    .line 65
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->setupCameraPreview()V

    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    .line 67
    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->captureButton:Landroid/support/design/widget/FloatingActionButton;

    const/16 v0, 0xb

    aput-boolean v3, v1, v0

    .line 68
    const v0, 0x7f10008d

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashButton:Landroid/support/design/widget/FloatingActionButton;

    const/16 v0, 0xc

    aput-boolean v3, v1, v0

    .line 69
    const v0, 0x7f10008e

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->retakeButton:Landroid/support/design/widget/FloatingActionButton;

    const/16 v0, 0xd

    aput-boolean v3, v1, v0

    .line 71
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->captureButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xe

    aput-boolean v3, v1, v0

    .line 72
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->flashButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xf

    aput-boolean v3, v1, v0

    .line 73
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->retakeButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const/16 v0, 0x10

    aput-boolean v3, v1, v0

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 131
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    .line 135
    :goto_0
    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    return-void

    .line 131
    :cond_0
    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    .line 133
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x12

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->onBackPressed()V

    .line 84
    const/16 v1, 0x11

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 121
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    .line 125
    :goto_0
    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    return-void

    .line 121
    :cond_0
    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    .line 123
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 111
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    .line 115
    :goto_0
    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    return-void

    .line 111
    :cond_0
    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 113
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
