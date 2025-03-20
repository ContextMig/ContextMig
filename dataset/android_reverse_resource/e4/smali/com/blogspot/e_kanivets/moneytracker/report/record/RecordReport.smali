.class public Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;
.super Ljava/lang/Object;
.source "RecordReport.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "RecordReport"


# instance fields
.field private categoryRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private currency:Ljava/lang/String;

.field private period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

.field private rateProvider:Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;

.field private totalExpense:D

.field private totalIncome:D


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5f809c351b8f471bL    # 1.087432494958897E152

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/record/RecordReport"

    const/16 v3, 0x37

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/Period;Ljava/util/List;Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/Period;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 39
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Params can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    throw v1

    .line 38
    :cond_0
    if-nez p2, :cond_1

    aput-boolean v3, v0, v3

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 41
    :cond_3
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->currency:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    .line 43
    iput-object p4, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->rateProvider:Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->categoryRecordList:Ljava/util/List;

    .line 47
    invoke-direct {p0, p3}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->makeReport(Ljava/util/List;)V

    .line 48
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;DD)I
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->compareDoubles(DD)I

    move-result v1

    const/16 v2, 0x35

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->getAmount(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)D

    move-result-wide v2

    const/16 v1, 0x36

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method private compareDoubles(DD)I
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v2

    .line 223
    cmpl-double v0, p1, v4

    if-gtz v0, :cond_0

    const/16 v0, 0x2e

    aput-boolean v1, v2, v0

    .line 224
    :goto_0
    cmpg-double v0, p1, v4

    if-ltz v0, :cond_2

    const/16 v0, 0x31

    aput-boolean v1, v2, v0

    .line 225
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    const/16 v3, 0x34

    aput-boolean v1, v2, v3

    :goto_2
    return v0

    .line 223
    :cond_0
    cmpg-double v0, p3, v4

    if-ltz v0, :cond_1

    const/16 v0, 0x2f

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    const/16 v3, 0x30

    aput-boolean v1, v2, v3

    goto :goto_2

    .line 224
    :cond_2
    cmpl-double v0, p3, v4

    if-gtz v0, :cond_3

    const/16 v0, 0x32

    aput-boolean v1, v2, v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x33

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_2
.end method

.method private convertRecordList(Ljava/util/List;)Ljava/util/List;
    .locals 25
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v23

    .line 128
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v18, "convertedRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    const/16 v3, 0x19

    const/4 v4, 0x1

    aput-boolean v4, v23, v3

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 131
    .local v22, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    invoke-virtual/range {v22 .. v22}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v16

    .line 133
    .local v16, "convertedPrice":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->currency:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1a

    const/4 v4, 0x1

    aput-boolean v4, v23, v3

    .line 139
    :goto_1
    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v21, v0

    .line 141
    .local v21, "intConvertedPrice":I
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v16

    mul-int/lit8 v3, v21, 0x64

    int-to-double v6, v3

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v19, v0

    .line 143
    .local v19, "decConvertedPrice":I
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual/range {v22 .. v22}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getId()J

    move-result-wide v3

    invoke-virtual/range {v22 .. v22}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTime()J

    move-result-wide v5

    invoke-virtual/range {v22 .. v22}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v7

    .line 144
    invoke-virtual/range {v22 .. v22}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v9

    move/from16 v0, v21

    int-to-long v10, v0

    invoke-virtual/range {v22 .. v22}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->currency:Ljava/lang/String;

    move/from16 v0, v19

    int-to-long v14, v0

    invoke-direct/range {v2 .. v15}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;-><init>(JJILjava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;JLcom/blogspot/e_kanivets/moneytracker/entity/data/Account;Ljava/lang/String;J)V

    .line 147
    .local v2, "convertedRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const/16 v3, 0x1d

    const/4 v4, 0x1

    aput-boolean v4, v23, v3

    goto :goto_0

    .line 134
    .end local v2    # "convertedRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .end local v19    # "decConvertedPrice":I
    .end local v21    # "intConvertedPrice":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->rateProvider:Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;->getRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    move-result-object v20

    .line 135
    .local v20, "exchangeRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    if-nez v20, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "No exchange rate found"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1b

    const/4 v5, 0x1

    aput-boolean v5, v23, v4

    throw v3

    .line 136
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v4

    mul-double v16, v16, v4

    const/16 v3, 0x1c

    const/4 v4, 0x1

    aput-boolean v4, v23, v3

    goto :goto_1

    .line 150
    .end local v16    # "convertedPrice":D
    .end local v20    # "exchangeRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .end local v22    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_2
    const/16 v3, 0x1e

    const/4 v4, 0x1

    aput-boolean v4, v23, v3

    return-object v18
.end method

.method private createCategoryRecord(Ljava/lang/String;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;)",
            "Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v7

    .line 155
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 157
    .local v5, "titleSortedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;>;"
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "amount":D
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v6, 0x1f

    aput-boolean v9, v7, v6

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 160
    .local v3, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    invoke-direct {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->getAmount(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)D

    move-result-wide v10

    add-double/2addr v0, v10

    .line 162
    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "title":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x20

    aput-boolean v9, v7, v6

    .line 166
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const/16 v6, 0x22

    aput-boolean v9, v7, v6

    goto :goto_0

    .line 165
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x21

    aput-boolean v9, v7, v6

    goto :goto_1

    .line 169
    .end local v3    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;

    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->currency:Ljava/lang/String;

    invoke-direct {v2, p1, v6, v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    .line 171
    .local v2, "categoryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v6, 0x23

    aput-boolean v9, v7, v6

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 172
    .restart local v4    # "title":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v4, v6}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->createSummaryRecord(Ljava/lang/String;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;->add(Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;)V

    .line 173
    const/16 v6, 0x24

    aput-boolean v9, v7, v6

    goto :goto_2

    .line 175
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;->getSummaryRecordList()Ljava/util/List;

    move-result-object v6

    new-instance v8, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$2;

    invoke-direct {v8, p0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    const/16 v6, 0x25

    aput-boolean v9, v7, v6

    return-object v2
.end method

.method private createSummaryRecord(Ljava/lang/String;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;)",
            "Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v4

    .line 187
    const-wide/16 v0, 0x0

    .line 189
    .local v0, "amount":D
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v6, 0x26

    aput-boolean v8, v4, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 190
    .local v2, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    invoke-direct {p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->getAmount(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 191
    const/16 v6, 0x27

    aput-boolean v8, v4, v6

    goto :goto_0

    .line 193
    .end local v2    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_0
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->currency:Ljava/lang/String;

    invoke-direct {v3, p1, v5, v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    .line 195
    .local v3, "summaryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v6, 0x28

    aput-boolean v8, v4, v6

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 196
    .restart local v2    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    invoke-virtual {v3, v2}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->add(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)V

    .line 197
    const/16 v6, 0x29

    aput-boolean v8, v4, v6

    goto :goto_1

    .line 199
    .end local v2    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_1
    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->getRecordList()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$3;

    invoke-direct {v6, p0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$3;-><init>(Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 206
    const/16 v5, 0x2a

    aput-boolean v8, v4, v5

    return-object v3
.end method

.method private getAmount(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)D
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v2

    .line 210
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    const-wide/16 v0, 0x0

    const/16 v3, 0x2d

    aput-boolean v4, v2, v3

    :goto_0
    return-wide v0

    .line 212
    :pswitch_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v0

    const/16 v3, 0x2b

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v0

    neg-double v0, v0

    const/16 v3, 0x2c

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private makeReport(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v6

    .line 84
    iput-wide v8, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->totalIncome:D

    .line 85
    iput-wide v8, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->totalExpense:D

    .line 86
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->categoryRecordList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 88
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->convertRecordList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 90
    .local v3, "convertedRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 92
    .local v2, "categorySortedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v5, 0xc

    aput-boolean v12, v6, v5

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 93
    .local v4, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0xd

    aput-boolean v12, v6, v5

    .line 106
    :goto_1
    const/4 v1, 0x0

    .line 107
    .local v1, "categoryName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v5

    if-nez v5, :cond_0

    const/16 v5, 0x10

    aput-boolean v12, v6, v5

    .line 109
    :goto_2
    if-nez v1, :cond_1

    const/16 v5, 0x12

    aput-boolean v12, v6, v5

    .line 111
    :goto_3
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const/16 v5, 0x15

    aput-boolean v12, v6, v5

    goto :goto_0

    .line 95
    .end local v1    # "categoryName":Ljava/lang/String;
    :pswitch_0
    iget-wide v8, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->totalIncome:D

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->totalIncome:D

    .line 96
    const/16 v5, 0xe

    aput-boolean v12, v6, v5

    goto :goto_1

    .line 99
    :pswitch_1
    iget-wide v8, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->totalExpense:D

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v10

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->totalExpense:D

    .line 100
    const/16 v5, 0xf

    aput-boolean v12, v6, v5

    goto :goto_1

    .line 107
    .restart local v1    # "categoryName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x11

    aput-boolean v12, v6, v5

    goto :goto_2

    .line 109
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x13

    aput-boolean v12, v6, v5

    goto :goto_3

    .line 110
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x14

    aput-boolean v12, v6, v5

    goto :goto_3

    .line 114
    .end local v1    # "categoryName":Ljava/lang/String;
    .end local v4    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v5, 0x16

    aput-boolean v12, v6, v5

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "category":Ljava/lang/String;
    iget-object v8, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->categoryRecordList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v0, v5}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->createCategoryRecord(Ljava/lang/String;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const/16 v5, 0x17

    aput-boolean v12, v6, v5

    goto :goto_4

    .line 118
    .end local v0    # "category":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->categoryRecordList:Ljava/util/List;

    new-instance v7, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;

    invoke-direct {v7, p0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    const/16 v5, 0x18

    aput-boolean v12, v6, v5

    return-void

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->currency:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->period:Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSummary()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->categoryRecordList:Ljava/util/List;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTotal()D
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->getTotalExpense()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->getTotalIncome()D

    move-result-wide v4

    add-double/2addr v2, v4

    const/16 v1, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTotalExpense()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->totalExpense:D

    const/16 v1, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTotalIncome()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;->totalIncome:D

    const/16 v1, 0x9

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method
