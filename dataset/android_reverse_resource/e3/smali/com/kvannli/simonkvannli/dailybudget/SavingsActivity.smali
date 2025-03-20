.class public Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SavingsActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private currentNumber:Ljava/lang/String;

.field private dailyAmount:Landroid/widget/TextView;

.field private dailyMoney:D

.field private editText:Landroid/widget/EditText;

.field private moneyType:Ljava/lang/String;

.field private monthlyAmount:Landroid/widget/TextView;

.field num:D

.field private seekBar:Landroid/widget/SeekBar;

.field public updateText:Z

.field private weeklyAmount:Landroid/widget/TextView;

.field private yearlyAmount:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x44df0856d1634595L    # 5.861887632482263E23

    const-string v2, "com/kvannli/simonkvannli/dailybudget/SavingsActivity"

    const/16 v3, 0x31

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->updateText:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->editText:Landroid/widget/EditText;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)Landroid/widget/SeekBar;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x30

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private initializeVariables()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 78
    const v0, 0x7f0e006f

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 79
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->editText:Landroid/widget/EditText;

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 80
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->dailyAmount:Landroid/widget/TextView;

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 81
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->weeklyAmount:Landroid/widget/TextView;

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    .line 82
    const v0, 0x7f0e0075

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->monthlyAmount:Landroid/widget/TextView;

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 83
    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->yearlyAmount:Landroid/widget/TextView;

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    .line 84
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getDailyMoney()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->dailyMoney:D

    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    .line 85
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    .line 86
    const v2, 0x7f07005d

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->currentNumber:Ljava/lang/String;

    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    .line 87
    const v2, 0x7f07005e

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->moneyType:Ljava/lang/String;

    const/16 v0, 0x12

    aput-boolean v4, v1, v0

    .line 89
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->editText:Landroid/widget/EditText;

    new-instance v2, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;

    invoke-direct {v2, p0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;-><init>(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    return-void
.end method


# virtual methods
.method public correctFormatOfFloat(F)Ljava/lang/String;
    .locals 9

    .prologue
    const v5, 0x7f070088

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 156
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->currentNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x1f

    aput-boolean v6, v3, v4

    .line 157
    invoke-virtual {p0, v5}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "myFormat":Ljava/lang/String;
    if-nez v2, :cond_0

    const/16 v2, 0x20

    aput-boolean v6, v3, v2

    .line 159
    const v2, 0x7f070061

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x21

    aput-boolean v6, v3, v2

    .line 168
    :goto_0
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x27

    aput-boolean v6, v3, v4

    .line 169
    const-string v4, ","

    const-string v5, "."

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u2212"

    const-string v5, "-"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "toReturn":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "$"

    aput-object v4, v2, v7

    const-string v4, "\u00a5"

    aput-object v4, v2, v6

    const-string v4, "\u00a3"

    aput-object v4, v2, v8

    const/4 v4, 0x3

    const-string v5, "\u20b9"

    aput-object v5, v2, v4

    const/16 v4, 0x28

    aput-boolean v6, v3, v4

    .line 174
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->moneyType:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x29

    aput-boolean v6, v3, v2

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->moneyType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2a

    aput-boolean v6, v3, v4

    .line 177
    :goto_1
    return-object v2

    .line 160
    .end local v1    # "toReturn":Ljava/lang/String;
    :cond_0
    if-ne v2, v6, :cond_1

    const/16 v2, 0x22

    aput-boolean v6, v3, v2

    .line 161
    const v2, 0x7f070063

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 162
    :cond_1
    if-eq v2, v8, :cond_2

    const/16 v2, 0x24

    aput-boolean v6, v3, v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x25

    aput-boolean v6, v3, v2

    .line 163
    invoke-virtual {p0, v5}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x26

    aput-boolean v6, v3, v2

    goto/16 :goto_0

    .line 177
    .restart local v1    # "toReturn":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->moneyType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2b

    aput-boolean v6, v3, v4

    goto :goto_1
.end method

.method public getDailyMoney()F
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 184
    const v2, 0x7f070064

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x2c

    aput-boolean v5, v1, v3

    .line 186
    const v3, 0x7f070049

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const/16 v4, 0x2d

    aput-boolean v5, v1, v4

    .line 187
    const v4, 0x7f070048

    invoke-virtual {p0, v4}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 189
    .local v0, "expenses":F
    sub-float v2, v3, v0

    const/16 v3, 0x2e

    aput-boolean v5, v1, v3

    return v2
.end method

.method public getSavingPercentage()D
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v4, v0, v2

    .line 131
    const v2, 0x7f070066

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v0, v6

    .line 39
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 40
    const v1, 0x7f040019

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->setContentView(I)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 41
    invoke-direct {p0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->initializeVariables()V

    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    .line 44
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->editText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getSavingPercentage()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    .line 46
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;

    invoke-direct {v2, p0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;-><init>(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 73
    iget-wide v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->num:D

    invoke-virtual {p0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->setSavingPercentage(D)V

    .line 74
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-void
.end method

.method public setSavingPercentage(D)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 135
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v4, v0, v2

    .line 136
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x17

    aput-boolean v4, v0, v2

    .line 137
    const v2, 0x7f070066

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    double-to-float v3, p1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x18

    aput-boolean v4, v0, v2

    .line 138
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    const/16 v1, 0x19

    aput-boolean v4, v0, v1

    return-void
.end method

.method public updateAllSavings(D)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v2, p1, v2

    const/16 v1, 0x1a

    aput-boolean v10, v0, v1

    .line 143
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->dailyAmount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->dailyMoney:D

    mul-double/2addr v6, v2

    double-to-float v5, v6

    invoke-virtual {p0, v5}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->correctFormatOfFloat(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1b

    aput-boolean v10, v0, v1

    .line 144
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->weeklyAmount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->dailyMoney:D

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    mul-double/2addr v6, v8

    mul-double/2addr v6, v2

    double-to-float v5, v6

    invoke-virtual {p0, v5}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->correctFormatOfFloat(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1c

    aput-boolean v10, v0, v1

    .line 145
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->monthlyAmount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->dailyMoney:D

    const-wide v8, 0x403e666666666666L    # 30.4

    mul-double/2addr v6, v8

    mul-double/2addr v6, v2

    double-to-float v5, v6

    invoke-virtual {p0, v5}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->correctFormatOfFloat(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1d

    aput-boolean v10, v0, v1

    .line 146
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->yearlyAmount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->dailyMoney:D

    const-wide v8, 0x4076d00000000000L    # 365.0

    mul-double/2addr v6, v8

    mul-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->correctFormatOfFloat(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const/16 v1, 0x1e

    aput-boolean v10, v0, v1

    return-void
.end method
