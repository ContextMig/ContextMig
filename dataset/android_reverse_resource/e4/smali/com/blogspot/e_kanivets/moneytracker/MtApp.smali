.class public Lcom/blogspot/e_kanivets/moneytracker/MtApp;
.super Landroid/app/Application;
.source "MtApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static mtApp:Lcom/blogspot/e_kanivets/moneytracker/MtApp;


# instance fields
.field private component:Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x385700e51e20370fL    # 2.7040479665735917E-37

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/MtApp"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private buildComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->builder()Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;

    move-result-object v1

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    .line 58
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->cachedRepoModule(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;)Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;

    move-result-object v1

    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    .line 59
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->controllerModule(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;)Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->build()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    .line 57
    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    sget-object v1, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->mtApp:Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    aput-boolean v2, v0, v2

    return-object v1
.end method


# virtual methods
.method public buildAppComponent()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->buildComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->component:Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    .line 54
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->component:Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    sput-object p0, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->mtApp:Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    .line 36
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->buildAppComponent()V

    .line 38
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/BuildConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Ltimber/log/Timber$DebugTree;

    invoke-direct {v1}, Ltimber/log/Timber$DebugTree;-><init>()V

    invoke-static {v1}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    .line 40
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->setEnabled(Z)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 46
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 42
    :cond_0
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/MtApp$ReleaseTree;-><init>(Lcom/blogspot/e_kanivets/moneytracker/MtApp$1;)V

    invoke-static {v1}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    .line 43
    new-array v1, v3, [Lio/fabric/sdk/android/Kit;

    new-instance v2, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v2, v1, v4

    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 44
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->setEnabled(Z)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
