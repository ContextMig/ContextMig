.class public Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;
.super Ljava/lang/Object;
.source "ReportMaker.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4968e4c6f750d330L    # 4.44117752483847E45

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/ReportMaker"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    .line 35
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public currencyNeeded(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->$jacocoInit()[Z

    move-result-object v3

    .line 63
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 65
    .local v0, "currencies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x7

    aput-boolean v6, v3, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 66
    .local v2, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    const/16 v5, 0x8

    aput-boolean v6, v3, v5

    goto :goto_0

    .line 69
    .end local v2    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->readAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v5, 0x9

    aput-boolean v6, v3, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 72
    .local v1, "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0xa

    aput-boolean v6, v3, v5

    .line 73
    :goto_2
    const/16 v5, 0xc

    aput-boolean v6, v3, v5

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/16 v5, 0xb

    aput-boolean v6, v3, v5

    goto :goto_2

    .line 75
    .end local v1    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v5, 0xd

    aput-boolean v6, v3, v5

    return-object v4
.end method

.method public currencyNeededAccounts(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->$jacocoInit()[Z

    move-result-object v3

    .line 80
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 82
    .local v1, "currencies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v5, 0xe

    aput-boolean v6, v3, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 83
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    const/16 v5, 0xf

    aput-boolean v6, v3, v5

    goto :goto_0

    .line 86
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;->readAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v5, 0x10

    aput-boolean v6, v3, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 89
    .local v2, "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x11

    aput-boolean v6, v3, v5

    .line 90
    :goto_2
    const/16 v5, 0x13

    aput-boolean v6, v3, v5

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v2}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/16 v5, 0x12

    aput-boolean v6, v3, v5

    goto :goto_2

    .line 92
    .end local v2    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v5, 0x14

    aput-boolean v6, v3, v5

    return-object v4
.end method

.method public getAccountsReport(Ljava/lang/String;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/account/IAccountsReport;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;)",
            "Lcom/blogspot/e_kanivets/moneytracker/report/account/IAccountsReport;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->$jacocoInit()[Z

    move-result-object v2

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->currencyNeededAccounts(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    .line 50
    .local v0, "rateProvider":Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
    :goto_0
    return-object v1

    .line 49
    .end local v0    # "rateProvider":Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
    :cond_0
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-direct {v0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;-><init>(Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;)V

    .line 50
    .restart local v0    # "rateProvider":Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;

    invoke-direct {v1, p1, p2, v0}, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;)V

    const/4 v3, 0x4

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public getMonthReport(Ljava/lang/String;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;)",
            "Lcom/blogspot/e_kanivets/moneytracker/report/chart/IMonthReport;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->$jacocoInit()[Z

    move-result-object v2

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->currencyNeeded(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x5

    aput-boolean v4, v2, v3

    .line 58
    .local v0, "rateProvider":Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
    :goto_0
    return-object v1

    .line 57
    .end local v0    # "rateProvider":Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
    :cond_0
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-direct {v0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;-><init>(Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;)V

    .line 58
    .restart local v0    # "rateProvider":Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;

    invoke-direct {v1, p2, p1, v0}, Lcom/blogspot/e_kanivets/moneytracker/report/chart/MonthReport;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;)V

    const/4 v3, 0x6

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public getRecordReport(Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/Period;Ljava/util/List;)Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/Period;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;)",
            "Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->$jacocoInit()[Z

    move-result-object v2

    .line 39
    invoke-virtual {p0, p1, p3}, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->currencyNeeded(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v4, v2, v4

    .line 42
    .local v0, "rateProvider":Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
    :goto_0
    return-object v1

    .line 41
    .end local v0    # "rateProvider":Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
    :cond_0
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;

    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/ReportMaker;->rateController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;

    invoke-direct {v0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/report/ExchangeRateProvider;-><init>(Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/controller/data/ExchangeRateController;)V

    .line 42
    .restart local v0    # "rateProvider":Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReport;-><init>(Ljava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/Period;Ljava/util/List;Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;)V

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    goto :goto_0
.end method
