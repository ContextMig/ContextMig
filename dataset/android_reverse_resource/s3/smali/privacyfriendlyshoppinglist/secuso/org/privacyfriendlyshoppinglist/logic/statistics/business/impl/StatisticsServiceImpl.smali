.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;
.super Ljava/lang/Object;
.source "StatisticsServiceImpl.java"

# interfaces
.implements Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/StatisticsService;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final LEFT_PARENTHESIS:Ljava/lang/String; = "("

.field private static final MAX_NR_CHAR:I = 0xa

.field private static final RIGHT_PARENTHESIS:Ljava/lang/String; = ")"

.field private static final SPACE:Ljava/lang/String; = " "


# instance fields
.field private context:Landroid/content/Context;

.field private converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

.field private statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

.field private xAxisName:Ljava/lang/String;

.field private yAxisName:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x73de048ca21d612dL    # 1.3432438382170553E250

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl"

    const/16 v3, 0xf8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    .line 48
    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    .line 49
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$saveRecord$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xec

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$1(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;)Lrx/Observable;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$getAll$1()Lrx/Observable;

    move-result-object v1

    const/16 v2, 0xed

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$10(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$getChartDataSync$9(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$11(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Integer;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$getChartDataSync$10(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$2(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;

    move-result-object v1

    const/16 v2, 0xee

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$3(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;)V
    .locals 3

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$getAllSync$2(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;)V

    const/16 v1, 0xef

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$lambda$4(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$deleteAll$3(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$5(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$getRange$4()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;

    move-result-object v1

    const/16 v2, 0xf1

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$6(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$getMaxDateSync$5(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0xf2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$7(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$getMinDateSync$6(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0xf3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$8(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$deleteById$7(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$lambda$9(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 4

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->lambda$getChartData$8(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v1

    const/16 v2, 0xf5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getAllSync()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;>;"
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    const/16 v3, 0xf

    aput-boolean v5, v1, v3

    .line 92
    invoke-interface {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;->getAllEntities()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$3;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;)Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x10

    aput-boolean v5, v1, v4

    .line 93
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$4;->lambdaFactory$(Ljava/util/List;)Lrx/functions/Action1;

    move-result-object v3

    const/16 v4, 0x11

    aput-boolean v5, v1, v4

    .line 94
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 96
    const/16 v2, 0x12

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method private getChartDataSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 185
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->getDateFrom()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->getDateTimeFromString(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    const/16 v2, 0x3b

    aput-boolean v7, v1, v2

    .line 186
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->getDateTo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->getDateTimeFromString(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    const/16 v3, 0x3c

    aput-boolean v7, v1, v3

    .line 187
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->getGroupBy()I

    move-result v3

    const/16 v4, 0x3d

    aput-boolean v7, v1, v4

    .line 188
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->getValuesY()I

    move-result v4

    const/16 v5, 0x3e

    aput-boolean v7, v1, v5

    .line 189
    invoke-direct {p0, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->setAxisNames(II)V

    .line 192
    iget-object v5, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    const/16 v6, 0x3f

    aput-boolean v7, v1, v6

    .line 193
    invoke-interface {v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;->getAllEntities()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v5

    invoke-static {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$13;->lambdaFactory$(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;)Lrx/functions/Func1;

    move-result-object v0

    const/16 v2, 0x40

    aput-boolean v7, v1, v2

    .line 194
    invoke-virtual {v5, v0}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$14;->lambdaFactory$()Lrx/functions/Func2;

    move-result-object v2

    const/16 v5, 0x41

    aput-boolean v7, v1, v5

    .line 198
    invoke-virtual {v0, v2}, Lrx/Observable;->toSortedList(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    const/16 v2, 0x42

    aput-boolean v7, v1, v2

    .line 199
    invoke-virtual {v0}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/observables/BlockingObservable;->single()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/16 v2, 0x43

    aput-boolean v7, v1, v2

    .line 201
    invoke-direct {p0, v3, v4, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getStatisticsChartData(IILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v0

    const/16 v2, 0x44

    aput-boolean v7, v1, v2

    .line 203
    invoke-direct {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getMaxColumnValue(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)D

    move-result-wide v2

    const/16 v4, 0x45

    aput-boolean v7, v1, v4

    .line 204
    invoke-direct {p0, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getNumberScale(D)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    move-result-object v2

    invoke-virtual {v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setNumberScale(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;)V

    .line 206
    const/16 v2, 0x46

    aput-boolean v7, v1, v2

    return-object v0
.end method

.method private getCurrentTotal(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)D
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 466
    sget v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->PRICE:I

    if-ne p1, v3, :cond_0

    const/16 v3, 0xca

    aput-boolean v8, v2, v3

    .line 468
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getUnitPrice()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getQuantity()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v6, v3

    mul-double v0, v4, v6

    .local v0, "currentTotal":D
    const/16 v3, 0xcb

    aput-boolean v8, v2, v3

    .line 474
    .end local v0    # "currentTotal":D
    :goto_0
    const/16 v3, 0xcd

    aput-boolean v8, v2, v3

    return-wide v0

    .line 472
    :cond_0
    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getQuantity()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v0, v3

    const/16 v3, 0xcc

    aput-boolean v8, v2, v3

    goto :goto_0
.end method

.method private getItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 493
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;-><init>()V

    const/16 v2, 0xd5

    aput-boolean v3, v0, v2

    .line 494
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-interface {v2, p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->convertEntityToItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;)V

    .line 495
    const/16 v2, 0xd6

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getMaxColumnValue(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)D
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 225
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->getData()Ljava/util/List;

    move-result-object v3

    const/16 v1, 0x4c

    aput-boolean v8, v2, v1

    .line 226
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v4, 0x4d

    aput-boolean v8, v2, v4

    .line 227
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v4, 0x4e

    aput-boolean v8, v2, v4

    .local v0, "max":Ljava/lang/Double;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "max":Ljava/lang/Double;
    check-cast v0, Ljava/lang/Double;

    const/16 v4, 0x4f

    aput-boolean v8, v2, v4

    .line 229
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    const/16 v4, 0x50

    aput-boolean v8, v2, v4

    .line 233
    .restart local v0    # "max":Ljava/lang/Double;
    :goto_1
    const/16 v4, 0x52

    aput-boolean v8, v2, v4

    goto :goto_0

    .line 231
    :cond_0
    const/16 v1, 0x51

    aput-boolean v8, v2, v1

    move-object v1, v0

    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/16 v1, 0x53

    aput-boolean v8, v2, v1

    return-wide v4
.end method

.method private getMaxDateSync()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 133
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    invoke-interface {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;->getAllEntities()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x21

    aput-boolean v5, v1, v3

    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/16 v3, 0x22

    aput-boolean v5, v1, v3

    .line 135
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x23

    aput-boolean v5, v1, v2

    .line 144
    .local v0, "maxDate":Ljava/util/Date;
    :goto_0
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-interface {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x29

    aput-boolean v5, v1, v3

    return-object v2

    .line 137
    .end local v0    # "maxDate":Ljava/util/Date;
    :cond_0
    const/16 v3, 0x24

    aput-boolean v5, v1, v3

    .line 138
    invoke-static {v2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$7;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x25

    aput-boolean v5, v1, v4

    .line 139
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$8;->lambdaFactory$()Lrx/functions/Func2;

    move-result-object v3

    const/16 v4, 0x26

    aput-boolean v5, v1, v4

    .line 140
    invoke-virtual {v2, v3}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x27

    aput-boolean v5, v1, v3

    .line 141
    invoke-virtual {v2}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Single;->toBlocking()Lrx/singles/BlockingSingle;

    move-result-object v2

    invoke-virtual {v2}, Lrx/singles/BlockingSingle;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .restart local v0    # "maxDate":Ljava/util/Date;
    const/16 v2, 0x28

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method private getMinDateSync()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 149
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    invoke-interface {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;->getAllEntities()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x2a

    aput-boolean v5, v1, v3

    .line 150
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/16 v3, 0x2b

    aput-boolean v5, v1, v3

    .line 151
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x2c

    aput-boolean v5, v1, v2

    .line 160
    .local v0, "minDate":Ljava/util/Date;
    :goto_0
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-interface {v2, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    aput-boolean v5, v1, v3

    return-object v2

    .line 153
    .end local v0    # "minDate":Ljava/util/Date;
    :cond_0
    const/16 v3, 0x2d

    aput-boolean v5, v1, v3

    .line 154
    invoke-static {v2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$9;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x2e

    aput-boolean v5, v1, v4

    .line 155
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$10;->lambdaFactory$()Lrx/functions/Func2;

    move-result-object v3

    const/16 v4, 0x2f

    aput-boolean v5, v1, v4

    .line 156
    invoke-virtual {v2, v3}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x30

    aput-boolean v5, v1, v3

    .line 157
    invoke-virtual {v2}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Single;->toBlocking()Lrx/singles/BlockingSingle;

    move-result-object v2

    invoke-virtual {v2}, Lrx/singles/BlockingSingle;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .restart local v0    # "minDate":Ljava/util/Date;
    const/16 v2, 0x31

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method private getNumberScale(D)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 211
    const/4 v0, 0x0

    const/16 v2, 0x47

    aput-boolean v4, v1, v2

    .line 212
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->MILLION:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getValue(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    .line 214
    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->MILLION:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    .local v0, "numberScale":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;
    const/16 v2, 0x48

    aput-boolean v4, v1, v2

    .line 220
    :goto_0
    const/16 v2, 0x4b

    aput-boolean v4, v1, v2

    return-object v0

    .line 216
    .end local v0    # "numberScale":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;
    :cond_0
    sget-object v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->KILO:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getValue(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, p1, v2

    if-gtz v2, :cond_1

    const/16 v2, 0x49

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 218
    :cond_1
    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->KILO:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    .restart local v0    # "numberScale":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;
    const/16 v2, 0x4a

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private getRangeSync()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getMaxDateSync()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-boolean v5, v0, v2

    .line 124
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getMinDateSync()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    aput-boolean v5, v0, v3

    .line 125
    new-instance v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;

    invoke-direct {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;-><init>()V

    const/16 v4, 0x1e

    aput-boolean v5, v0, v4

    .line 126
    invoke-virtual {v3, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->setMaxDate(Ljava/lang/String;)V

    const/16 v1, 0x1f

    aput-boolean v5, v0, v1

    .line 127
    invoke-virtual {v3, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->setMinDate(Ljava/lang/String;)V

    .line 128
    const/16 v1, 0x20

    aput-boolean v5, v0, v1

    return-object v3
.end method

.method private getStatisticsChartData(IILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;",
            ">;)",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "chartData":Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    sget v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->MONTH:I

    if-ne p1, v2, :cond_0

    const/16 v2, 0x56

    aput-boolean v3, v1, v2

    .line 251
    invoke-direct {p0, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getStatisticsChartDataByMonth(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v0

    const/16 v2, 0x57

    aput-boolean v3, v1, v2

    .line 273
    :goto_0
    const/16 v2, 0x63

    aput-boolean v3, v1, v2

    return-object v0

    .line 253
    :cond_0
    sget v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->WEEK:I

    if-ne p1, v2, :cond_1

    const/16 v2, 0x58

    aput-boolean v3, v1, v2

    .line 255
    invoke-direct {p0, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getStatisticsChartDataByWeek(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v0

    const/16 v2, 0x59

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 257
    :cond_1
    sget v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->DAY:I

    if-ne p1, v2, :cond_2

    const/16 v2, 0x5a

    aput-boolean v3, v1, v2

    .line 259
    invoke-direct {p0, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getStatisticsChartDataByDay(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v0

    const/16 v2, 0x5b

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 261
    :cond_2
    sget v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->CATEGORY:I

    if-ne p1, v2, :cond_3

    const/16 v2, 0x5c

    aput-boolean v3, v1, v2

    .line 263
    invoke-direct {p0, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getStatisticsChartDataByCategory(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v0

    const/16 v2, 0x5d

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 265
    :cond_3
    sget v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->STORE:I

    if-ne p1, v2, :cond_4

    const/16 v2, 0x5e

    aput-boolean v3, v1, v2

    .line 267
    invoke-direct {p0, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getStatisticsChartDataByStore(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v0

    const/16 v2, 0x5f

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 269
    :cond_4
    sget v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->PRODUCT:I

    if-eq p1, v2, :cond_5

    const/16 v2, 0x60

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_5
    const/16 v2, 0x61

    aput-boolean v3, v1, v2

    .line 271
    invoke-direct {p0, p2, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getStatisticsChartDataByProduct(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v0

    const/16 v2, 0x62

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private getStatisticsChartDataByCategory(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;",
            ">;)",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v3

    .line 372
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/16 v2, 0x97

    aput-boolean v12, v3, v2

    .line 373
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x98

    aput-boolean v12, v3, v2

    .line 374
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v2, 0x99

    aput-boolean v12, v3, v2

    .line 376
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v2, 0x9a

    aput-boolean v12, v3, v2

    .local v0, "total":Ljava/lang/Double;
    .local v1, "value":Ljava/lang/Double;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;

    const/16 v7, 0x9b

    aput-boolean v12, v3, v7

    .line 378
    invoke-direct {p0, p1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getCurrentTotal(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)D

    move-result-wide v8

    const/16 v7, 0x9c

    aput-boolean v12, v3, v7

    .line 379
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v7, 0x9d

    aput-boolean v12, v3, v7

    .line 381
    .end local v1    # "value":Ljava/lang/Double;
    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getProductCategory()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x9e

    aput-boolean v12, v3, v7

    .line 382
    const/4 v7, 0x0

    const/16 v10, 0xa

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x9f

    aput-boolean v12, v3, v7

    .line 384
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 385
    .restart local v1    # "value":Ljava/lang/Double;
    if-nez v1, :cond_0

    const/16 v7, 0xa0

    aput-boolean v12, v3, v7

    .line 387
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xa1

    aput-boolean v12, v3, v7

    .line 388
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xa2

    aput-boolean v12, v3, v2

    .line 394
    :goto_1
    const/16 v2, 0xa4

    aput-boolean v12, v3, v2

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa3

    aput-boolean v12, v3, v2

    goto :goto_1

    .line 396
    :cond_1
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    invoke-direct {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;-><init>()V

    const/16 v6, 0xa5

    aput-boolean v12, v3, v6

    .line 397
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setTitle(Ljava/lang/String;)V

    const/16 v6, 0xa6

    aput-boolean v12, v3, v6

    .line 398
    invoke-direct {p0, v4, v5, v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->setupChartData(Ljava/util/Map;Ljava/util/List;Ljava/lang/Double;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v2

    const/16 v4, 0xa7

    aput-boolean v12, v3, v4

    return-object v2
.end method

.method private getStatisticsChartDataByDay(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;",
            ">;)",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v3

    .line 342
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/16 v2, 0x87

    aput-boolean v12, v3, v2

    .line 343
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x88

    aput-boolean v12, v3, v2

    .line 344
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v2, 0x89

    aput-boolean v12, v3, v2

    .line 346
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v2, 0x8a

    aput-boolean v12, v3, v2

    .local v0, "total":Ljava/lang/Double;
    .local v1, "value":Ljava/lang/Double;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;

    const/16 v7, 0x8b

    aput-boolean v12, v3, v7

    .line 348
    invoke-direct {p0, p1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getCurrentTotal(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)D

    move-result-wide v8

    const/16 v7, 0x8c

    aput-boolean v12, v3, v7

    .line 349
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v7, 0x8d

    aput-boolean v12, v3, v7

    .line 351
    .end local v1    # "value":Ljava/lang/Double;
    iget-object v7, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getRecordDate()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v7, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->getDayFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x8e

    aput-boolean v12, v3, v7

    .line 353
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 354
    .restart local v1    # "value":Ljava/lang/Double;
    if-nez v1, :cond_0

    const/16 v7, 0x8f

    aput-boolean v12, v3, v7

    .line 356
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x90

    aput-boolean v12, v3, v7

    .line 357
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x91

    aput-boolean v12, v3, v2

    .line 363
    :goto_1
    const/16 v2, 0x93

    aput-boolean v12, v3, v2

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x92

    aput-boolean v12, v3, v2

    goto :goto_1

    .line 365
    :cond_1
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    invoke-direct {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;-><init>()V

    const/16 v6, 0x94

    aput-boolean v12, v3, v6

    .line 366
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setTitle(Ljava/lang/String;)V

    const/16 v6, 0x95

    aput-boolean v12, v3, v6

    .line 367
    invoke-direct {p0, v4, v5, v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->setupChartData(Ljava/util/Map;Ljava/util/List;Ljava/lang/Double;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v2

    const/16 v4, 0x96

    aput-boolean v12, v3, v4

    return-object v2
.end method

.method private getStatisticsChartDataByMonth(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;",
            ">;)",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v3

    .line 278
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/16 v2, 0x64

    aput-boolean v12, v3, v2

    .line 279
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x65

    aput-boolean v12, v3, v2

    .line 280
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v2, 0x66

    aput-boolean v12, v3, v2

    .line 282
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v2, 0x67

    aput-boolean v12, v3, v2

    .local v0, "total":Ljava/lang/Double;
    .local v1, "value":Ljava/lang/Double;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;

    const/16 v7, 0x68

    aput-boolean v12, v3, v7

    .line 284
    invoke-direct {p0, p1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getCurrentTotal(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)D

    move-result-wide v8

    const/16 v7, 0x69

    aput-boolean v12, v3, v7

    .line 285
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v7, 0x6a

    aput-boolean v12, v3, v7

    .line 287
    .end local v1    # "value":Ljava/lang/Double;
    iget-object v7, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getRecordDate()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v7, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->getMonthFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x6b

    aput-boolean v12, v3, v7

    .line 289
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 290
    .restart local v1    # "value":Ljava/lang/Double;
    if-nez v1, :cond_0

    const/16 v7, 0x6c

    aput-boolean v12, v3, v7

    .line 292
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x6d

    aput-boolean v12, v3, v7

    .line 293
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x6e

    aput-boolean v12, v3, v2

    .line 299
    :goto_1
    const/16 v2, 0x70

    aput-boolean v12, v3, v2

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x6f

    aput-boolean v12, v3, v2

    goto :goto_1

    .line 301
    :cond_1
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    invoke-direct {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;-><init>()V

    const/16 v6, 0x71

    aput-boolean v12, v3, v6

    .line 302
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setTitle(Ljava/lang/String;)V

    const/16 v6, 0x72

    aput-boolean v12, v3, v6

    .line 303
    invoke-direct {p0, v4, v5, v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->setupChartData(Ljava/util/Map;Ljava/util/List;Ljava/lang/Double;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v2

    const/16 v4, 0x73

    aput-boolean v12, v3, v4

    return-object v2
.end method

.method private getStatisticsChartDataByProduct(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;",
            ">;)",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v3

    .line 434
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/16 v2, 0xb9

    aput-boolean v12, v3, v2

    .line 435
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xba

    aput-boolean v12, v3, v2

    .line 436
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v2, 0xbb

    aput-boolean v12, v3, v2

    .line 438
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v2, 0xbc

    aput-boolean v12, v3, v2

    .local v0, "total":Ljava/lang/Double;
    .local v1, "value":Ljava/lang/Double;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;

    const/16 v7, 0xbd

    aput-boolean v12, v3, v7

    .line 440
    invoke-direct {p0, p1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getCurrentTotal(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)D

    move-result-wide v8

    const/16 v7, 0xbe

    aput-boolean v12, v3, v7

    .line 441
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v7, 0xbf

    aput-boolean v12, v3, v7

    .line 443
    .end local v1    # "value":Ljava/lang/Double;
    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getProductName()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xc0

    aput-boolean v12, v3, v7

    .line 444
    const/4 v7, 0x0

    const/16 v10, 0xa

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xc1

    aput-boolean v12, v3, v7

    .line 446
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 447
    .restart local v1    # "value":Ljava/lang/Double;
    if-nez v1, :cond_0

    const/16 v7, 0xc2

    aput-boolean v12, v3, v7

    .line 449
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xc3

    aput-boolean v12, v3, v7

    .line 450
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xc4

    aput-boolean v12, v3, v2

    .line 456
    :goto_1
    const/16 v2, 0xc6

    aput-boolean v12, v3, v2

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc5

    aput-boolean v12, v3, v2

    goto :goto_1

    .line 458
    :cond_1
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    invoke-direct {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;-><init>()V

    const/16 v6, 0xc7

    aput-boolean v12, v3, v6

    .line 459
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setTitle(Ljava/lang/String;)V

    const/16 v6, 0xc8

    aput-boolean v12, v3, v6

    .line 460
    invoke-direct {p0, v4, v5, v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->setupChartData(Ljava/util/Map;Ljava/util/List;Ljava/lang/Double;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v2

    const/16 v4, 0xc9

    aput-boolean v12, v3, v4

    return-object v2
.end method

.method private getStatisticsChartDataByStore(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;",
            ">;)",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v3

    .line 403
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/16 v2, 0xa8

    aput-boolean v12, v3, v2

    .line 404
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xa9

    aput-boolean v12, v3, v2

    .line 405
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v2, 0xaa

    aput-boolean v12, v3, v2

    .line 407
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v2, 0xab

    aput-boolean v12, v3, v2

    .local v0, "total":Ljava/lang/Double;
    .local v1, "value":Ljava/lang/Double;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;

    const/16 v7, 0xac

    aput-boolean v12, v3, v7

    .line 409
    invoke-direct {p0, p1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getCurrentTotal(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)D

    move-result-wide v8

    const/16 v7, 0xad

    aput-boolean v12, v3, v7

    .line 410
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v7, 0xae

    aput-boolean v12, v3, v7

    .line 412
    .end local v1    # "value":Ljava/lang/Double;
    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getProductStore()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xaf

    aput-boolean v12, v3, v7

    .line 413
    const/4 v7, 0x0

    const/16 v10, 0xa

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xb0

    aput-boolean v12, v3, v7

    .line 415
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 416
    .restart local v1    # "value":Ljava/lang/Double;
    if-nez v1, :cond_0

    const/16 v7, 0xb1

    aput-boolean v12, v3, v7

    .line 418
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xb2

    aput-boolean v12, v3, v7

    .line 419
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xb3

    aput-boolean v12, v3, v2

    .line 425
    :goto_1
    const/16 v2, 0xb5

    aput-boolean v12, v3, v2

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb4

    aput-boolean v12, v3, v2

    goto :goto_1

    .line 427
    :cond_1
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    invoke-direct {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;-><init>()V

    const/16 v6, 0xb6

    aput-boolean v12, v3, v6

    .line 428
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setTitle(Ljava/lang/String;)V

    const/16 v6, 0xb7

    aput-boolean v12, v3, v6

    .line 429
    invoke-direct {p0, v4, v5, v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->setupChartData(Ljava/util/Map;Ljava/util/List;Ljava/lang/Double;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v2

    const/16 v4, 0xb8

    aput-boolean v12, v3, v4

    return-object v2
.end method

.method private getStatisticsChartDataByWeek(ILjava/util/List;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;",
            ">;)",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v3

    .line 308
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/16 v2, 0x74

    aput-boolean v12, v3, v2

    .line 309
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x75

    aput-boolean v12, v3, v2

    .line 310
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v2, 0x76

    aput-boolean v12, v3, v2

    .line 312
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v2, 0x77

    aput-boolean v12, v3, v2

    .local v0, "total":Ljava/lang/Double;
    .local v1, "value":Ljava/lang/Double;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;

    const/16 v7, 0x78

    aput-boolean v12, v3, v7

    .line 314
    invoke-direct {p0, p1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getCurrentTotal(ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)D

    move-result-wide v8

    const/16 v7, 0x79

    aput-boolean v12, v3, v7

    .line 315
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v7, 0x7a

    aput-boolean v12, v3, v7

    .line 317
    .end local v1    # "value":Ljava/lang/Double;
    new-instance v7, Lorg/joda/time/DateTime;

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getRecordDate()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v7, v2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v12}, Lorg/joda/time/DateTime;->withDayOfWeek(I)Lorg/joda/time/DateTime;

    move-result-object v2

    const/16 v7, 0x7b

    aput-boolean v12, v3, v7

    .line 319
    iget-object v7, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v10

    invoke-interface {v7, v10}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->getMonthFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x7c

    aput-boolean v12, v3, v10

    .line 320
    invoke-virtual {v2}, Lorg/joda/time/DateTime;->weekOfWeekyear()Lorg/joda/time/DateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTime$Property;->get()I

    move-result v2

    const/16 v10, 0x7d

    aput-boolean v12, v3, v10

    .line 321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ")"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x7e

    aput-boolean v12, v3, v7

    .line 323
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 324
    .restart local v1    # "value":Ljava/lang/Double;
    if-nez v1, :cond_0

    const/16 v7, 0x7f

    aput-boolean v12, v3, v7

    .line 326
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x80

    aput-boolean v12, v3, v7

    .line 327
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x81

    aput-boolean v12, v3, v2

    .line 333
    :goto_1
    const/16 v2, 0x83

    aput-boolean v12, v3, v2

    goto/16 :goto_0

    .line 331
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x82

    aput-boolean v12, v3, v2

    goto :goto_1

    .line 335
    :cond_1
    new-instance v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    invoke-direct {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;-><init>()V

    const/16 v6, 0x84

    aput-boolean v12, v3, v6

    .line 336
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setTitle(Ljava/lang/String;)V

    const/16 v6, 0x85

    aput-boolean v12, v3, v6

    .line 337
    invoke-direct {p0, v4, v5, v0, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->setupChartData(Ljava/util/Map;Ljava/util/List;Ljava/lang/Double;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v2

    const/16 v4, 0x86

    aput-boolean v12, v3, v4

    return-object v2
.end method

.method private synthetic lambda$deleteAll$3(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;->deleteById(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xe8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$deleteById$7(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 167
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;->deleteById(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xe0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$getAll$1()Lrx/Observable;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getAllSync()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v1

    const/16 v2, 0xea

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$getAllSync$2(Ljava/util/List;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 94
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xe9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private synthetic lambda$getChartData$8(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 177
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getChartDataSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;

    move-result-object v1

    const/16 v2, 0xdf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$getChartDataSync$10(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Integer;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getRecordDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getRecordDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private static synthetic lambda$getChartDataSync$9(Lorg/joda/time/DateTime;Lorg/joda/time/DateTime;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v2

    .line 196
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->getRecordDate()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0xd9

    aput-boolean v1, v2, v3

    .line 197
    invoke-virtual {p0, v1}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v0, 0xda

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v3, 0xdd

    aput-boolean v1, v2, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v3, 0xde

    aput-boolean v1, v2, v3

    return-object v0

    :cond_0
    invoke-virtual {p1, v1}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/joda/time/DateTime;->isAfter(Lorg/joda/time/ReadableInstant;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xdb

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xdc

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method private static synthetic lambda$getMaxDateSync$5(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/16 v1, 0xe4

    aput-boolean v6, v0, v1

    :goto_0
    const/16 v1, 0xe6

    aput-boolean v6, v0, v1

    return-object p0

    :cond_0
    const/16 v1, 0xe5

    aput-boolean v6, v0, v1

    move-object p0, p1

    goto :goto_0
.end method

.method private static synthetic lambda$getMinDateSync$6(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/16 v1, 0xe1

    aput-boolean v6, v0, v1

    :goto_0
    const/16 v1, 0xe3

    aput-boolean v6, v0, v1

    return-object p0

    :cond_0
    const/16 v1, 0xe2

    aput-boolean v6, v0, v1

    move-object p0, p1

    goto :goto_0
.end method

.method private synthetic lambda$getRange$4()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->getRangeSync()Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;

    move-result-object v1

    const/16 v2, 0xe7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private synthetic lambda$saveRecord$0(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->saveRecordSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0xeb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private saveRecordSync(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;-><init>()V

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    .line 72
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-interface {v2, p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->convertItemToEntity(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)V

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    .line 73
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->setRecordDate(Ljava/util/Date;)V

    const/16 v2, 0x9

    aput-boolean v3, v0, v2

    .line 74
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    invoke-interface {v2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;->save(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Long;

    .line 75
    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private setAxisNames(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 239
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x54

    aput-boolean v5, v1, v3

    .line 240
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "valuesStrings":[Ljava/lang/String;
    aget-object v2, v2, p1

    iput-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->xAxisName:Ljava/lang/String;

    .line 243
    aget-object v2, v0, p2

    iput-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->yAxisName:Ljava/lang/String;

    .line 244
    const/16 v2, 0x55

    aput-boolean v5, v1, v2

    return-void
.end method

.method private setupChartData(Ljava/util/Map;Ljava/util/List;Ljava/lang/Double;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Double;",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;",
            ")",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 479
    invoke-virtual {p4, p3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setTotal(Ljava/lang/Double;)V

    const/16 v0, 0xce

    aput-boolean v5, v1, v0

    .line 480
    invoke-virtual {p4, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setLabels(Ljava/util/List;)V

    const/16 v0, 0xcf

    aput-boolean v5, v1, v0

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xd0

    aput-boolean v5, v1, v0

    .line 483
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v0, 0xd1

    aput-boolean v5, v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0xd2

    aput-boolean v5, v1, v4

    .line 485
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    const/16 v0, 0xd3

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {p4, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;->setData(Ljava/util/List;)V

    .line 488
    const/16 v0, 0xd4

    aput-boolean v5, v1, v0

    return-object p4
.end method


# virtual methods
.method public deleteAll()Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 102
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    const/16 v3, 0x13

    aput-boolean v5, v1, v3

    .line 103
    invoke-interface {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;->getAllEntities()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$5;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;)Lrx/functions/Func1;

    move-result-object v3

    const/16 v4, 0x14

    aput-boolean v5, v1, v4

    .line 104
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x15

    aput-boolean v5, v1, v3

    .line 105
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x16

    aput-boolean v5, v1, v3

    .line 106
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 108
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    const/16 v2, 0x17

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method public deleteById(Ljava/lang/String;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 166
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$11;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x33

    aput-boolean v4, v1, v3

    .line 167
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x34

    aput-boolean v4, v1, v3

    .line 168
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x35

    aput-boolean v4, v1, v3

    .line 169
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 170
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    const/16 v2, 0x36

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getAll()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 81
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$2;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;)Lrx/functions/Func0;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v4, v1, v3

    .line 82
    invoke-static {v2}, Lrx/Observable;->defer(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0xc

    aput-boolean v4, v1, v3

    .line 83
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0xd

    aput-boolean v4, v1, v3

    .line 84
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 85
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;>;"
    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getChartData(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;",
            ")",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 176
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$12;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x37

    aput-boolean v4, v1, v3

    .line 177
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x38

    aput-boolean v4, v1, v3

    .line 178
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x39

    aput-boolean v4, v1, v3

    .line 179
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 180
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsChartData;>;"
    const/16 v2, 0x3a

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getRange()Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 114
    invoke-static {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$6;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/16 v3, 0x18

    aput-boolean v4, v1, v3

    .line 115
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x19

    aput-boolean v4, v1, v3

    .line 116
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x1a

    aput-boolean v4, v1, v3

    .line 117
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 118
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;>;"
    const/16 v2, 0x1b

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->yAxisName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->xAxisName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public saveRecord(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 62
    invoke-static {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl$$Lambda$1;->lambdaFactory$(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;)Ljava/util/concurrent/Callable;

    move-result-object v2

    const/4 v3, 0x3

    aput-boolean v4, v1, v3

    .line 63
    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    .line 64
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 65
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 66
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Void;>;"
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->statisticsDao:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;

    invoke-interface {v1, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;->setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V

    aput-boolean v2, v0, v2

    .line 55
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->converterService:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;

    invoke-interface {v1, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;->setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V

    .line 56
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/StatisticsServiceImpl;->context:Landroid/content/Context;

    .line 57
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method
