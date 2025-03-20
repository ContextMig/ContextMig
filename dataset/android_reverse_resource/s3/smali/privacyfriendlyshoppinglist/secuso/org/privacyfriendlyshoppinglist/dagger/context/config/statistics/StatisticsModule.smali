.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;
.super Ljava/lang/Object;
.source "StatisticsModule.java"


# annotations
.annotation runtime Ldagger/Module;
    injects = {
        Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;,
        Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;,
        Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x744e99fc6b116a3fL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method provideStatisticsConverter()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/impl/StatisticsConverterServiceImpl;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/impl/StatisticsConverterServiceImpl;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method provideStatisticsDao()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/impl/StatisticsDaoImpl;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/impl/StatisticsDaoImpl;-><init>()V

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method provideStatisticsService(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;

    invoke-direct {v1, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
