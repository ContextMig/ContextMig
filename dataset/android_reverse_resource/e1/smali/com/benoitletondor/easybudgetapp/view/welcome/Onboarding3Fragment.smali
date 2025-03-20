.class public Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;
.super Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;
.source "Onboarding3Fragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private amountEditText:Landroid/widget/EditText;

.field private moneyTextView:Landroid/widget/TextView;

.field private nextButton:Landroid/widget/Button;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x71bfaa83c2504b6aL    # 8.248040300222399E239

    const-string v2, "com/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment"

    const/16 v3, 0x2f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;-><init>()V

    .line 62
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->setButtonText()V

    const/16 v1, 0x2c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;)D
    .locals 5

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getAmountValue()D

    move-result-wide v2

    const/16 v1, 0x2d

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method static synthetic access$200(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->amountEditText:Landroid/widget/EditText;

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getAmountValue()D
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v4

    .line 176
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->amountEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x1a

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v4, v0

    .line 180
    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    const/4 v1, 0x1

    aput-boolean v1, v4, v0

    :goto_0
    const/16 v0, 0x1d

    const/4 v1, 0x1

    aput-boolean v1, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    :goto_1
    const/16 v2, 0x1f

    aput-boolean v9, v4, v2

    .line 198
    :goto_2
    return-wide v0

    .line 180
    :cond_0
    :try_start_1
    const-string v0, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1c

    const/4 v1, 0x1

    aput-boolean v1, v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    const/16 v1, 0x20

    aput-boolean v9, v4, v1

    .line 184
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08002c

    const/16 v7, 0x21

    aput-boolean v9, v4, v7

    .line 185
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v6, 0x7f08002b

    const/16 v7, 0x22

    aput-boolean v9, v4, v7

    .line 186
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v6, 0x7f080060

    new-instance v7, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$3;

    invoke-direct {v7, p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$3;-><init>(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;)V

    const/16 v8, 0x23

    aput-boolean v9, v4, v8

    .line 187
    invoke-virtual {v1, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v6, 0x24

    aput-boolean v9, v4, v6

    .line 195
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    const/16 v1, 0x25

    aput-boolean v9, v4, v1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred during initial amount parsing: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    const/16 v0, 0x26

    aput-boolean v9, v4, v0

    move-wide v0, v2

    goto :goto_2

    .line 180
    :cond_1
    :try_start_2
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/16 v6, 0x1e

    const/4 v7, 0x1

    aput-boolean v7, v4, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private setButtonText()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->nextButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    const/16 v1, 0x27

    aput-boolean v9, v0, v1

    .line 210
    :goto_0
    const/16 v1, 0x2b

    aput-boolean v9, v0, v1

    return-void

    .line 204
    :cond_0
    const/16 v1, 0x28

    aput-boolean v9, v0, v1

    .line 206
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getAmountValue()D

    move-result-wide v2

    const/16 v1, 0x29

    aput-boolean v9, v0, v1

    .line 208
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f080068

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedCurrencyString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2a

    aput-boolean v9, v0, v1

    goto :goto_0
.end method

.method private setCurrency()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->moneyTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    .line 172
    :goto_0
    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    return-void

    .line 168
    :cond_0
    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    .line 170
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->moneyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getUserCurrency(Landroid/content/Context;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getStatusBarColor()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    const v1, 0x7f0e006b

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v4

    .line 69
    const v3, 0x7f040039

    const/4 v5, 0x0

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    aput-boolean v10, v4, v10

    .line 71
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->getDB()Lcom/benoitletondor/easybudgetapp/model/db/DB;

    move-result-object v2

    .line 73
    .local v2, "db":Lcom/benoitletondor/easybudgetapp/model/db/DB;
    const-wide/16 v0, 0x0

    .line 74
    .local v0, "amount":D
    if-nez v2, :cond_0

    const/4 v3, 0x2

    aput-boolean v10, v4, v3

    .line 79
    :goto_0
    const v3, 0x7f0f00c9

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->moneyTextView:Landroid/widget/TextView;

    const/4 v3, 0x5

    aput-boolean v10, v4, v3

    .line 80
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->setCurrency()V

    const/4 v3, 0x6

    aput-boolean v10, v4, v3

    .line 82
    const v3, 0x7f0f00c8

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->amountEditText:Landroid/widget/EditText;

    const/4 v3, 0x7

    aput-boolean v10, v4, v3

    .line 83
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->amountEditText:Landroid/widget/EditText;

    const-wide/16 v8, 0x0

    cmpl-double v3, v0, v8

    if-nez v3, :cond_1

    const-string v3, "0"

    const/16 v7, 0x8

    aput-boolean v10, v4, v7

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0xa

    aput-boolean v10, v4, v3

    .line 84
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->amountEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->preventUnsupportedInputForDecimals(Landroid/widget/EditText;)V

    const/16 v3, 0xb

    aput-boolean v10, v4, v3

    .line 85
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->amountEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$1;

    invoke-direct {v6, p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$1;-><init>(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v3, 0xc

    aput-boolean v10, v4, v3

    .line 106
    const v3, 0x7f0f00ca

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->nextButton:Landroid/widget/Button;

    const/16 v3, 0xd

    aput-boolean v10, v4, v3

    .line 107
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->nextButton:Landroid/widget/Button;

    new-instance v6, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;

    invoke-direct {v6, p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment$2;-><init>(Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0xe

    aput-boolean v10, v4, v3

    .line 141
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->setButtonText()V

    .line 143
    const/16 v3, 0xf

    aput-boolean v10, v4, v3

    return-object v5

    .line 74
    :cond_0
    const/4 v3, 0x3

    aput-boolean v10, v4, v3

    .line 76
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getBalanceForDay(Ljava/util/Date;)D

    move-result-wide v6

    neg-double v0, v6

    const/4 v3, 0x4

    aput-boolean v10, v4, v3

    goto/16 :goto_0

    .line 83
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x9

    aput-boolean v10, v4, v7

    goto :goto_1
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    invoke-super {p0, p1}, Lcom/benoitletondor/easybudgetapp/view/welcome/OnboardingFragment;->setUserVisibleHint(Z)V

    .line 151
    if-nez p1, :cond_0

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 156
    :goto_0
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void

    .line 151
    :cond_0
    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 153
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->setCurrency()V

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 154
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/view/welcome/Onboarding3Fragment;->setButtonText()V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
