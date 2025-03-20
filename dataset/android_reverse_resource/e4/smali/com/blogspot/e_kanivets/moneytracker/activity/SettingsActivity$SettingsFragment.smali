.class public Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsFragment"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3114aa1d80bd17b9L    # 2.9239249239854075E-72

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 149
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getEntries(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v4, 0xa

    aput-boolean v5, v3, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 132
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const/16 v4, 0xb

    aput-boolean v5, v3, v4

    goto :goto_0

    .line 135
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/16 v4, 0xc

    aput-boolean v5, v3, v4

    return-object v2
.end method

.method private getEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v4, 0xd

    aput-boolean v6, v3, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 143
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const/16 v4, 0xe

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 146
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/16 v4, 0xf

    aput-boolean v6, v3, v4

    return-object v2
.end method

.method private setupAboutPref()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 67
    const v2, 0x7f0e0065

    invoke-virtual {p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 68
    .local v0, "preference":Landroid/preference/Preference;
    const v2, 0x7f0e001e

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "1.8.7"

    aput-object v5, v3, v4

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    aput-boolean v6, v1, v7

    return-void
.end method

.method private setupDefaultAccountPref()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 73
    const v4, 0x7f0e0066

    invoke-virtual {p0, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 74
    .local v2, "defaultAccountPref":Landroid/preference/ListPreference;
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readActiveAccounts()Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;>;"
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getEntries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 78
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getEntryValues(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 80
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readDefaultAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v1

    .line 81
    .local v1, "defaultAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    if-nez v1, :cond_0

    .line 82
    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 83
    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v4, 0x3

    aput-boolean v5, v3, v4

    .line 88
    :goto_0
    const/4 v4, 0x5

    aput-boolean v5, v3, v4

    return-void

    .line 85
    :cond_0
    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v4, 0x4

    aput-boolean v5, v3, v4

    goto :goto_0
.end method

.method private setupDefaultCurrencyPref()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoInit()[Z

    move-result-object v4

    .line 92
    const v3, 0x7f0e0067

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 93
    .local v2, "defaultCurrencyPref":Landroid/preference/ListPreference;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readAll()Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "currencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 99
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->currencyController:Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/CurrencyController;->readDefaultCurrency()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "defaultCurrency":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v3, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    return-void
.end method

.method private setupDisplayPrecision()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const v7, 0x7f0e0063

    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoInit()[Z

    move-result-object v4

    .line 106
    const v3, 0x7f0e0068

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 107
    .local v0, "displayPrecisionPref":Landroid/preference/ListPreference;
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, "precisionListValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "precision_math"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string/jumbo v3, "precision_int"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string/jumbo v3, "precision_none"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, "precisionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v7}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const v3, 0x7f0e0062

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const v3, 0x7f0e0064

    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 121
    const-string/jumbo v3, "precision_math"

    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readDisplayPrecision()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x7

    aput-boolean v6, v4, v3

    .line 125
    :goto_0
    const/16 v3, 0x9

    aput-boolean v6, v4, v3

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0, v7}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0, v7}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    aput-boolean v6, v4, v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->get()Lcom/blogspot/e_kanivets/moneytracker/MtApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/MtApp;->getAppComponent()Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/blogspot/e_kanivets/moneytracker/di/AppComponent;->inject(Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;)V

    .line 58
    const v1, 0x7f110001

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->addPreferencesFromResource(I)V

    .line 60
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->setupDefaultAccountPref()V

    .line 61
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->setupDefaultCurrencyPref()V

    .line 62
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->setupDisplayPrecision()V

    .line 63
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity$SettingsFragment;->setupAboutPref()V

    .line 64
    aput-boolean v2, v0, v2

    return-void
.end method
