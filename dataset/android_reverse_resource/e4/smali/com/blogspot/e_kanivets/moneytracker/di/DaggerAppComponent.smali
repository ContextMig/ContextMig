.class public final Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private accountAdapterMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private accountsActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private accountsSummaryPresenterMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private addAccountActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;",
            ">;"
        }
    .end annotation
.end field

.field private addExchangeRateActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;",
            ">;"
        }
    .end annotation
.end field

.field private addRecordActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;",
            ">;"
        }
    .end annotation
.end field

.field private appRateDialogMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;",
            ">;"
        }
    .end annotation
.end field

.field private backupActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;",
            ">;"
        }
    .end annotation
.end field

.field private chartsActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private editAccountActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;",
            ">;"
        }
    .end annotation
.end field

.field private exchangeRateAdapterMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private exchangeRatesActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;",
            ">;"
        }
    .end annotation
.end field

.field private expandableListReportAdapterMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private importExportActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mainActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;",
            ">;"
        }
    .end annotation
.end field

.field private monthSummaryAdapterMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private periodSpinnerMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;",
            ">;"
        }
    .end annotation
.end field

.field private providesAccountControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ">;"
        }
    .end annotation
.end field

.field private providesAccountRepoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesBackupControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/BackupController;",
            ">;"
        }
    .end annotation
.end field

.field private providesCategoryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;",
            ">;"
        }
    .end annotation
.end field

.field private providesCategoryRepoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesCurrencyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;",
            ">;"
        }
    .end annotation
.end field

.field private providesDbHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;",
            ">;"
        }
    .end annotation
.end field

.field private providesExchangeRateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;",
            ">;"
        }
    .end annotation
.end field

.field private providesExchangeRateRepoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesExportControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;",
            ">;"
        }
    .end annotation
.end field

.field private providesFormatControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/FormatController;",
            ">;"
        }
    .end annotation
.end field

.field private providesImportControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;",
            ">;"
        }
    .end annotation
.end field

.field private providesPeriodControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;",
            ">;"
        }
    .end annotation
.end field

.field private providesPreferenceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private providesRecordControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;",
            ">;"
        }
    .end annotation
.end field

.field private providesRecordRepoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesTransferControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/TransferController;",
            ">;"
        }
    .end annotation
.end field

.field private providesTransferRepoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
            ">;>;"
        }
    .end annotation
.end field

.field private recordAdapterMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private reportActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;",
            ">;"
        }
    .end annotation
.end field

.field private settingsFragmentMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private shortSummaryPresenterMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private transferActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7b5772b8f80c558cL    # 1.3947109228623466E286

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v2

    .line 92
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$assertionsDisabled:Z

    const/16 v0, 0x1f

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x1e

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    sget-boolean v1, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$assertionsDisabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 137
    :goto_0
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->initialize(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)V

    .line 138
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    aput-boolean v3, v0, v3

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    throw v1
.end method

.method synthetic constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;-><init>(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)V

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static builder()Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;-><init>(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$1;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private initialize(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)V
    .locals 9

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v8

    .line 145
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$100(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    move-result-object v0

    invoke-static {v0}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesDbHelperFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesDbHelperProvider:Ljavax/inject/Provider;

    .line 146
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$100(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesDbHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesRecordRepoFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesRecordRepoProvider:Ljavax/inject/Provider;

    .line 147
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$100(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesDbHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesCategoryRepoFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCategoryRepoProvider:Ljavax/inject/Provider;

    .line 148
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    invoke-static {v0}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPreferenceControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    .line 149
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCategoryRepoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCategoryControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCategoryControllerProvider:Ljavax/inject/Provider;

    .line 150
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$100(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesDbHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesAccountRepoFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountRepoProvider:Ljavax/inject/Provider;

    .line 151
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountRepoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesAccountControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    .line 152
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesRecordRepoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCategoryControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesRecordControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesRecordControllerProvider:Ljavax/inject/Provider;

    .line 153
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$100(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesDbHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesExchangeRateRepoFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExchangeRateRepoProvider:Ljavax/inject/Provider;

    .line 154
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExchangeRateRepoProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesExchangeRateControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExchangeRateControllerProvider:Ljavax/inject/Provider;

    .line 155
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesCurrencyControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCurrencyControllerProvider:Ljavax/inject/Provider;

    .line 156
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesPeriodControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPeriodControllerProvider:Ljavax/inject/Provider;

    .line 157
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesFormatControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    .line 158
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesRecordControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExchangeRateControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCurrencyControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPeriodControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->mainActivityMembersInjector:Ldagger/MembersInjector;

    .line 159
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCategoryControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesRecordControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->addRecordActivityMembersInjector:Ldagger/MembersInjector;

    .line 160
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExchangeRateControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->exchangeRatesActivityMembersInjector:Ldagger/MembersInjector;

    .line 161
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExchangeRateControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCurrencyControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->addExchangeRateActivityMembersInjector:Ldagger/MembersInjector;

    .line 162
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->accountsActivityMembersInjector:Ldagger/MembersInjector;

    .line 163
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCurrencyControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->addAccountActivityMembersInjector:Ldagger/MembersInjector;

    .line 164
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$100(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesDbHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule_ProvidesTransferRepoFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/repo/CachedRepoModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesTransferRepoProvider:Ljavax/inject/Provider;

    .line 165
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesTransferRepoProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesTransferControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesTransferControllerProvider:Ljavax/inject/Provider;

    .line 166
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesTransferControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->transferActivityMembersInjector:Ldagger/MembersInjector;

    .line 167
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesRecordControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesImportControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesImportControllerProvider:Ljavax/inject/Provider;

    .line 168
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesRecordControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCategoryControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesExportControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExportControllerProvider:Ljavax/inject/Provider;

    .line 169
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesImportControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExportControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->importExportActivityMembersInjector:Ldagger/MembersInjector;

    .line 170
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesRecordControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExchangeRateControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCurrencyControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->reportActivityMembersInjector:Ldagger/MembersInjector;

    .line 171
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesRecordControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExchangeRateControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCurrencyControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->chartsActivityMembersInjector:Ldagger/MembersInjector;

    .line 172
    invoke-static {p1}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;->access$200(Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent$Builder;)Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule_ProvidesBackupControllerFactory;->create(Lcom/blogspot/e_kanivets/moneytracker/di/module/ControllerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesBackupControllerProvider:Ljavax/inject/Provider;

    .line 173
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesBackupControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->backupActivityMembersInjector:Ldagger/MembersInjector;

    .line 174
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCurrencyControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->settingsFragmentMembersInjector:Ldagger/MembersInjector;

    .line 175
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesExchangeRateControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesCurrencyControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->accountsSummaryPresenterMembersInjector:Ldagger/MembersInjector;

    .line 176
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPreferenceControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->appRateDialogMembersInjector:Ldagger/MembersInjector;

    .line 177
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesPeriodControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->periodSpinnerMembersInjector:Ldagger/MembersInjector;

    .line 178
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->recordAdapterMembersInjector:Ldagger/MembersInjector;

    .line 179
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->accountAdapterMembersInjector:Ldagger/MembersInjector;

    .line 180
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->expandableListReportAdapterMembersInjector:Ldagger/MembersInjector;

    .line 181
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->shortSummaryPresenterMembersInjector:Ldagger/MembersInjector;

    .line 182
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->exchangeRateAdapterMembersInjector:Ldagger/MembersInjector;

    .line 183
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesFormatControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->monthSummaryAdapterMembersInjector:Ldagger/MembersInjector;

    .line 184
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->providesAccountControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->editAccountActivityMembersInjector:Ldagger/MembersInjector;

    .line 185
    const/4 v0, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    return-void
.end method


# virtual methods
.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/ReportActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->reportActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 230
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->settingsFragmentMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 245
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->accountsActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 210
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AddAccountActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->addAccountActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 215
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/EditAccountActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->editAccountActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 295
    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/account/TransferActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->transferActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 220
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->chartsActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 235
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/AddExchangeRateActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->addExchangeRateActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 205
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->exchangeRatesActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 200
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->backupActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 240
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->importExportActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 225
    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/record/AddRecordActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->addRecordActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 195
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/activity/record/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->mainActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 190
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/AccountAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->accountAdapterMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 270
    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/ExchangeRateAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->exchangeRateAdapterMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 285
    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/ExpandableListReportAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->expandableListReportAdapterMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 275
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/MonthSummaryAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->monthSummaryAdapterMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 290
    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/adapter/RecordAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->recordAdapterMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 265
    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/ui/AppRateDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->appRateDialogMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 255
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/ui/PeriodSpinner;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->periodSpinnerMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 260
    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/AccountsSummaryPresenter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->accountsSummaryPresenterMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 250
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public inject(Lcom/blogspot/e_kanivets/moneytracker/ui/presenter/ShortSummaryPresenter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/di/DaggerAppComponent;->shortSummaryPresenterMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 280
    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
