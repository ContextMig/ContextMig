.class public Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;
.super Ljava/lang/Object;
.source "MonthReport.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final currency:Ljava/lang/String;

.field private final monthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xa1a43677a4de0f2L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/chart/MonthReport"

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 31
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Params can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    throw v1

    .line 30
    :cond_0
    if-nez p2, :cond_1

    aput-boolean v3, v0, v3

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 33
    :cond_2
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->currency:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p3}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->generateReport(Ljava/util/List;Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->monthList:Ljava/util/List;

    .line 36
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method

.method private generateReport(Ljava/util/List;Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;)Ljava/util/List;
    .locals 16
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoInit()[Z

    move-result-object v9

    .line 91
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 93
    .local v5, "monthMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v13, 0xf

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 94
    .local v7, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    invoke-virtual {v7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->getMonthTimestamp(J)J

    move-result-wide v10

    .line 96
    .local v10, "timestamp":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_0

    const/16 v13, 0x10

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    .line 97
    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;

    .line 99
    .local v6, "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    invoke-virtual {v7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v2

    .line 100
    .local v2, "convertedPrice":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->currency:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v13, 0x12

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    .line 106
    :goto_2
    invoke-virtual {v7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    const/16 v13, 0x15

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    .line 118
    :goto_3
    const/16 v13, 0x18

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    goto :goto_0

    .line 96
    .end local v2    # "convertedPrice":D
    .end local v6    # "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    :cond_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v14, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;

    invoke-direct {v14, v10, v11}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;-><init>(J)V

    invoke-interface {v5, v13, v14}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v13, 0x11

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    goto :goto_1

    .line 101
    .restart local v2    # "convertedPrice":D
    .restart local v6    # "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    :cond_1
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;->getRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    move-result-object v4

    .line 102
    .local v4, "exchangeRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    if-nez v4, :cond_2

    new-instance v12, Ljava/lang/NullPointerException;

    const-string/jumbo v13, "No exchange rate found"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x13

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    throw v12

    .line 103
    :cond_2
    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v14

    mul-double/2addr v2, v14

    const/16 v13, 0x14

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    goto :goto_2

    .line 108
    .end local v4    # "exchangeRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :pswitch_0
    invoke-virtual {v6, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->addIncome(D)V

    .line 109
    const/16 v13, 0x16

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    goto :goto_3

    .line 112
    :pswitch_1
    invoke-virtual {v6, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->addExpense(D)V

    .line 113
    const/16 v13, 0x17

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    goto :goto_3

    .line 120
    .end local v2    # "convertedPrice":D
    .end local v6    # "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    .end local v7    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .end local v10    # "timestamp":J
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v8, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;>;"
    invoke-interface {v5}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v13, 0x19

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 122
    .local v10, "timestamp":Ljava/lang/Long;
    invoke-interface {v5, v10}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/16 v13, 0x1a

    const/4 v14, 0x1

    aput-boolean v14, v9, v13

    goto :goto_4

    .line 125
    .end local v10    # "timestamp":Ljava/lang/Long;
    :cond_4
    const/16 v12, 0x1b

    const/4 v13, 0x1

    aput-boolean v13, v9, v12

    return-object v8

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMonthTimestamp(J)J
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoInit()[Z

    move-result-object v1

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 130
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 132
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 133
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 134
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 138
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v4, 0x1c

    aput-boolean v5, v1, v4

    return-wide v2
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    const/4 v1, 0x0

    const/16 v2, 0x1d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->currency:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getExpenseList()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoInit()[Z

    move-result-object v2

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->monthList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v4, 0xc

    aput-boolean v6, v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;

    .line 79
    .local v0, "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->getTotalExpense()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const/16 v4, 0xd

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 82
    .end local v0    # "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    :cond_0
    const/16 v3, 0xe

    aput-boolean v6, v2, v3

    return-object v1
.end method

.method public getIncomeList()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoInit()[Z

    move-result-object v2

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->monthList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v4, 0x9

    aput-boolean v6, v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;

    .line 67
    .local v0, "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->getTotalIncome()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const/16 v4, 0xa

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 70
    .end local v0    # "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    :cond_0
    const/16 v3, 0xb

    aput-boolean v6, v2, v3

    return-object v1
.end method

.method public getMonthList()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoInit()[Z

    move-result-object v2

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->monthList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x6

    aput-boolean v6, v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;

    .line 55
    .local v0, "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v4, 0x7

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 58
    .end local v0    # "node":Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport$MonthNode;
    :cond_0
    const/16 v3, 0x8

    aput-boolean v6, v2, v3

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->$jacocoInit()[Z

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->currency:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;->monthList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
