.class public abstract Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;
.super Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;
.source "BaseDrawerActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final REQUEST_ACCOUNTS:I = 0x1

.field protected static final REQUEST_BACKUP:I = 0x5

.field private static final REQUEST_IMPORT_EXPORT:I = 0x4

.field private static final REQUEST_RATES:I = 0x2

.field private static final REQUEST_SETTINGS:I = 0x3


# instance fields
.field drawer:Landroid/support/v4/widget/DrawerLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004f
    .end annotation
.end field

.field protected navigationView:Landroid/support/design/widget/NavigationView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008c
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5e1fd6303dc15eacL    # 2.4846522416591055E145

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity"

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private showAccounts()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Show Accounts"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 140
    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    return-void
.end method

.method private showBackup()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Show Backup"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/external/BackupActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 157
    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private showCharts()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Show Charts"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/charts/ChartsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private showImportExport()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Show Import Export"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/external/ImportExportActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private showRates()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Show Rates"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/exchange_rate/ExchangeRatesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private showSettings()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->get()Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;

    move-result-object v1

    const-string/jumbo v2, "Show Settings"

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/util/AnswersProxy;->logButton(Ljava/lang/String;)Z

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/blogspot/e_kanivets/moneytracker/activity/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected initToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 54
    const v1, 0x7f0900e7

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 55
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 57
    const v1, 0x7f09004f

    invoke-virtual {p0, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 58
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v4, 0x7f0e0058

    const v5, 0x7f0e0057

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 61
    .local v0, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    if-nez v2, :cond_0

    const/4 v1, 0x6

    aput-boolean v7, v6, v1

    .line 62
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 64
    const/16 v1, 0x8

    aput-boolean v7, v6, v1

    return-object v3

    .line 61
    :cond_0
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    const/4 v1, 0x7

    aput-boolean v7, v6, v1

    goto :goto_0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->initViews()V

    .line 70
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 71
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 134
    :goto_0
    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    return-void

    .line 113
    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->update()V

    .line 116
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->update()V

    .line 120
    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->update()V

    .line 124
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 127
    :pswitch_3
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->update()V

    .line 128
    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const v3, 0x800003

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    if-nez v1, :cond_0

    aput-boolean v2, v0, v2

    .line 49
    :goto_0
    invoke-super {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseActivity;->onBackPressed()V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 50
    :goto_1
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_1
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 105
    const/4 v1, 0x0

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    return v1

    .line 77
    :pswitch_0
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->showAccounts()V

    .line 78
    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->showRates()V

    .line 82
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->showCharts()V

    .line 86
    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->showBackup()V

    .line 90
    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 93
    :pswitch_4
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->showImportExport()V

    .line 94
    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 97
    :pswitch_5
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/activity/base/BaseDrawerActivity;->showSettings()V

    .line 98
    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f090086
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected abstract update()V
.end method
