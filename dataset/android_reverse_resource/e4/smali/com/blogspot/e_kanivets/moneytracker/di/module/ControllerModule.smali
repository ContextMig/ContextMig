.class public Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;
.super Ljava/lang/Object;
.source "ControllerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x54f05ec6abca98f5L    # -2.824409444930355E-101

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/di/module/ControllerModule"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->context:Landroid/content/Context;

    .line 42
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public providesAccountController(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ")",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-direct {v1, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public providesBackupController(Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;)Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 132
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;Ljava/lang/String;)V

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesCategoryController(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ")",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    invoke-direct {v1, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesCurrencyController(Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-direct {v1, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesExchangeRateController(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;)",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesExportController(Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;)Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;

    invoke-direct {v1, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;)V

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesFormatController(Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesImportController(Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;)Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 125
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;)V

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesPeriodController(Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;

    invoke-direct {v1, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesPreferenceController()Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesRecordController(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;)Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ")",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    invoke-direct {v1, p1, p2, p3}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public providesTransferController(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;)Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ")",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;

    invoke-direct {v1, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
