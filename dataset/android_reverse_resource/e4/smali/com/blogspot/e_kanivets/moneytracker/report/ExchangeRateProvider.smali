.class public Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;
.super Ljava/lang/Object;
.source "ExchangeRateProvider.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "ExchangeRateProvider"


# instance fields
.field private final rateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;"
        }
    .end annotation
.end field

.field private toCurrency:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1a6e5dfc7e6722c4L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->toCurrency:Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->readAll()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->getRateMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->rateMap:Ljava/util/Map;

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getRateMap(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 63
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 65
    .local v1, "rateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;>;"
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider$1;

    invoke-direct {v3, p0}, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x5

    aput-boolean v6, v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 74
    .local v0, "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->toCurrency:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x6

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v4, 0x7

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 79
    .end local v0    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_1
    const/16 v3, 0x8

    aput-boolean v6, v2, v3

    return-object v1
.end method


# virtual methods
.method public getRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .locals 5
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 54
    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    .line 58
    .local v0, "fromCurrency":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 56
    .end local v0    # "fromCurrency":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 58
    .restart local v0    # "fromCurrency":Ljava/lang/String;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->rateMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    const/4 v3, 0x4

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public getRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .locals 5
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 44
    if-nez p1, :cond_0

    const/4 v1, 0x0

    aput-boolean v4, v2, v4

    .line 48
    .local v0, "fromCurrency":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 46
    .end local v0    # "fromCurrency":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 48
    .restart local v0    # "fromCurrency":Ljava/lang/String;
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;->rateMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    goto :goto_0
.end method
