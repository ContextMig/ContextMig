.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/AbstractEntity;
.source "StatisticEntryEntity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private productCategory:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private productName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private productStore:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private quantity:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private recordDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private unitPrice:Ljava/lang/Double;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5194c6bc76cf1ad9L    # -4.379234232064863E-85

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/AbstractEntity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getProductCategory()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->productCategory:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->productName:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getProductStore()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->productStore:Ljava/lang/String;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->quantity:Ljava/lang/Integer;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getRecordDate()Ljava/util/Date;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->recordDate:Ljava/util/Date;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getUnitPrice()Ljava/lang/Double;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->unitPrice:Ljava/lang/Double;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setProductCategory(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->productCategory:Ljava/lang/String;

    .line 81
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->productName:Ljava/lang/String;

    .line 51
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setProductStore(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->productStore:Ljava/lang/String;

    .line 91
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->quantity:Ljava/lang/Integer;

    .line 61
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setRecordDate(Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->recordDate:Ljava/util/Date;

    .line 41
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setUnitPrice(Ljava/lang/Double;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->unitPrice:Ljava/lang/Double;

    .line 71
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatisticEntryEntity{recordDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->recordDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->productName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quantity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->quantity:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unitPrice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->unitPrice:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productCategory=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->productCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productStore=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;->productStore:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
