.class public Lorg/asdtm/goodweather/SearchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;,
        Lorg/asdtm/goodweather/SearchActivity$SearchCityHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final TAG:Ljava/lang/String; = "SearchActivity"


# instance fields
.field private final APP_SETTINGS_CITY:Ljava/lang/String;

.field private final APP_SETTINGS_COUNTRY_CODE:Ljava/lang/String;

.field private final APP_SETTINGS_LATITUDE:Ljava/lang/String;

.field private final APP_SETTINGS_LONGITUDE:Ljava/lang/String;

.field private mCites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/CitySearch;",
            ">;"
        }
    .end annotation
.end field

.field private mCityPref:Landroid/content/SharedPreferences;

.field private mSearchCityAdapter:Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/SearchActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3965d568a65d2e44L    # 3.3640030491307335E-32

    const-string v2, "org/asdtm/goodweather/SearchActivity"

    const/16 v3, 0x2d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/SearchActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 36
    const-string v1, "city"

    iput-object v1, p0, Lorg/asdtm/goodweather/SearchActivity;->APP_SETTINGS_CITY:Ljava/lang/String;

    .line 37
    const-string v1, "country_code"

    iput-object v1, p0, Lorg/asdtm/goodweather/SearchActivity;->APP_SETTINGS_COUNTRY_CODE:Ljava/lang/String;

    .line 38
    const-string v1, "latitude"

    iput-object v1, p0, Lorg/asdtm/goodweather/SearchActivity;->APP_SETTINGS_LATITUDE:Ljava/lang/String;

    .line 39
    const-string v1, "longitude"

    iput-object v1, p0, Lorg/asdtm/goodweather/SearchActivity;->APP_SETTINGS_LONGITUDE:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lorg/asdtm/goodweather/SearchActivity;)Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity;->mSearchCityAdapter:Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    const/16 v2, 0x2b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lorg/asdtm/goodweather/SearchActivity;Lorg/asdtm/goodweather/model/CitySearch;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Lorg/asdtm/goodweather/SearchActivity;->setCity(Lorg/asdtm/goodweather/model/CitySearch;)V

    const/16 v1, 0x2c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private loadLastFoundCity()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 207
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity;->mCites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x22

    aput-boolean v7, v0, v1

    .line 215
    :goto_0
    const/16 v1, 0x2a

    aput-boolean v7, v0, v1

    return-void

    .line 207
    :cond_0
    const/16 v1, 0x23

    aput-boolean v7, v0, v1

    .line 208
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity;->mCityPref:Landroid/content/SharedPreferences;

    const-string v2, "city"

    const-string v3, "London"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-boolean v7, v0, v2

    .line 209
    iget-object v2, p0, Lorg/asdtm/goodweather/SearchActivity;->mCityPref:Landroid/content/SharedPreferences;

    const-string v3, "country_code"

    const-string v4, "UK"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x25

    aput-boolean v7, v0, v3

    .line 210
    iget-object v3, p0, Lorg/asdtm/goodweather/SearchActivity;->mCityPref:Landroid/content/SharedPreferences;

    const-string v4, "latitude"

    const-string v5, "51.51"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26

    aput-boolean v7, v0, v4

    .line 211
    iget-object v4, p0, Lorg/asdtm/goodweather/SearchActivity;->mCityPref:Landroid/content/SharedPreferences;

    const-string v5, "longitude"

    const-string v6, "-0.13"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x27

    aput-boolean v7, v0, v5

    .line 212
    new-instance v5, Lorg/asdtm/goodweather/model/CitySearch;

    invoke-direct {v5, v1, v2, v3, v4}, Lorg/asdtm/goodweather/model/CitySearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x28

    aput-boolean v7, v0, v1

    .line 213
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity;->mCites:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x29

    aput-boolean v7, v0, v1

    goto :goto_0
.end method

.method private setCity(Lorg/asdtm/goodweather/model/CitySearch;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/asdtm/goodweather/SearchActivity;->mCityPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x1c

    aput-boolean v4, v0, v2

    .line 199
    const-string v2, "city"

    invoke-virtual {p1}, Lorg/asdtm/goodweather/model/CitySearch;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x1d

    aput-boolean v4, v0, v2

    .line 200
    const-string v2, "country_code"

    invoke-virtual {p1}, Lorg/asdtm/goodweather/model/CitySearch;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x1e

    aput-boolean v4, v0, v2

    .line 201
    const-string v2, "latitude"

    invoke-virtual {p1}, Lorg/asdtm/goodweather/model/CitySearch;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x1f

    aput-boolean v4, v0, v2

    .line 202
    const-string v2, "longitude"

    invoke-virtual {p1}, Lorg/asdtm/goodweather/model/CitySearch;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x20

    aput-boolean v4, v0, v2

    .line 203
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    return-void
.end method

.method private setupActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    const v0, 0x7f0f007b

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const/16 v2, 0x14

    aput-boolean v3, v1, v2

    .line 92
    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/SearchActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v0, 0x15

    aput-boolean v3, v1, v0

    .line 93
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x16

    aput-boolean v3, v1, v0

    .line 96
    :goto_0
    const/16 v0, 0x19

    aput-boolean v3, v1, v0

    return-void

    .line 93
    :cond_0
    const/16 v0, 0x17

    aput-boolean v3, v1, v0

    .line 94
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v0, 0x18

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method private setupSearchView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 71
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const/16 v1, 0xf

    aput-boolean v4, v2, v1

    .line 72
    const v1, 0x7f0f0089

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    const/16 v3, 0x10

    aput-boolean v4, v2, v3

    .line 73
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    const/16 v0, 0x11

    aput-boolean v4, v2, v0

    .line 74
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    const/16 v0, 0x12

    aput-boolean v4, v2, v0

    .line 75
    new-instance v0, Lorg/asdtm/goodweather/SearchActivity$1;

    invoke-direct {v0, p0}, Lorg/asdtm/goodweather/SearchActivity$1;-><init>(Lorg/asdtm/goodweather/SearchActivity;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 88
    const/16 v0, 0x13

    aput-boolean v4, v2, v0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/asdtm/goodweather/GoodWeatherApp;

    invoke-virtual {v0, p0}, Lorg/asdtm/goodweather/GoodWeatherApp;->applyTheme(Landroid/app/Activity;)V

    aput-boolean v4, v1, v4

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 52
    :goto_0
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/SearchActivity;->setContentView(I)V

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 54
    invoke-direct {p0}, Lorg/asdtm/goodweather/SearchActivity;->setupActionBar()V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 55
    invoke-direct {p0}, Lorg/asdtm/goodweather/SearchActivity;->setupSearchView()V

    .line 57
    const-string v0, "config"

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    .line 58
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/asdtm/goodweather/SearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/asdtm/goodweather/SearchActivity;->mCityPref:Landroid/content/SharedPreferences;

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 60
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lorg/asdtm/goodweather/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    .line 61
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/asdtm/goodweather/SearchActivity;->mCites:Ljava/util/List;

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    .line 64
    new-instance v2, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    iget-object v3, p0, Lorg/asdtm/goodweather/SearchActivity;->mCites:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;-><init>(Lorg/asdtm/goodweather/SearchActivity;Ljava/util/List;)V

    iput-object v2, p0, Lorg/asdtm/goodweather/SearchActivity;->mSearchCityAdapter:Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    .line 65
    iget-object v2, p0, Lorg/asdtm/goodweather/SearchActivity;->mSearchCityAdapter:Lorg/asdtm/goodweather/SearchActivity$SearchCityAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 67
    invoke-direct {p0}, Lorg/asdtm/goodweather/SearchActivity;->loadLastFoundCity()V

    .line 68
    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 50
    invoke-virtual {p0}, Lorg/asdtm/goodweather/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f0d001a

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/SearchActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x1b

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 190
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 191
    const/16 v1, 0x1a

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
