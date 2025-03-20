.class public final Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cachedRepoModule:Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

.field private controllerModule:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x38124b54ac659adaL    # 1.344050011279852E-38

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 297
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;-><init>()V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->cachedRepoModule:Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->controllerModule:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public build()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->cachedRepoModule:Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    if-nez v1, :cond_0

    .line 306
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "cachedRepoModule must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    throw v1

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->controllerModule:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    if-nez v1, :cond_1

    .line 309
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "controllerModule must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    throw v1

    .line 311
    :cond_1
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;-><init>(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$1;)V

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public cachedRepoModule(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;)Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 315
    if-nez p1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "cachedRepoModule"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    throw v1

    .line 318
    :cond_0
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->cachedRepoModule:Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    .line 319
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-object p0
.end method

.method public controllerModule(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;)Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 323
    if-nez p1, :cond_0

    .line 324
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "controllerModule"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    throw v1

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->controllerModule:Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    .line 327
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-object p0
.end method
