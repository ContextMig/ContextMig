.class public Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;
.super Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;
.source "ExchangeRateController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x58c31915763dbfb3L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)V

    .line 22
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public createExchangeRatePair(Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;)Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    .locals 14
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->$jacocoInit()[Z

    move-result-object v11

    .line 44
    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/16 v2, 0xd

    const/4 v4, 0x1

    aput-boolean v4, v11, v2

    .line 56
    .local v0, "createdRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .local v1, "exchangeRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .local v3, "exchangeRateReverse":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .local v10, "createdReverseRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :goto_0
    return-object p1

    .line 47
    .end local v0    # "createdRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .end local v1    # "exchangeRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .end local v3    # "exchangeRateReverse":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .end local v10    # "createdReverseRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_0
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 48
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getFromCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getToCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getAmountBuy()D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;-><init>(JLjava/lang/String;Ljava/lang/String;D)V

    .line 49
    .restart local v1    # "exchangeRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 50
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getToCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getFromCurrency()Ljava/lang/String;

    move-result-object v7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getAmountSell()D

    move-result-wide v12

    div-double/2addr v8, v12

    invoke-direct/range {v3 .. v9}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;-><init>(JLjava/lang/String;Ljava/lang/String;D)V

    .line 52
    .restart local v3    # "exchangeRateReverse":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 53
    .restart local v0    # "createdRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 55
    .restart local v10    # "createdReverseRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    if-nez v0, :cond_1

    const/16 v2, 0xe

    const/4 v4, 0x1

    aput-boolean v4, v11, v2

    :goto_1
    const/4 p1, 0x0

    const/16 v2, 0x10

    const/4 v4, 0x1

    aput-boolean v4, v11, v2

    goto :goto_0

    :cond_1
    if-nez v10, :cond_2

    const/16 v2, 0xf

    const/4 v4, 0x1

    aput-boolean v4, v11, v2

    goto :goto_1

    .line 56
    :cond_2
    const/16 v2, 0x11

    const/4 v4, 0x1

    aput-boolean v4, v11, v2

    goto :goto_0
.end method

.method public deleteExchangeRatePair(Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;)V
    .locals 7
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->$jacocoInit()[Z

    move-result-object v2

    .line 25
    if-nez p1, :cond_0

    aput-boolean v6, v2, v6

    .line 40
    .local v1, "rateListToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;>;"
    :goto_0
    return-void

    .line 27
    .end local v1    # "rateListToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .restart local v1    # "rateListToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;>;"
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->readAll()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x2

    aput-boolean v6, v2, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 29
    .local v0, "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getFromCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x3

    aput-boolean v6, v2, v4

    .line 32
    :goto_2
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getToCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x6

    aput-boolean v6, v2, v4

    .line 35
    :goto_3
    const/16 v4, 0x9

    aput-boolean v6, v2, v4

    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getToCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x4

    aput-boolean v6, v2, v4

    goto :goto_2

    .line 31
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    aput-boolean v6, v2, v4

    goto :goto_2

    .line 33
    :cond_3
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->getFromCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x7

    aput-boolean v6, v2, v4

    goto :goto_3

    .line 34
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    aput-boolean v6, v2, v4

    goto :goto_3

    .line 37
    .end local v0    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v4, 0xa

    aput-boolean v6, v2, v4

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 38
    .restart local v0    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    invoke-virtual {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->delete(Ljava/lang/Object;)Z

    .line 39
    const/16 v4, 0xb

    aput-boolean v6, v2, v4

    goto :goto_4

    .line 40
    .end local v0    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_6
    const/16 v3, 0xc

    aput-boolean v6, v2, v3

    goto/16 :goto_0
.end method
