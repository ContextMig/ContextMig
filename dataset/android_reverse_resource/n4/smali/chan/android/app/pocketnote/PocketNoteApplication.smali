.class public Lchan/android/app/pocketnote/PocketNoteApplication;
.super Landroid/app/Application;
.source "PocketNoteApplication.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/PocketNoteApplication;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x62cd21eb7c320bb2L    # -4.999387489353282E-168

    const-string v2, "chan/android/app/pocketnote/PocketNoteApplication"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/PocketNoteApplication;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/PocketNoteApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/PocketNoteApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    aput-boolean v3, v0, v3

    .line 18
    invoke-virtual {p0}, Lchan/android/app/pocketnote/PocketNoteApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 19
    invoke-static {v1}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->initialize(Landroid/content/Context;)V

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 20
    invoke-static {v1}, Lchan/android/app/pocketnote/app/AppPreferences;->initialize(Landroid/content/Context;)V

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 21
    invoke-static {v1}, Lchan/android/app/pocketnote/app/AppResources;->initialize(Landroid/content/Context;)V

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    .line 22
    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    .line 23
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 24
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/PocketNoteApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    const-string v1, "onLowMemory() called"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 29
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 30
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/PocketNoteApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    const-string v1, "onTrimMemory() called"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 36
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    return-void
.end method
