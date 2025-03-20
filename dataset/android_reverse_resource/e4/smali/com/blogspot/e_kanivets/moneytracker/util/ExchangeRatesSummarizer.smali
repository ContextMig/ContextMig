.class public Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;
.super Ljava/lang/Object;
.source "ExchangeRatesSummarizer.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private rateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2ac58a3a78e61badL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->rateList:Ljava/util/List;

    .line 27
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getPairedSummaryList()Ljava/util/List;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->$jacocoInit()[Z

    move-result-object v7

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "exchangeRatePairList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;>;"
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 67
    .local v4, "rateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;>;"
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->getSummaryList()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "exchangeRateList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v9, 0xa

    aput-boolean v11, v7, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 69
    .local v3, "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "ratePair":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "reverseRatePair":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 73
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    .line 74
    .local v2, "pair":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->setSecondRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;)V

    .line 75
    const/16 v9, 0xb

    aput-boolean v11, v7, v9

    .line 83
    :goto_1
    const/16 v9, 0xe

    aput-boolean v11, v7, v9

    goto :goto_0

    .line 75
    .end local v2    # "pair":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    :cond_0
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 76
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    .line 77
    .restart local v2    # "pair":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->setSecondRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;)V

    .line 78
    const/16 v9, 0xc

    aput-boolean v11, v7, v9

    goto :goto_1

    .line 79
    .end local v2    # "pair":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    :cond_1
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    invoke-direct {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;-><init>()V

    .line 80
    .restart local v2    # "pair":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    invoke-virtual {v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->setFirstRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;)V

    .line 81
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xd

    aput-boolean v11, v7, v9

    goto :goto_1

    .line 85
    .end local v2    # "pair":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    .end local v3    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .end local v5    # "ratePair":Ljava/lang/String;
    .end local v6    # "reverseRatePair":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v9, 0xf

    aput-boolean v11, v7, v9

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 86
    .restart local v5    # "ratePair":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;

    .line 87
    .restart local v2    # "pair":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->make()Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v9, 0x10

    aput-boolean v11, v7, v9

    .line 88
    :goto_3
    const/16 v9, 0x12

    aput-boolean v11, v7, v9

    goto :goto_2

    .line 87
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x11

    aput-boolean v11, v7, v9

    goto :goto_3

    .line 90
    .end local v2    # "pair":Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
    .end local v5    # "ratePair":Ljava/lang/String;
    :cond_4
    const/16 v8, 0x13

    aput-boolean v11, v7, v8

    return-object v1
.end method

.method public getSummaryList()Ljava/util/List;
    .locals 13
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->$jacocoInit()[Z

    move-result-object v5

    .line 34
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 36
    .local v2, "rateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;>;"
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;->rateList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    aput-boolean v12, v5, v12

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 37
    .local v1, "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "ratePair":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 40
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 41
    .local v0, "curRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getCreatedAt()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getCreatedAt()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    const/4 v7, 0x2

    aput-boolean v12, v5, v7

    .line 42
    :goto_1
    const/4 v7, 0x4

    aput-boolean v12, v5, v7

    .line 43
    .end local v0    # "curRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :goto_2
    const/4 v7, 0x6

    aput-boolean v12, v5, v7

    goto :goto_0

    .line 41
    .restart local v0    # "curRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_0
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x3

    aput-boolean v12, v5, v7

    goto :goto_1

    .line 42
    .end local v0    # "curRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_1
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x5

    aput-boolean v12, v5, v7

    goto :goto_2

    .line 45
    .end local v1    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .end local v3    # "ratePair":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v4, "summaryList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x7

    aput-boolean v12, v5, v7

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    .restart local v3    # "ratePair":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const/16 v7, 0x8

    aput-boolean v12, v5, v7

    goto :goto_3

    .line 51
    .end local v3    # "ratePair":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;

    invoke-direct {v6, p0}, Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/util/ExchangeRatesSummarizer;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    const/16 v6, 0x9

    aput-boolean v12, v5, v6

    return-object v4
.end method
