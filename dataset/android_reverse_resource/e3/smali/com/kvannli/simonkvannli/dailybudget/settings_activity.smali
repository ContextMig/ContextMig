.class public Lcom/kvannli/simonkvannli/dailybudget/settings_activity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "settings_activity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field current_currency_text:Landroid/widget/TextView;

.field sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x45743fee5c31d53cL    # 3.916867591860527E26

    const-string v2, "com/kvannli/simonkvannli/dailybudget/settings_activity"

    const/16 v3, 0x23

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public feedbackClicked(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getCurrencyBasedOnSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoInit()[Z

    move-result-object v3

    .line 76
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    aput-boolean v6, v3, v4

    .line 77
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "currencyArray":[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v4, 0xe

    aput-boolean v6, v3, v4

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    const/16 v4, 0xf

    aput-boolean v6, v3, v4

    .line 80
    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    aget-object v2, v0, v1

    const/16 v4, 0x10

    aput-boolean v6, v3, v4

    .line 84
    :goto_1
    return-object v2

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v4, 0x11

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_1
    const-string v2, " "

    const/16 v4, 0x12

    aput-boolean v6, v3, v4

    goto :goto_1
.end method

.method public likeClicked(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x1a

    aput-boolean v5, v0, v2

    .line 106
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x1b

    aput-boolean v5, v0, v1

    .line 109
    const/high16 v1, 0x48080000    # 139264.0f

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x1c

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v0, v1

    .line 113
    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/16 v1, 0x1d

    aput-boolean v5, v0, v1

    .line 118
    :goto_0
    const/16 v1, 0x22

    aput-boolean v5, v0, v1

    return-void

    .line 114
    :catch_0
    move-exception v1

    const/16 v1, 0x1e

    aput-boolean v5, v0, v1

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f

    aput-boolean v5, v0, v4

    .line 116
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x20

    aput-boolean v5, v0, v2

    .line 115
    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x21

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method public onAClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070068

    const/16 v4, 0x9

    aput-boolean v6, v0, v4

    .line 54
    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->sharedPref:Landroid/content/SharedPreferences;

    const v4, 0x7f07005e

    invoke-virtual {p0, v4}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getCurrencyBasedOnSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->adapter:Landroid/widget/ArrayAdapter;

    new-instance v3, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;

    invoke-direct {v3, p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity$1;-><init>(Lcom/kvannli/simonkvannli/dailybudget/settings_activity;)V

    const/16 v4, 0xa

    aput-boolean v6, v0, v4

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0xb

    aput-boolean v6, v0, v2

    .line 71
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 72
    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoInit()[Z

    move-result-object v1

    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v5, v1, v5

    .line 27
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    .line 28
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 30
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    const/4 v3, 0x3

    aput-boolean v5, v1, v3

    .line 31
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->adapter:Landroid/widget/ArrayAdapter;

    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    .line 32
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->sharedPref:Landroid/content/SharedPreferences;

    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    .line 33
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->current_currency_text:Landroid/widget/TextView;

    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    .line 35
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->updateValues()V

    .line 37
    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    return-void
.end method

.method public setDesimalBasedOnSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoInit()[Z

    move-result-object v3

    .line 88
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x13

    aput-boolean v6, v3, v4

    .line 89
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "currencyArray":[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v4, 0x14

    aput-boolean v6, v3, v4

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    const/16 v4, 0x15

    aput-boolean v6, v3, v4

    .line 92
    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    aget-object v2, v0, v1

    const/16 v4, 0x16

    aput-boolean v6, v3, v4

    .line 96
    :goto_1
    return-object v2

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v4, 0x17

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_1
    const-string v2, "2"

    const/16 v4, 0x18

    aput-boolean v6, v3, v4

    goto :goto_1
.end method

.method public updateValues()V
    .locals 6

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->current_currency_text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070067

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->sharedPref:Landroid/content/SharedPreferences;

    const v4, 0x7f07005e

    invoke-virtual {p0, v4}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;->getCurrencyBasedOnSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
