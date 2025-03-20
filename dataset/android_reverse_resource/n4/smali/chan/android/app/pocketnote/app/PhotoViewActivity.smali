.class public Lchan/android/app/pocketnote/app/PhotoViewActivity;
.super Landroid/app/Activity;
.source "PhotoViewActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/PhotoViewActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x17cb7c8b48849e21L    # -9.359162426781756E193

    const-string v2, "chan/android/app/pocketnote/app/PhotoViewActivity"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/PhotoViewActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/PhotoViewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/PhotoViewActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v4, v1, v4

    .line 14
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/PhotoViewActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 15
    const v0, 0x7f0c008e

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/PhotoViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 16
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserPhotoFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 17
    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    return-void
.end method
