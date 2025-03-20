.class public Lorg/asdtm/goodweather/SettingsActivity;
.super Lorg/asdtm/goodweather/AppCompatPreferenceActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/asdtm/goodweather/SettingsActivity$SettingsAlertDialog;,
        Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;,
        Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;,
        Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x53ceedf3b61085ebL    # -7.991855627066386E-96

    const-string v2, "org/asdtm/goodweather/SettingsActivity"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Lorg/asdtm/goodweather/AppCompatPreferenceActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static restartApp(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 396
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 398
    const/16 v2, 0x20

    aput-boolean v3, v1, v2

    .line 405
    :goto_0
    return-void

    .line 400
    :cond_0
    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x21

    aput-boolean v3, v1, v2

    .line 401
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/16 v2, 0x22

    aput-boolean v3, v1, v2

    .line 402
    invoke-virtual {p0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/16 v2, 0x23

    aput-boolean v3, v1, v2

    .line 403
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/16 v2, 0x24

    aput-boolean v3, v1, v2

    .line 404
    invoke-virtual {p0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 405
    const/16 v2, 0x25

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04001f

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 v1, 0xd

    aput-boolean v5, v2, v1

    .line 70
    const v1, 0x7f0f007b

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    const/16 v3, 0xe

    aput-boolean v5, v2, v3

    .line 71
    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SettingsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v1, 0xf

    aput-boolean v5, v2, v1

    .line 72
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/16 v1, 0x10

    aput-boolean v5, v2, v1

    .line 76
    :goto_0
    const/16 v1, 0x13

    aput-boolean v5, v2, v1

    return-void

    .line 73
    :cond_0
    const/16 v1, 0x11

    aput-boolean v5, v2, v1

    .line 74
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x12

    aput-boolean v5, v2, v1

    goto :goto_0
.end method


# virtual methods
.method public hasHeaders()Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    invoke-super {p0}, Lorg/asdtm/goodweather/AppCompatPreferenceActivity;->hasHeaders()Z

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 79
    const-class v0, Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    aput-boolean v1, v2, v0

    .line 82
    :goto_0
    const/16 v0, 0x1b

    aput-boolean v1, v2, v0

    move v0, v1

    .line 79
    :goto_1
    const/16 v3, 0x1d

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const-class v0, Lorg/asdtm/goodweather/SettingsActivity$GeneralPreferenceFragment;

    const/16 v3, 0x15

    aput-boolean v1, v2, v3

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const-class v0, Lorg/asdtm/goodweather/SettingsActivity$WidgetPreferenceFragment;

    const/16 v3, 0x17

    aput-boolean v1, v2, v3

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_2
    const-class v0, Lorg/asdtm/goodweather/SettingsActivity$AboutPreferenceFragment;

    const/16 v3, 0x19

    aput-boolean v1, v2, v3

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1a

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/16 v3, 0x1c

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    invoke-super {p0, p1}, Lorg/asdtm/goodweather/AppCompatPreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 60
    const v1, 0x7f070002

    invoke-virtual {p0, v1, p1}, Lorg/asdtm/goodweather/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 61
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/asdtm/goodweather/GoodWeatherApp;

    invoke-virtual {v0, p0}, Lorg/asdtm/goodweather/GoodWeatherApp;->applyTheme(Landroid/app/Activity;)V

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    aput-boolean v5, v1, v5

    .line 48
    :goto_0
    invoke-super {p0, p1}, Lorg/asdtm/goodweather/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    .line 49
    invoke-direct {p0}, Lorg/asdtm/goodweather/SettingsActivity;->setupActionBar()V

    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    .line 51
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x6

    aput-boolean v5, v1, v2

    .line 52
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x7

    aput-boolean v5, v1, v3

    .line 53
    const/high16 v3, 0x42600000    # 56.0f

    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x8

    aput-boolean v5, v1, v4

    .line 54
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v0, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 55
    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    .line 46
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f0d001a

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SettingsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Lorg/asdtm/goodweather/AppCompatPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x1f

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SettingsActivity;->finish()V

    .line 90
    const/16 v1, 0x1e

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
