.class public Lcom/kvannli/simonkvannli/dailybudget/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$NavigationDrawerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kvannli/simonkvannli/dailybudget/MainActivity$PlaceholderFragment;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

.field floatDefault:F

.field mAdView:Lcom/google/android/gms/ads/AdView;

.field private mNavigationDrawerFragment:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x35a7f4236042da8L

    const-string v2, "com/kvannli/simonkvannli/dailybudget/MainActivity"

    const/16 v3, 0x70

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public addMoney(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 315
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->changeToInput(Landroid/view/View;Z)V

    .line 316
    const/16 v1, 0x53

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public changeToExpense(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/expense_activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    const/16 v1, 0x2e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public changeToIncome(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 240
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/income_activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 242
    const/16 v1, 0x2d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public changeToInput(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x30

    aput-boolean v3, v0, v2

    .line 256
    const-string v2, "IS_MINUS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x31

    aput-boolean v3, v0, v2

    .line 257
    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 258
    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    return-void
.end method

.method public changeToSettings(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    const/16 v1, 0x2f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public correctFormatOfFloat(F)Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f070088

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 345
    const v2, 0x7f070064

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x58

    aput-boolean v5, v1, v3

    .line 346
    const v3, 0x7f07005d

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x59

    aput-boolean v5, v1, v3

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    aput-boolean v5, v1, v3

    .line 348
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "myFormat":Ljava/lang/String;
    if-nez v2, :cond_0

    const/16 v2, 0x5b

    aput-boolean v5, v1, v2

    .line 350
    const v2, 0x7f070061

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5c

    aput-boolean v5, v1, v2

    .line 359
    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x62

    aput-boolean v5, v1, v3

    .line 360
    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2212"

    const-string v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x63

    aput-boolean v5, v1, v3

    return-object v2

    .line 351
    :cond_0
    if-ne v2, v5, :cond_1

    const/16 v2, 0x5d

    aput-boolean v5, v1, v2

    .line 352
    const v2, 0x7f070063

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5e

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 353
    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/16 v2, 0x5f

    aput-boolean v5, v1, v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x60

    aput-boolean v5, v1, v2

    .line 354
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x61

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method public getDailyMoney()F
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 330
    const v2, 0x7f070064

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x55

    aput-boolean v6, v1, v3

    .line 332
    const v3, 0x7f070049

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const/16 v4, 0x56

    aput-boolean v6, v1, v4

    .line 333
    const v4, 0x7f070048

    invoke-virtual {p0, v4}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 335
    .local v0, "expenses":F
    sub-float v2, v3, v0

    const/16 v3, 0x57

    aput-boolean v6, v1, v3

    return v2
.end method

.method public millisToDay(J)J
    .locals 5

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 210
    const-wide/32 v2, 0x5265c00

    div-long v2, p1, v2

    const/16 v1, 0x2c

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0e006d

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 49
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v1, v6

    .line 50
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    .line 51
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    .line 53
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->showMyAd()V

    .line 58
    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 59
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mNavigationDrawerFragment:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 60
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 63
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mNavigationDrawerFragment:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    const v0, 0x7f0e0066

    const/4 v3, 0x6

    aput-boolean v6, v1, v3

    .line 65
    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x7

    aput-boolean v6, v1, v3

    .line 63
    invoke-virtual {v2, v4, v0}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->setUp(ILandroid/support/v4/widget/DrawerLayout;)V

    const/16 v0, 0x8

    aput-boolean v6, v1, v0

    .line 71
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v2, 0x9

    aput-boolean v6, v1, v2

    .line 73
    new-instance v2, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    invoke-direct {v2, p0, v5, v5, v6}, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    const/16 v2, 0xa

    aput-boolean v6, v1, v2

    .line 75
    const-string v2, "firstLaunch"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0xb

    aput-boolean v6, v1, v3

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v3, 0xc

    aput-boolean v6, v1, v3

    .line 79
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is first time launch?: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    if-nez v2, :cond_0

    const/16 v0, 0xd

    aput-boolean v6, v1, v0

    .line 100
    :goto_0
    const/16 v0, 0x18

    aput-boolean v6, v1, v0

    return-void

    .line 80
    :cond_0
    const/16 v2, 0xe

    aput-boolean v6, v1, v2

    .line 82
    const-string v2, "firstLaunch"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xf

    aput-boolean v6, v1, v2

    .line 83
    const v2, 0x7f07005e

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x10

    aput-boolean v6, v1, v2

    .line 84
    const v2, 0x7f07005d

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x11

    aput-boolean v6, v1, v2

    .line 86
    const v2, 0x7f070045

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x12

    aput-boolean v6, v1, v2

    .line 87
    const v2, 0x7f070049

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x13

    aput-boolean v6, v1, v2

    .line 88
    const v2, 0x7f070048

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x14

    aput-boolean v6, v1, v2

    .line 90
    const v2, 0x7f070059

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->millisToDay(J)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x15

    aput-boolean v6, v1, v2

    .line 91
    const v2, 0x7f070054

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->millisToDay(J)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x16

    aput-boolean v6, v1, v2

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v0, 0x17

    aput-boolean v6, v1, v0

    goto/16 :goto_0
.end method

.method public onNavigationDrawerItemSelected(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 124
    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    .line 144
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POSITION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    const/16 v1, 0x26

    aput-boolean v4, v0, v1

    return-void

    .line 128
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 132
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/income_activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    const/16 v1, 0x23

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 135
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/expense_activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    const/16 v1, 0x24

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 139
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kvannli/simonkvannli/dailybudget/settings_activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x25

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->pause()V

    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    .line 112
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 113
    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 105
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->resume()V

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    .line 106
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->updateCurrentMoney()V

    .line 108
    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSectionAttached(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 148
    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    .line 159
    :goto_0
    const/16 v1, 0x2b

    aput-boolean v2, v0, v1

    return-void

    .line 150
    :pswitch_0
    const v1, 0x7f07007f

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 151
    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 153
    :pswitch_1
    const v1, 0x7f070080

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 154
    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 156
    :pswitch_2
    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mTitle:Ljava/lang/CharSequence;

    const/16 v1, 0x2a

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStop()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 370
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 372
    const-string v1, "jacoco"

    const/16 v3, 0x64

    aput-boolean v9, v2, v3

    .line 375
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x65

    aput-boolean v9, v2, v3

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "coverage.exec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    aput-boolean v9, v2, v4

    .line 377
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x67

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 379
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0x68

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 380
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 381
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0x69

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 382
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x6a

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 381
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0x6b

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 384
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x6c

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 385
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    const/16 v1, 0x6f

    aput-boolean v9, v2, v1

    return-void

    .line 386
    :catch_0
    move-exception v1

    const/16 v3, 0x6d

    aput-boolean v9, v2, v3

    .line 387
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x6e

    aput-boolean v9, v2, v1

    throw v3
.end method

.method public showMyAd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 116
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/16 v0, 0x1e

    aput-boolean v3, v1, v0

    .line 118
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    const/16 v2, 0x1f

    aput-boolean v3, v1, v2

    .line 119
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 120
    const/16 v0, 0x20

    aput-boolean v3, v1, v0

    return-void
.end method

.method public subtractMoney(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 319
    invoke-virtual {p0, p1, v2}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->changeToInput(Landroid/view/View;Z)V

    .line 320
    const/16 v1, 0x54

    aput-boolean v2, v0, v1

    return-void
.end method

.method public updateCurrentMoney()V
    .locals 14

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 261
    const v4, 0x7f070064

    invoke-virtual {p0, v4}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const/16 v6, 0x33

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 264
    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-interface {v4, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/16 v8, 0x34

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 265
    const v8, 0x7f070045

    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    const/16 v9, 0x35

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 267
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->millisToDay(J)J

    move-result-wide v10

    const/16 v9, 0x36

    const/4 v12, 0x1

    aput-boolean v12, v5, v9

    .line 268
    const v9, 0x7f070054

    invoke-virtual {p0, v9}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v12, 0x0

    invoke-interface {v4, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const/16 v9, 0x37

    const/4 v12, 0x1

    aput-boolean v12, v5, v9

    .line 272
    :goto_0
    cmp-long v9, v6, v10

    if-nez v9, :cond_1

    const/16 v6, 0x3a

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 288
    .local v0, "currentMoney":F
    .local v2, "diff":J
    :goto_1
    const v6, 0x7f0e0068

    invoke-virtual {p0, v6}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 291
    .local v1, "currentMoneyView":Landroid/widget/TextView;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "$"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "\u00a5"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "\u00a3"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "\u20b9"

    aput-object v8, v6, v7

    const/16 v7, 0x45

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 293
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const v7, 0x7f07005e

    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "default"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x46

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f07005e

    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "default"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f070045

    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->correctFormatOfFloat(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x47

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 301
    :goto_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT DATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->millisToDay(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v6, 0x4b

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 302
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT MONEY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f070045

    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v6, 0x4c

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 303
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DAILY INCOME: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f070049

    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v6, 0x4d

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 304
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DAILY EXPENSES: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f070048

    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v6, 0x4e

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 305
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DAILY MONEY: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getDailyMoney()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v6, 0x4f

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 307
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LAST UPDATED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f070059

    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x45

    invoke-interface {v4, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v4, 0x50

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 309
    const v4, 0x7f0e006a

    invoke-virtual {p0, v4}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v6, 0x51

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getDailyMoney()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->correctFormatOfFloat(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const/16 v4, 0x52

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    return-void

    .line 268
    .end local v0    # "currentMoney":F
    .end local v1    # "currentMoneyView":Landroid/widget/TextView;
    .end local v2    # "diff":J
    :cond_0
    const/16 v9, 0x38

    const/4 v12, 0x1

    aput-boolean v12, v5, v9

    .line 269
    const-string v9, "Daily amount will be added tomorrow!"

    const/4 v12, 0x1

    invoke-static {p0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    const/16 v9, 0x39

    const/4 v12, 0x1

    aput-boolean v12, v5, v9

    goto/16 :goto_0

    .line 273
    :cond_1
    sub-long v6, v10, v6

    const/16 v9, 0x3b

    const/4 v12, 0x1

    aput-boolean v12, v5, v9

    .line 274
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .restart local v2    # "diff":J
    const/16 v6, 0x3c

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 275
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getDailyMoney()F

    move-result v6

    long-to-int v7, v2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v0, v8, v6

    .restart local v0    # "currentMoney":F
    const/16 v6, 0x3d

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 276
    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->correctFormatOfFloat(F)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 277
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/16 v6, 0x3f

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 278
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current money after updateCurrentMoney: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v6, 0x40

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 281
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const/16 v7, 0x41

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 282
    const v7, 0x7f070045

    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v7, 0x42

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 283
    const v7, 0x7f070059

    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/16 v7, 0x43

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 284
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v6, 0x44

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    goto/16 :goto_1

    .line 296
    .restart local v1    # "currentMoneyView":Landroid/widget/TextView;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070045

    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->floatDefault:F

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->correctFormatOfFloat(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f07005e

    const/16 v8, 0x48

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 297
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "default"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x49

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 296
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x4a

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    goto/16 :goto_2
.end method
