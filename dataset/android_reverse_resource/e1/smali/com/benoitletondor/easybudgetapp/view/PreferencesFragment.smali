.class public Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferencesFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private notPremiumCategory:Landroid/preference/PreferenceCategory;

.field private notPremiumShown:Z

.field private premiumCategory:Landroid/preference/PreferenceCategory;

.field private premiumShown:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private selectCurrencyDialog:Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x391d0a3cba3c356dL    # -3.076437652792959E33

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment"

    const/16 v3, 0x49

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 84
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->premiumShown:Z

    .line 88
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->notPremiumShown:Z

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->selectCurrencyDialog:Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    const/16 v2, 0x44

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$002(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;)Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->selectCurrencyDialog:Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    const/16 v1, 0x43

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/Preference;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->setLimitWarningPreferenceTitle(Landroid/preference/Preference;)V

    const/16 v1, 0x45

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->showBecomePremiumDialog()V

    const/16 v1, 0x46

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$300(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/Preference;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    invoke-direct {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->setCurrencyPreferenceTitle(Landroid/preference/Preference;)V

    const/16 v1, 0x47

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->refreshPremiumPreference()V

    const/16 v1, 0x48

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private refreshPremiumPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 492
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->isUserPremium(Landroid/app/Application;)Z

    move-result v0

    .line 494
    .local v0, "isPremium":Z
    if-eqz v0, :cond_2

    .line 496
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->notPremiumShown:Z

    if-nez v1, :cond_0

    const/16 v1, 0x29

    aput-boolean v4, v2, v1

    .line 502
    :goto_0
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->premiumShown:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2c

    aput-boolean v4, v2, v1

    .line 509
    :goto_1
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08010d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$15;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x2f

    aput-boolean v4, v2, v1

    .line 532
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080108

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x30

    aput-boolean v4, v2, v3

    .line 533
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$16;

    invoke-direct {v3, p0, v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$16;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v3, 0x31

    aput-boolean v4, v2, v3

    .line 542
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->isUserAllowingDailyReminderPushes(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v1, 0x32

    aput-boolean v4, v2, v1

    .line 545
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080109

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x33

    aput-boolean v4, v2, v3

    .line 546
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$17;

    invoke-direct {v3, p0, v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$17;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v3, 0x34

    aput-boolean v4, v2, v3

    .line 555
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->isUserAllowingMonthlyReminderPushes(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 556
    const/16 v1, 0x35

    aput-boolean v4, v2, v1

    .line 666
    :goto_2
    const/16 v1, 0x3e

    aput-boolean v4, v2, v1

    return-void

    .line 496
    :cond_0
    const/16 v1, 0x2a

    aput-boolean v4, v2, v1

    .line 498
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->notPremiumCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 499
    iput-boolean v5, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->notPremiumShown:Z

    const/16 v1, 0x2b

    aput-boolean v4, v2, v1

    goto/16 :goto_0

    .line 502
    :cond_1
    const/16 v1, 0x2d

    aput-boolean v4, v2, v1

    .line 504
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->premiumCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 505
    iput-boolean v4, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->premiumShown:Z

    const/16 v1, 0x2e

    aput-boolean v4, v2, v1

    goto/16 :goto_1

    .line 559
    :cond_2
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->premiumShown:Z

    if-nez v1, :cond_3

    const/16 v1, 0x36

    aput-boolean v4, v2, v1

    .line 565
    :goto_3
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->notPremiumShown:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x39

    aput-boolean v4, v2, v1

    .line 572
    :goto_4
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080107

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$18;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$18;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3c

    aput-boolean v4, v2, v1

    .line 583
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08010c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$19;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3d

    aput-boolean v4, v2, v1

    goto :goto_2

    .line 559
    :cond_3
    const/16 v1, 0x37

    aput-boolean v4, v2, v1

    .line 561
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->premiumCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 562
    iput-boolean v5, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->premiumShown:Z

    const/16 v1, 0x38

    aput-boolean v4, v2, v1

    goto :goto_3

    .line 565
    :cond_4
    const/16 v1, 0x3a

    aput-boolean v4, v2, v1

    .line 567
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->notPremiumCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 568
    iput-boolean v4, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->notPremiumShown:Z

    const/16 v1, 0x3b

    aput-boolean v4, v2, v1

    goto :goto_4
.end method

.method private setCurrencyPreferenceTitle(Landroid/preference/Preference;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getUserCurrency(Landroid/content/Context;)Ljava/util/Currency;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 475
    const/16 v1, 0x27

    aput-boolean v6, v0, v1

    return-void
.end method

.method private setLimitWarningPreferenceTitle(Landroid/preference/Preference;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 484
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b6

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v6

    const-string v7, "low_money_warning_amount"

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInt(Ljava/lang/String;I)I

    move-result v6

    int-to-double v6, v6

    invoke-static {v5, v6, v7}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedCurrencyString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 485
    const/16 v1, 0x28

    aput-boolean v9, v0, v1

    return-void
.end method

.method private showBecomePremiumDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 670
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/benoitletondor/easybudgetapp/view/PremiumActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3f

    aput-boolean v5, v0, v2

    .line 671
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x4e34

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Landroid/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 672
    const/16 v1, 0x40

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v1, v6

    .line 98
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    .line 103
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08010e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$1;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    .line 116
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 146
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08010f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 172
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v6, v1, v2

    .line 173
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800fb

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "1.5.2"

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x7

    aput-boolean v6, v1, v2

    .line 174
    new-instance v2, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$4;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$4;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v0, 0x8

    aput-boolean v6, v1, v0

    .line 190
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const/16 v0, 0x9

    aput-boolean v6, v1, v0

    .line 191
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;

    invoke-direct {v0, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$5;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v0, 0xa

    aput-boolean v6, v1, v0

    .line 202
    invoke-direct {p0, v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->setCurrencyPreferenceTitle(Landroid/preference/Preference;)V

    const/16 v0, 0xb

    aput-boolean v6, v1, v0

    .line 207
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080105

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v3, 0xc

    aput-boolean v6, v1, v3

    .line 208
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

    invoke-direct {v3, p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/Preference;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v3, 0xd

    aput-boolean v6, v1, v3

    .line 287
    invoke-direct {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->setLimitWarningPreferenceTitle(Landroid/preference/Preference;)V

    const/16 v0, 0xe

    aput-boolean v6, v1, v0

    .line 292
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08010b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->premiumCategory:Landroid/preference/PreferenceCategory;

    const/16 v0, 0xf

    aput-boolean v6, v1, v0

    .line 293
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080106

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->notPremiumCategory:Landroid/preference/PreferenceCategory;

    const/16 v0, 0x10

    aput-boolean v6, v1, v0

    .line 294
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->refreshPremiumPreference()V

    const/16 v0, 0x11

    aput-boolean v6, v1, v0

    .line 299
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08010a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x12

    aput-boolean v6, v1, v3

    .line 300
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;

    invoke-direct {v3, p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$7;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v3, 0x13

    aput-boolean v6, v1, v3

    .line 309
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->isUserAllowingUpdatePushes(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v0, 0x14

    aput-boolean v6, v1, v0

    .line 314
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0800ff

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const/16 v0, 0x15

    aput-boolean v6, v1, v0

    .line 324
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080117

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$8;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$8;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v0, 0x16

    aput-boolean v6, v1, v0

    .line 339
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080100

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$9;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$9;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v0, 0x17

    aput-boolean v6, v1, v0

    .line 352
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080111

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$10;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$10;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v0, 0x18

    aput-boolean v6, v1, v0

    .line 365
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080113

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$11;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$11;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v0, 0x19

    aput-boolean v6, v1, v0

    .line 378
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080112

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$12;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$12;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v0, 0x1a

    aput-boolean v6, v1, v0

    .line 391
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080102

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x1b

    aput-boolean v6, v1, v3

    .line 392
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$13;

    invoke-direct {v3, p0, v0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$13;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/16 v3, 0x1c

    aput-boolean v6, v1, v3

    .line 401
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v0, 0x1d

    aput-boolean v6, v1, v0

    .line 407
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "currency.selected"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1e

    aput-boolean v6, v1, v3

    .line 408
    const-string v3, "iabStatusChanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v3, 0x1f

    aput-boolean v6, v1, v3

    .line 409
    const-string v3, "user.ispremium"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v3, 0x20

    aput-boolean v6, v1, v3

    .line 410
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;

    invoke-direct {v3, p0, v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$14;-><init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;Landroid/preference/Preference;)V

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->receiver:Landroid/content/BroadcastReceiver;

    const/16 v2, 0x21

    aput-boolean v6, v1, v2

    .line 456
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/16 v0, 0x22

    aput-boolean v6, v1, v0

    .line 461
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "showPremium"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x23

    aput-boolean v6, v1, v0

    .line 465
    :goto_0
    const/16 v0, 0x26

    aput-boolean v6, v1, v0

    return-void

    .line 461
    :cond_0
    const/16 v0, 0x24

    aput-boolean v6, v1, v0

    .line 463
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->showBecomePremiumDialog()V

    const/16 v0, 0x25

    aput-boolean v6, v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 677
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0x41

    aput-boolean v3, v0, v1

    .line 679
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 680
    const/16 v1, 0x42

    aput-boolean v3, v0, v1

    return-void
.end method
