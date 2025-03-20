.class public Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;
.super Ljava/lang/Object;
.source "SummaryRecord.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private amount:D

.field private currency:Ljava/lang/String;

.field private recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2710fe3f29115a51L    # -2.502107231267682E120

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->title:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->currency:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->amount:D

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->recordList:Ljava/util/List;

    .line 27
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public add(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)V
    .locals 3
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->recordList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    aput-boolean v2, v0, v2

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->$jacocoInit()[Z

    move-result-object v3

    .line 51
    instance-of v4, p1, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;

    if-eqz v4, :cond_3

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;

    .line 53
    .local v0, "summaryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->currency:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x6

    aput-boolean v2, v3, v4

    .line 55
    :goto_0
    const/16 v4, 0xa

    aput-boolean v2, v3, v4

    .line 53
    :goto_1
    const/16 v4, 0xb

    aput-boolean v2, v3, v4

    .line 56
    :goto_2
    return v1

    .line 53
    :cond_0
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->amount:D

    .line 54
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->getAmount()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->recordList:Ljava/util/List;

    .line 55
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->getRecordList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x8

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 56
    .end local v0    # "summaryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;
    :cond_3
    const/16 v4, 0xc

    aput-boolean v2, v3, v4

    goto :goto_2
.end method

.method public getAmount()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->amount:D

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->currency:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getRecordList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->recordList:Ljava/util/List;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->title:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
