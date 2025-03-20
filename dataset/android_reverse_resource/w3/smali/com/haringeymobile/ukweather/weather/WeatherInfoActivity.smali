.class public Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;
.super Lcom/haringeymobile/ukweather/RefreshingActivity;
.source "WeatherInfoActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DUAL_PANE:Ljava/lang/String; = "dual_pane"

.field private static final TOOLBAR_TITLE_AND_CITY_NAME_SEPARATOR:Ljava/lang/String; = "  |  "


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7fc4160cfa25161bL    # 2.8209928063832536E307

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherInfoActivity"

    const/16 v3, 0x34

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/RefreshingActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private addRequiredFragment(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/16 v1, 0x12

    aput-boolean v5, v2, v1

    .line 77
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 79
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    const/16 v4, 0x13

    aput-boolean v5, v2, v4

    .line 80
    invoke-static {p1, v1, p2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->newInstance(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;

    move-result-object v1

    const/16 v4, 0x14

    aput-boolean v5, v2, v4

    .line 81
    :goto_0
    const/16 v4, 0x17

    aput-boolean v5, v2, v4

    .line 82
    const v4, 0x7f0c0061

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 84
    const-string v1, "worker fragment"

    const/16 v4, 0x18

    aput-boolean v5, v2, v4

    .line 85
    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    .line 86
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    if-eqz v1, :cond_1

    const/16 v1, 0x19

    aput-boolean v5, v2, v1

    .line 91
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 92
    const/16 v1, 0x1d

    aput-boolean v5, v2, v1

    return-void

    .line 80
    :cond_0
    const/16 v1, 0x15

    aput-boolean v5, v2, v1

    .line 81
    invoke-static {p1, p2}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->newInstance(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    move-result-object v1

    const/16 v4, 0x16

    aput-boolean v5, v2, v4

    goto :goto_0

    .line 86
    :cond_1
    const/16 v1, 0x1a

    aput-boolean v5, v2, v1

    .line 87
    new-instance v1, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-direct {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;-><init>()V

    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    const/16 v1, 0x1b

    aput-boolean v5, v2, v1

    .line 88
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    const-string v3, "worker fragment"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v1, 0x1c

    aput-boolean v5, v2, v1

    goto :goto_1
.end method

.method private displayContent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 51
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->setContentView(I)V

    const/4 v1, 0x6

    aput-boolean v5, v3, v1

    .line 53
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v1, 0x7

    aput-boolean v5, v3, v1

    .line 54
    const-string v1, "weather info type"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v4, 0x8

    aput-boolean v5, v3, v4

    .line 56
    const-string v4, "json string"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    aput-boolean v5, v3, v4

    .line 57
    invoke-direct {p0, v1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->addRequiredFragment(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-boolean v5, v3, v2

    .line 59
    const v2, 0x7f0c006a

    invoke-virtual {p0, v2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    const/16 v4, 0xb

    aput-boolean v5, v3, v4

    .line 60
    invoke-direct {p0, v1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->setToolbarTitle(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Landroid/support/v7/widget/Toolbar;)V

    const/16 v1, 0xc

    aput-boolean v5, v3, v1

    .line 61
    invoke-virtual {p0, v2}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v1, 0xd

    aput-boolean v5, v3, v1

    .line 62
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 63
    .local v0, "supportActionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/16 v1, 0xe

    aput-boolean v5, v3, v1

    .line 66
    :goto_0
    const v1, 0x7f02007d

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 67
    const/16 v1, 0x11

    aput-boolean v5, v3, v1

    return-void

    .line 63
    :cond_0
    const/16 v1, 0xf

    aput-boolean v5, v3, v1

    .line 64
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x10

    aput-boolean v5, v3, v1

    goto :goto_0
.end method

.method private setToolbarTitle(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Landroid/support/v7/widget/Toolbar;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->getLabelResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-boolean v3, v0, v2

    .line 102
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    sget-object v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->THREE_HOURLY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    if-eq p1, v2, :cond_0

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    .line 106
    :goto_0
    const/16 v1, 0x22

    aput-boolean v3, v0, v1

    return-void

    .line 103
    :cond_0
    const/16 v2, 0x20

    aput-boolean v3, v0, v2

    .line 104
    invoke-direct {p0, p2, v1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->updateTitleWithCityNameIfNecessary(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;)V

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private updateTitleWithCityNameIfNecessary(Landroid/support/v7/widget/Toolbar;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    const/16 v1, 0x23

    aput-boolean v3, v0, v1

    .line 118
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getForecastDisplayMode(Landroid/content/Context;)Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    move-result-object v1

    sget-object v2, Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;->LIST:Lcom/haringeymobile/ukweather/weather/ThreeHourlyForecastDisplayMode;

    if-eq v1, v2, :cond_0

    const/16 v1, 0x24

    aput-boolean v3, v0, v1

    .line 137
    :goto_0
    const/16 v1, 0x28

    aput-boolean v3, v0, v1

    return-void

    .line 118
    :cond_0
    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    .line 120
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;

    invoke-direct {v2, p0, p0, p2, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity$1;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;Landroid/content/Context;Ljava/lang/String;Landroid/support/v7/widget/Toolbar;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v2, 0x26

    aput-boolean v3, v0, v2

    .line 135
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/16 v1, 0x27

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected displayRetrievedData(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 159
    invoke-direct {p0, p2, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->addRequiredFragment(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;)V

    .line 160
    const/16 v1, 0x33

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 36
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v5, v1, v5

    .line 38
    const-string v2, "dual_pane"

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060109

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    .local v0, "isDualPane":Z
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    .line 41
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->finish()V

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    .line 45
    :goto_0
    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    return-void

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->displayContent()V

    const/4 v2, 0x4

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 141
    invoke-super {p0}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onRestart()V

    const/16 v3, 0x29

    aput-boolean v5, v2, v3

    .line 142
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 143
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v3, "worker fragment"

    const/16 v4, 0x2a

    aput-boolean v5, v2, v4

    .line 144
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    .line 146
    .local v1, "workerFragment":Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;
    if-eqz v1, :cond_0

    const/16 v3, 0x2b

    aput-boolean v5, v2, v3

    .line 154
    :goto_0
    invoke-virtual {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->retrieveLastRequestedWeatherInfo()V

    .line 155
    const/16 v3, 0x32

    aput-boolean v5, v2, v3

    return-void

    .line 146
    :cond_0
    const/16 v3, 0x2c

    aput-boolean v5, v2, v3

    .line 147
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const/16 v4, 0x2d

    aput-boolean v5, v2, v4

    .line 148
    new-instance v1, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    .end local v1    # "workerFragment":Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;
    invoke-direct {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;-><init>()V

    .restart local v1    # "workerFragment":Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;
    const/16 v4, 0x2e

    aput-boolean v5, v2, v4

    .line 149
    const-string v4, "worker fragment"

    invoke-virtual {v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v4, 0x2f

    aput-boolean v5, v2, v4

    .line 150
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const/16 v3, 0x30

    aput-boolean v5, v2, v3

    .line 151
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    const/16 v3, 0x31

    aput-boolean v5, v2, v3

    goto :goto_0
.end method
