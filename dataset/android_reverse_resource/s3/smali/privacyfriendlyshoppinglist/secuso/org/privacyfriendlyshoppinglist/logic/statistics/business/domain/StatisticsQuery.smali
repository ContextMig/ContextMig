.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;
.super Ljava/util/Observable;
.source "StatisticsQuery.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static CATEGORY:I

.field public static DAY:I

.field public static MONTH:I

.field public static PRICE:I

.field public static PRODUCT:I

.field public static QUANTITY:I

.field public static STORE:I

.field public static WEEK:I


# instance fields
.field private dateFrom:Ljava/lang/String;

.field private dateTo:Ljava/lang/String;

.field private groupBy:I

.field public valuesY:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1f31090f125b08b5L    # 1.938716353766925E-158

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    sput v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->MONTH:I

    .line 13
    sput v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->WEEK:I

    .line 14
    const/4 v1, 0x2

    sput v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->DAY:I

    .line 15
    const/4 v1, 0x3

    sput v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->CATEGORY:I

    .line 16
    const/4 v1, 0x4

    sput v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->STORE:I

    .line 17
    const/4 v1, 0x5

    sput v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->PRODUCT:I

    .line 19
    sput v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->PRICE:I

    .line 20
    sput v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->QUANTITY:I

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDateFrom()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->dateFrom:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getDateTo()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->dateTo:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getGroupBy()I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->groupBy:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getValuesY()I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iget v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->valuesY:I

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setDateFrom(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->dateFrom:Ljava/lang/String;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 38
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setChanged()V

    .line 39
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDateTo(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->dateTo:Ljava/lang/String;

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 49
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setChanged()V

    .line 50
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setGroupBy(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    iput p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->groupBy:I

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 60
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setChanged()V

    .line 61
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setValuesY(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    iput p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->valuesY:I

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 71
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->setChanged()V

    .line 72
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    return-void
.end method
