.class public final Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "StatisticsModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideStatisticsServiceProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private converterService:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;

.field private statisticsDao:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4231dd2ddefa6cb0L    # 7.672521497042456E10

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    const-string v1, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.statistics.business.StatisticsService"

    const-string v2, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.dagger.context.config.statistics.StatisticsModule"

    const-string v3, "provideStatisticsService"

    invoke-direct {p0, v1, v4, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->module:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;

    aput-boolean v4, v0, v5

    .line 121
    invoke-virtual {p0, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->setLibrary(Z)V

    .line 122
    aput-boolean v4, v0, v4

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 131
    const-string v1, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.statistics.persistence.StatisticsDao"

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->statisticsDao:Ldagger/internal/Binding;

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 132
    const-string v1, "privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.logic.statistics.business.impl.converter.StatisticsConverterService"

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->converterService:Ldagger/internal/Binding;

    .line 133
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->get()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public get()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 151
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->module:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;

    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->statisticsDao:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->converterService:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-virtual {v3, v0, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule;->provideStatisticsService(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->statisticsDao:Ldagger/internal/Binding;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 142
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/dagger/context/config/statistics/StatisticsModule$$ModuleAdapter$ProvideStatisticsServiceProvidesAdapter;->converterService:Ldagger/internal/Binding;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method
