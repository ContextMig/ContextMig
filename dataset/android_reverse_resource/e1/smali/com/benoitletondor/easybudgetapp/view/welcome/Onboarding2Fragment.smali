.class public Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;
.super Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;
.source "Onboarding2Fragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private nextButton:Landroid/widget/Button;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private selectedCurrency:Ljava/util/Currency;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6a6f8ba537a2678L    # -3.466165087847945E276

    const-string v2, "com/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;-><init>()V

    .line 58
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$002(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;Ljava/util/Currency;)Ljava/util/Currency;
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->selectedCurrency:Ljava/util/Currency;

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->setNextButtonText()V

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setNextButtonText()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080065

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->selectedCurrency:Ljava/util/Currency;

    invoke-virtual {v6}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const/16 v1, 0xf

    aput-boolean v7, v0, v1

    return-void
.end method


# virtual methods
.method public getStatusBarColor()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    const v1, 0x7f0e006b

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->$jacocoInit()[Z

    move-result-object v1

    .line 66
    const v0, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    aput-boolean v5, v1, v5

    .line 68
    const v0, 0x7f0f00c5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->nextButton:Landroid/widget/Button;

    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    .line 69
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->nextButton:Landroid/widget/Button;

    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$1;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getUserCurrency(Landroid/content/Context;)Ljava/util/Currency;

    move-result-object v0

    iput-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->selectedCurrency:Ljava/util/Currency;

    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    .line 79
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->setNextButtonText()V

    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    .line 81
    new-instance v0, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;

    invoke-direct {v0}, Lcom/benoitletondor/easybudgetapp/view/selectcurrency/SelectCurrencyFragment;-><init>()V

    const/4 v3, 0x6

    aput-boolean v5, v1, v3

    .line 82
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const/4 v4, 0x7

    aput-boolean v5, v1, v4

    .line 83
    const v4, 0x7f0f00c6

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const/16 v0, 0x8

    aput-boolean v5, v1, v0

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "currency.selected"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    aput-boolean v5, v1, v3

    .line 86
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;

    invoke-direct {v3, p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;)V

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->receiver:Landroid/content/BroadcastReceiver;

    const/16 v3, 0xa

    aput-boolean v5, v1, v3

    .line 96
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 98
    const/16 v0, 0xb

    aput-boolean v5, v1, v0

    return-object v2
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding2Fragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 106
    invoke-super {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->onDestroyView()V

    .line 107
    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    return-void
.end method
