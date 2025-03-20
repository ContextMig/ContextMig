.class public Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;
.super Ljava/lang/Object;
.source "CurrencyController.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

.field private currencyList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7077bb203d647294L    # 5.894839331153626E233

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/CurrencyController"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    .line 33
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    .line 34
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->fetchCurrencies()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->currencyList:Ljava/util/List;

    .line 35
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private fetchCurrencies()Ljava/util/List;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->$jacocoInit()[Z

    move-result-object v5

    .line 59
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 60
    .local v3, "toret":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Currency;>;"
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    .line 62
    .local v2, "locs":[Ljava/util/Locale;
    array-length v6, v2

    const/4 v4, 0x0

    const/4 v7, 0x6

    aput-boolean v10, v5, v7

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v7, v2, v4

    const/4 v8, 0x7

    const/4 v9, 0x1

    :try_start_0
    aput-boolean v9, v5, v8

    .line 64
    invoke-static {v7}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/16 v7, 0x8

    aput-boolean v10, v5, v7

    .line 62
    :goto_1
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0xa

    aput-boolean v10, v5, v7

    goto :goto_0

    .line 65
    :catch_0
    move-exception v7

    const/16 v7, 0x9

    aput-boolean v10, v5, v7

    goto :goto_1

    .line 70
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "currencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v6, 0xb

    aput-boolean v10, v5, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Currency;

    .line 72
    .local v0, "currency":Ljava/util/Currency;
    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const/16 v6, 0xc

    aput-boolean v10, v5, v6

    goto :goto_2

    .line 75
    .end local v0    # "currency":Ljava/util/Currency;
    :cond_1
    const-string/jumbo v4, "NON"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string/jumbo v4, "BYN"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 80
    const/16 v4, 0xd

    aput-boolean v10, v5, v4

    return-object v1
.end method


# virtual methods
.method public readAll()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->currencyList:Ljava/util/List;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public readDefaultCurrency()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->$jacocoInit()[Z

    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readDefaultCurrency()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "currency":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    .line 54
    :goto_0
    const/4 v3, 0x5

    aput-boolean v4, v2, v3

    return-object v0

    .line 49
    :cond_0
    const-string/jumbo v0, "NON"

    .line 50
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readDefaultAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v1

    .line 51
    .local v1, "defaultAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    if-nez v1, :cond_1

    const/4 v3, 0x3

    aput-boolean v4, v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    aput-boolean v4, v2, v3

    goto :goto_0
.end method
