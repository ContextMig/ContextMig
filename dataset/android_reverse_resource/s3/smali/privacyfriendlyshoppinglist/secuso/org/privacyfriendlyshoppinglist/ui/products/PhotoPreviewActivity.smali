.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PhotoPreviewActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final WAIT_INTERVAL_MILLISECONDS:J = 0xc8L


# instance fields
.field private calledFromDialog:Z

.field private fullSizeBitmap:Landroid/graphics/Bitmap;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xc4e5a239ba7cc1dL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity"

    const/16 v3, 0x3d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->showConfirmationDialog()V

    const/16 v1, 0x37

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->scheduleForDeletion()V

    const/16 v1, 0x38

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->lambda$onCreate$0(Landroid/graphics/Bitmap;)V

    const/16 v1, 0x39

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;Landroid/widget/ProgressBar;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->lambda$onCreate$1(Landroid/widget/ProgressBar;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V

    const/16 v1, 0x3a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$2(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->lambda$showConfirmationDialog$2()V

    const/16 v1, 0x3b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$3(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;Ljava/lang/String;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->lambda$loadImageFromStorage$3(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0x3c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$loadImageFromStorage$3(Ljava/lang/String;)Lrx/Observable;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->loadImageFromStorageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v2, 0x2f

    aput-boolean v3, v1, v2

    .line 154
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    const/16 v2, 0x30

    aput-boolean v3, v1, v2

    .line 154
    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    const/16 v2, 0x31

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private synthetic lambda$onCreate$0(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->fullSizeBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0x36

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/widget/ProgressBar;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v1, 0x34

    aput-boolean v2, v0, v1

    .line 69
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->fullSizeBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    .line 70
    const/16 v1, 0x35

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$showConfirmationDialog$2()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->setResult(I)V

    const/16 v1, 0x32

    aput-boolean v2, v0, v1

    .line 138
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->finish()V

    .line 139
    const/16 v1, 0x33

    aput-boolean v2, v0, v1

    return-void
.end method

.method private loadImageFromStorage(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 145
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity$$Lambda$4;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;Ljava/lang/String;)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0x24

    aput-boolean v4, v1, v3

    .line 146
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x25

    aput-boolean v4, v1, v3

    .line 157
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x26

    aput-boolean v4, v1, v3

    .line 158
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 159
    .local v0, "observable":Lrx/Observable;
    const/16 v2, 0x27

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method private loadImageFromStorageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 164
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    invoke-interface {v3, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->getProductImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x28

    aput-boolean v6, v2, v4

    .line 166
    :goto_0
    invoke-static {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/CameraUtils;->isSavingImage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x29

    aput-boolean v6, v2, v4

    .line 173
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2c

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 174
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0x2d

    aput-boolean v6, v2, v3

    .line 179
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 166
    :cond_0
    const/16 v4, 0x2a

    aput-boolean v6, v2, v4

    .line 168
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const/16 v4, 0x2b

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    const/16 v3, 0x2e

    aput-boolean v6, v2, v3

    goto :goto_1
.end method

.method private scheduleForDeletion()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a4

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x1a

    aput-boolean v4, v0, v2

    .line 120
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/16 v3, 0x1b

    aput-boolean v4, v0, v3

    .line 121
    const-string v3, "photo.bitmap"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x1c

    aput-boolean v4, v0, v1

    .line 122
    const-string v1, "scheduled.for.deletion"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x1d

    aput-boolean v4, v0, v1

    .line 123
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->setResult(ILandroid/content/Intent;)V

    const/16 v1, 0x1e

    aput-boolean v4, v0, v1

    .line 124
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->finish()V

    .line 125
    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    return-void
.end method

.method private setupDeleteButton(Landroid/view/MenuItem;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->calledFromDialog:Z

    if-nez v1, :cond_0

    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    .line 93
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity$1;

    invoke-direct {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    .line 115
    :goto_0
    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    return-void

    .line 105
    :cond_0
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity$2;

    invoke-direct {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity$2;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private showConfirmationDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 129
    const v1, 0x7f090033

    const v2, 0x7f090034

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productName:Ljava/lang/String;

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    iget-object v5, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productId:Ljava/lang/String;

    const/16 v6, 0x20

    aput-boolean v7, v0, v6

    .line 134
    invoke-interface {v4, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;->deleteOnlyImage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity$$Lambda$3;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;)Lrx/functions/Action0;

    move-result-object v5

    const/16 v6, 0x21

    aput-boolean v7, v0, v6

    .line 135
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v4

    const/16 v5, 0x22

    aput-boolean v7, v0, v5

    .line 129
    invoke-static {p0, v1, v2, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/MessageUtils;->showAlertDialog(Landroid/content/Context;IILjava/lang/String;Lrx/Observable;)V

    .line 141
    const/16 v1, 0x23

    aput-boolean v7, v0, v1

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v8, v3, v8

    .line 47
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v8, v3, v0

    .line 49
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x3

    aput-boolean v8, v3, v0

    .line 50
    const-string v0, "product.id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productId:Ljava/lang/String;

    const/4 v0, 0x4

    aput-boolean v8, v3, v0

    .line 51
    const-string v0, "product.name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productName:Ljava/lang/String;

    const/4 v0, 0x5

    aput-boolean v8, v3, v0

    .line 52
    const-string v0, "from.dialog"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->calledFromDialog:Z

    const/4 v0, 0x6

    aput-boolean v8, v3, v0

    .line 53
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    aput-boolean v8, v3, v0

    .line 55
    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0x8

    aput-boolean v8, v3, v1

    .line 56
    const v1, 0x7f1000d5

    invoke-virtual {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/16 v2, 0x9

    aput-boolean v8, v3, v2

    .line 58
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;

    invoke-direct {v2, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/InstanceFactory;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xa

    aput-boolean v8, v3, v4

    .line 59
    const-class v4, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    invoke-virtual {v2, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/AbstractInstanceFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    iput-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/ProductService;

    const/16 v2, 0xb

    aput-boolean v8, v3, v2

    .line 61
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0900a5

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    aput-boolean v8, v3, v4

    .line 62
    invoke-virtual {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0xd

    aput-boolean v8, v3, v2

    .line 64
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->productId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->loadImageFromStorage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;)Lrx/functions/Action1;

    move-result-object v4

    const/16 v5, 0xe

    aput-boolean v8, v3, v5

    .line 65
    invoke-virtual {v2, v4}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v1, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;Landroid/widget/ProgressBar;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Lrx/functions/Action0;

    move-result-object v0

    const/16 v1, 0xf

    aput-boolean v8, v3, v1

    .line 66
    invoke-virtual {v2, v0}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    const/16 v1, 0x10

    aput-boolean v8, v3, v1

    .line 71
    invoke-virtual {v0}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 72
    const/16 v0, 0x11

    aput-boolean v8, v3, v0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 78
    const/16 v1, 0x12

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    const v1, 0x7f100120

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x13

    aput-boolean v3, v0, v2

    .line 85
    invoke-direct {p0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/PhotoPreviewActivity;->setupDeleteButton(Landroid/view/MenuItem;)V

    const/16 v1, 0x14

    aput-boolean v3, v0, v1

    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    const/16 v2, 0x15

    aput-boolean v3, v0, v2

    return v1
.end method
