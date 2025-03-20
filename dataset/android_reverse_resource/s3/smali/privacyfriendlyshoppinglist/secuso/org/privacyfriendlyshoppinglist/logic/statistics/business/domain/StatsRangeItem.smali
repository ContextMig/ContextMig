.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;
.super Ljava/lang/Object;
.source "StatsRangeItem.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private maxDate:Ljava/lang/String;

.field private minDate:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4c6add911c8accd6L    # 1.3490995861783596E60

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getMaxDate()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->maxDate:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getMinDate()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->minDate:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setMaxDate(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->maxDate:Ljava/lang/String;

    .line 21
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setMinDate(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatsRangeItem;->minDate:Ljava/lang/String;

    .line 31
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
