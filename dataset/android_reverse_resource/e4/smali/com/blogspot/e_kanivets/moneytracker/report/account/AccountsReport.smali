.class public Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;
.super Ljava/lang/Object;
.source "AccountsReport.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/report/account/IAccountsReport;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "AccountsReport"


# instance fields
.field private currency:Ljava/lang/String;

.field private rateProvider:Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;

.field private total:D


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x63b66cf0f732fbeL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/account/AccountsReport"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 28
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Params can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    throw v1

    .line 27
    :cond_0
    if-nez p3, :cond_1

    aput-boolean v3, v0, v3

    goto :goto_0

    .line 30
    :cond_1
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->currency:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->rateProvider:Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;

    .line 33
    invoke-direct {p0, p2}, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->makeReport(Ljava/util/List;)V

    .line 34
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method private makeReport(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->$jacocoInit()[Z

    move-result-object v4

    .line 48
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->total:D

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x6

    aput-boolean v8, v4, v6

    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .local v2, "convertedSum":D
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 51
    .restart local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getFullSum()D

    .end local v2    # "convertedSum":D
    move-result-wide v2

    .line 53
    .restart local v2    # "convertedSum":D
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->currency:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    aput-boolean v8, v4, v6

    .line 59
    :goto_1
    iget-wide v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->total:D

    add-double/2addr v6, v2

    iput-wide v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->total:D

    .line 60
    const/16 v6, 0xa

    aput-boolean v8, v4, v6

    goto :goto_0

    .line 54
    :cond_0
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->rateProvider:Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;

    invoke-interface {v6, v0}, Lcom/blogspot/e_kanivets/moneytracker/report/base/IExchangeRateProvider;->getRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    move-result-object v1

    .line 55
    .local v1, "exchangeRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    if-nez v1, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "No exchange rate found"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    aput-boolean v8, v4, v6

    throw v5

    .line 56
    :cond_1
    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v6

    mul-double/2addr v2, v6

    const/16 v6, 0x9

    aput-boolean v8, v4, v6

    goto :goto_1

    .line 61
    .end local v1    # "exchangeRate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_2
    const/16 v5, 0xb

    aput-boolean v8, v4, v5

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->currency:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTotal()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/report/account/AccountsReport;->total:D

    const/4 v1, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method
