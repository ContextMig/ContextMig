.class public Lorg/asdtm/goodweather/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final PICK_CITY:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private mHeaderCity:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private navigationViewListener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/BaseActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xbed4240af9b2b6eL

    const-string v2, "org/asdtm/goodweather/BaseActivity"

    const/16 v3, 0x41

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/BaseActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 29
    const-string v1, "BaseActivity"

    iput-object v1, p0, Lorg/asdtm/goodweather/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 99
    new-instance v1, Lorg/asdtm/goodweather/BaseActivity$2;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/BaseActivity$2;-><init>(Lorg/asdtm/goodweather/BaseActivity;)V

    iput-object v1, p0, Lorg/asdtm/goodweather/BaseActivity;->navigationViewListener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$000(Lorg/asdtm/goodweather/BaseActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/16 v2, 0x3f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lorg/asdtm/goodweather/BaseActivity;Landroid/content/Intent;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/BaseActivity;->createBackStack(Landroid/content/Intent;)V

    const/16 v1, 0x40

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private configureNavView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    const/16 v2, 0x14

    aput-boolean v3, v1, v2

    .line 92
    iget-object v2, p0, Lorg/asdtm/goodweather/BaseActivity;->navigationViewListener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    const/16 v2, 0x15

    aput-boolean v3, v1, v2

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x16

    aput-boolean v3, v1, v2

    .line 95
    const v2, 0x7f0f00da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mHeaderCity:Landroid/widget/TextView;

    const/16 v0, 0x17

    aput-boolean v3, v1, v0

    .line 96
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mHeaderCity:Landroid/widget/TextView;

    invoke-static {p0}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/16 v0, 0x18

    aput-boolean v3, v1, v0

    return-void
.end method

.method private createBackStack(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    .line 144
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    const/16 v2, 0x1a

    aput-boolean v3, v0, v2

    .line 145
    invoke-virtual {v1, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    const/16 v2, 0x1b

    aput-boolean v3, v0, v2

    .line 146
    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 147
    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    .line 151
    :goto_0
    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lorg/asdtm/goodweather/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    .line 149
    invoke-virtual {p0}, Lorg/asdtm/goodweather/BaseActivity;->finish()V

    const/16 v1, 0x1e

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private setupNavDrawer()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 59
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 61
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v0, :cond_0

    .line 62
    const/16 v0, 0xb

    aput-boolean v7, v6, v0

    .line 82
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lorg/asdtm/goodweather/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v4, 0x7f0800a2

    const v5, 0x7f0800a1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    const/16 v0, 0xc

    aput-boolean v7, v6, v0

    .line 69
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    const/16 v0, 0xd

    aput-boolean v7, v6, v0

    .line 70
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 72
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_1

    const/16 v0, 0xe

    aput-boolean v7, v6, v0

    .line 81
    :goto_1
    invoke-direct {p0}, Lorg/asdtm/goodweather/BaseActivity;->configureNavView()V

    .line 82
    const/16 v0, 0x11

    aput-boolean v7, v6, v0

    goto :goto_0

    .line 72
    :cond_1
    const/16 v0, 0xf

    aput-boolean v7, v6, v0

    .line 73
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lorg/asdtm/goodweather/BaseActivity$1;

    invoke-direct {v1, p0}, Lorg/asdtm/goodweather/BaseActivity$1;-><init>(Lorg/asdtm/goodweather/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x10

    aput-boolean v7, v6, v0

    goto :goto_1
.end method


# virtual methods
.method protected closeNavDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v1, :cond_0

    const/16 v1, 0x2f

    aput-boolean v3, v0, v1

    .line 181
    :goto_0
    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    return-void

    .line 178
    :cond_0
    const/16 v1, 0x30

    aput-boolean v3, v0, v1

    .line 179
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected getProgressDialog()Landroid/app/ProgressDialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 185
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x33

    aput-boolean v3, v0, v2

    .line 186
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isIndeterminate()Z

    const/16 v2, 0x34

    aput-boolean v3, v0, v2

    .line 187
    const v2, 0x7f080028

    invoke-virtual {p0, v2}, Lorg/asdtm/goodweather/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v2, 0x35

    aput-boolean v3, v0, v2

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 189
    const/16 v2, 0x36

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 154
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    aput-boolean v3, v1, v0

    .line 161
    :goto_0
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v2, 0x25

    aput-boolean v3, v1, v2

    return-object v0

    .line 154
    :cond_0
    const/16 v0, 0x21

    aput-boolean v3, v1, v0

    .line 155
    const v0, 0x7f0f007b

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 156
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_1

    const/16 v0, 0x22

    aput-boolean v3, v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x23

    aput-boolean v3, v1, v0

    .line 157
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v0, 0x24

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method protected isNavDrawerOpen()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 174
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v0, :cond_0

    const/16 v0, 0x2a

    aput-boolean v1, v2, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v3, 0x2d

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x2e

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    iget-object v0, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2b

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2c

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    packed-switch p1, :pswitch_data_0

    const/16 v2, 0x37

    aput-boolean v4, v1, v2

    .line 207
    .local v0, "connectionDetector":Lorg/asdtm/goodweather/ConnectionDetector;
    :goto_0
    const/16 v2, 0x3e

    aput-boolean v4, v1, v2

    return-void

    .line 197
    .end local v0    # "connectionDetector":Lorg/asdtm/goodweather/ConnectionDetector;
    :pswitch_0
    new-instance v0, Lorg/asdtm/goodweather/ConnectionDetector;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 198
    .restart local v0    # "connectionDetector":Lorg/asdtm/goodweather/ConnectionDetector;
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    const/16 v2, 0x38

    aput-boolean v4, v1, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x39

    aput-boolean v4, v1, v2

    .line 199
    iget-object v2, p0, Lorg/asdtm/goodweather/BaseActivity;->mHeaderCity:Landroid/widget/TextView;

    invoke-static {p0}, Lorg/asdtm/goodweather/utils/Utils;->getCityAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3a

    aput-boolean v4, v1, v2

    .line 201
    invoke-virtual {v0}, Lorg/asdtm/goodweather/ConnectionDetector;->isNetworkAvailableAndConnected()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3b

    aput-boolean v4, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x3c

    aput-boolean v4, v1, v2

    .line 202
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/asdtm/goodweather/service/CurrentWeatherService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lorg/asdtm/goodweather/BaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/16 v2, 0x3d

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lorg/asdtm/goodweather/BaseActivity;->isNavDrawerOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    .line 167
    invoke-virtual {p0}, Lorg/asdtm/goodweather/BaseActivity;->closeNavDraw()V

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    .line 171
    :goto_0
    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    return-void

    .line 169
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 87
    iget-object v1, p0, Lorg/asdtm/goodweather/BaseActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 40
    invoke-virtual {p0}, Lorg/asdtm/goodweather/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 44
    :goto_0
    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    return-void

    .line 41
    :cond_0
    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 42
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 55
    invoke-direct {p0}, Lorg/asdtm/goodweather/BaseActivity;->setupNavDrawer()V

    .line 56
    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/BaseActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 49
    invoke-virtual {p0}, Lorg/asdtm/goodweather/BaseActivity;->getToolbar()Landroid/support/v7/widget/Toolbar;

    .line 50
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    return-void
.end method
