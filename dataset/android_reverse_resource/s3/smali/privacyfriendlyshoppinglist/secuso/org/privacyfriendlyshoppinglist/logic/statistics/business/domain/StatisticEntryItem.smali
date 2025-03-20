.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;
.super Ljava/lang/Object;
.source "StatisticEntryItem.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private productCategory:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productStore:Ljava/lang/String;

.field private quantity:Ljava/lang/String;

.field private recordDate:Ljava/lang/String;

.field private unitPrice:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x606a1d92c3edc37dL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getProductCategory()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->productCategory:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setProductCategory(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->productCategory:Ljava/lang/String;

    .line 70
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->productName:Ljava/lang/String;

    .line 40
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setProductStore(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->productStore:Ljava/lang/String;

    .line 80
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->quantity:Ljava/lang/String;

    .line 50
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setRecordDate(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->recordDate:Ljava/lang/String;

    .line 30
    aput-boolean v1, v0, v1

    return-void
.end method

.method public setUnitPrice(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->unitPrice:Ljava/lang/String;

    .line 60
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatisticEntryItem{recordDate=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->recordDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->productName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quantity=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->quantity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unitPrice=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->unitPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productCategory=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->productCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productStore=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;->productStore:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
