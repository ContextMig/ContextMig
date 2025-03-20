.class public Lcom/haringeymobile/ukweather/MainActivity;
.super Lcom/haringeymobile/ukweather/RefreshingActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons$OnWeatherInfoButtonClickedListener;
.implements Lcom/haringeymobile/ukweather/GetAvailableCitiesTask$OnCitySearchResponseRetrievedListener;
.implements Lcom/haringeymobile/ukweather/CitySearchResultsDialog$OnCityNamesListItemClickedListener;
.implements Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;
.implements Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ADD_CITY_FRAGMENT_TAG:Ljava/lang/String; = "add city dialog"

.field public static final CITY_ID:Ljava/lang/String; = "city id"

.field public static final CITY_NAME:Ljava/lang/String; = "city name"

.field public static final LIST_FRAGMENT_TAG:Ljava/lang/String; = "list fragment"

.field private static final QUERY_STRING_TOO_SHORT_ALERT_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "short query fragment"

.field public static final WORKER_FRAGMENT_TAG:Ljava/lang/String; = "worker fragment"


# instance fields
.field private isDualPane:Z

.field private searchResponseForFindQuery:Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

.field private searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5a002b3bcff7b05fL

    const-string v2, "com/haringeymobile/ukweather/MainActivity"

    const/16 v3, 0xb6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/RefreshingActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private displayRetrievedDataInNewActivity(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xa4

    aput-boolean v3, v0, v2

    .line 430
    const-string v2, "weather info type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0xa5

    aput-boolean v3, v0, v2

    .line 431
    const-string v2, "json string"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xa6

    aput-boolean v3, v0, v2

    .line 432
    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/MainActivity;->startActivityWithTransitionAnimation(Landroid/content/Intent;)V

    .line 433
    const/16 v1, 0xa7

    aput-boolean v3, v0, v1

    return-void
.end method

.method private displayRetrievedDataInThisActivity(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 412
    sget-object v2, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    if-ne p2, v2, :cond_0

    const/16 v2, 0x9f

    aput-boolean v5, v1, v2

    .line 413
    const/4 v2, 0x0

    invoke-static {p2, v2, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;->newInstance(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/WeatherInfoFragment;

    move-result-object v0

    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    const/16 v2, 0xa0

    aput-boolean v5, v1, v2

    .line 417
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c0061

    const/16 v4, 0xa2

    aput-boolean v5, v1, v4

    .line 418
    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 419
    const/16 v2, 0xa3

    aput-boolean v5, v1, v2

    return-void

    .line 415
    :cond_0
    invoke-static {p2, p1}, Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;->newInstance(Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Ljava/lang/String;)Lcom/haringeymobile/ukweather/weather/WeatherForecastParentFragment;

    move-result-object v0

    const/16 v2, 0xa1

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method private goToPlayStore()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v0, v2

    .line 309
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x76

    const/4 v6, 0x1

    aput-boolean v6, v0, v5

    .line 310
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x77

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 309
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->startActivityWithTransitionAnimation(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    const/16 v1, 0x78

    aput-boolean v7, v0, v1

    .line 316
    :goto_0
    const/16 v1, 0x7d

    aput-boolean v7, v0, v1

    return-void

    .line 311
    :catch_0
    move-exception v2

    const/16 v2, 0x79

    aput-boolean v7, v0, v2

    .line 312
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x7a

    aput-boolean v7, v0, v4

    .line 313
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x7b

    aput-boolean v7, v0, v1

    .line 312
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->startActivityWithTransitionAnimation(Landroid/content/Intent;)V

    const/16 v1, 0x7c

    aput-boolean v7, v0, v1

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 115
    new-instance v5, Lcom/haringeymobile/ukweather/database/SqlOperation;

    invoke-direct {v5, p0}, Lcom/haringeymobile/ukweather/database/SqlOperation;-><init>(Landroid/content/Context;)V

    .line 116
    .local v5, "sqlOperation":Lcom/haringeymobile/ukweather/database/SqlOperation;
    const/16 v8, 0x18

    aput-boolean v6, v7, v8

    .line 118
    const-string v8, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x19

    aput-boolean v6, v7, v8

    .line 120
    iget-object v8, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v8}, Landroid/support/v7/widget/SearchView;->getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;

    move-result-object v2

    .line 121
    .local v2, "cursorAdapter":Landroid/support/v4/widget/CursorAdapter;
    if-nez v2, :cond_0

    const/16 v8, 0x1a

    aput-boolean v6, v7, v8

    move v1, v6

    .line 141
    :goto_0
    const/16 v8, 0x23

    aput-boolean v6, v7, v8

    .line 155
    .end local v2    # "cursorAdapter":Landroid/support/v4/widget/CursorAdapter;
    :goto_1
    if-nez v1, :cond_5

    const/16 v8, 0x2a

    aput-boolean v6, v7, v8

    .line 160
    :goto_2
    const/16 v8, 0x2e

    aput-boolean v6, v7, v8

    return-void

    .line 121
    .restart local v2    # "cursorAdapter":Landroid/support/v4/widget/CursorAdapter;
    :cond_0
    const/16 v8, 0x1b

    aput-boolean v6, v7, v8

    .line 122
    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 123
    .local v0, "cityCount":I
    if-nez v0, :cond_1

    .line 124
    const/4 v1, 0x0

    .local v1, "collapseSearchViewAfterHandlingIntent":Z
    const/16 v8, 0x1c

    aput-boolean v6, v7, v8

    .line 125
    const v8, 0x7f060041

    invoke-virtual {p0, v8}, Lcom/haringeymobile/ukweather/MainActivity;->showAlertDialog(I)V

    const/16 v8, 0x1d

    aput-boolean v6, v7, v8

    goto :goto_0

    .line 127
    .end local v1    # "collapseSearchViewAfterHandlingIntent":Z
    :cond_1
    new-array v4, v0, [J

    .line 128
    .local v4, "rowIds":[J
    const/4 v3, 0x0

    const/16 v8, 0x1e

    aput-boolean v6, v7, v8

    :goto_3
    if-ge v3, v0, :cond_2

    const/16 v8, 0x1f

    aput-boolean v6, v7, v8

    .line 129
    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v4, v3

    .line 128
    add-int/lit8 v3, v3, 0x1

    .local v3, "i":I
    const/16 v8, 0x20

    aput-boolean v6, v7, v8

    goto :goto_3

    .line 132
    .end local v3    # "i":I
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/haringeymobile/ukweather/MainActivity$1;

    invoke-direct {v9, p0, v5, v4}, Lcom/haringeymobile/ukweather/MainActivity$1;-><init>(Lcom/haringeymobile/ukweather/MainActivity;Lcom/haringeymobile/ukweather/database/SqlOperation;[J)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v9, 0x21

    aput-boolean v6, v7, v9

    .line 138
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    const/16 v8, 0x22

    aput-boolean v6, v7, v8

    move v1, v6

    goto :goto_0

    .line 141
    .end local v0    # "cityCount":I
    .end local v2    # "cursorAdapter":Landroid/support/v4/widget/CursorAdapter;
    .end local v4    # "rowIds":[J
    :cond_3
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x24

    aput-boolean v6, v7, v8

    move v1, v6

    goto :goto_1

    :cond_4
    const/16 v8, 0x25

    aput-boolean v6, v7, v8

    .line 143
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    const/16 v9, 0x26

    aput-boolean v6, v7, v9

    .line 144
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v10, 0x27

    aput-boolean v6, v7, v10

    .line 146
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/haringeymobile/ukweather/MainActivity$2;

    invoke-direct {v11, p0, v5, v8, v9}, Lcom/haringeymobile/ukweather/MainActivity$2;-><init>(Lcom/haringeymobile/ukweather/MainActivity;Lcom/haringeymobile/ukweather/database/SqlOperation;J)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v8, 0x28

    aput-boolean v6, v7, v8

    .line 152
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    const/16 v8, 0x29

    aput-boolean v6, v7, v8

    move v1, v6

    goto/16 :goto_1

    .line 156
    :cond_5
    iget-object v8, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez v8, :cond_6

    const/16 v8, 0x2b

    aput-boolean v6, v7, v8

    goto/16 :goto_2

    :cond_6
    const/16 v8, 0x2c

    aput-boolean v6, v7, v8

    .line 157
    iget-object v8, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v8}, Landroid/support/v7/widget/SearchView;->onActionViewCollapsed()V

    const/16 v8, 0x2d

    aput-boolean v6, v7, v8

    goto/16 :goto_2
.end method

.method private insertNewRecordOrUpdateCity(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x91

    aput-boolean v3, v0, v2

    .line 368
    const-string v2, "com.haringeymobile.ukweather.insert_or_update_city_records"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x92

    aput-boolean v3, v0, v2

    .line 369
    const-string v2, "city id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x93

    aput-boolean v3, v0, v2

    .line 370
    const-string v2, "city name"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x94

    aput-boolean v3, v0, v2

    .line 371
    const-string v2, "json string"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x95

    aput-boolean v3, v0, v2

    .line 372
    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 373
    const/16 v1, 0x96

    aput-boolean v3, v0, v1

    return-void
.end method

.method private saveWeatherInfoRequest(ILcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 383
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->putCityIdIntoSharedPrefs(Landroid/content/Context;IZ)V

    const/16 v1, 0x97

    aput-boolean v2, v0, v1

    .line 384
    invoke-static {p0, p2}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->putLastWeatherInfoTypeIntoSharedPrefs(Landroid/content/Context;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    .line 385
    const/16 v1, 0x98

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setCitySearching(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 232
    const v0, 0x7f0c0095

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x4f

    aput-boolean v4, v1, v2

    .line 233
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    const/16 v0, 0x50

    aput-boolean v4, v1, v0

    .line 235
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/haringeymobile/ukweather/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const/16 v2, 0x51

    aput-boolean v4, v1, v2

    .line 236
    iget-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    const/16 v0, 0x52

    aput-boolean v4, v1, v0

    .line 237
    iget-object v0, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/SearchView;->setSubmitButtonEnabled(Z)V

    const/16 v0, 0x53

    aput-boolean v4, v1, v0

    .line 238
    iget-object v0, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 239
    const/16 v0, 0x54

    aput-boolean v4, v1, v0

    return-void
.end method

.method private showAddCityDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 292
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 293
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v3, "add city dialog"

    const/16 v4, 0x6f

    aput-boolean v5, v2, v4

    .line 294
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/AddCityFragment;

    .line 295
    .local v0, "addCityFragment":Lcom/haringeymobile/ukweather/AddCityFragment;
    if-eqz v0, :cond_0

    const/16 v3, 0x70

    aput-boolean v5, v2, v3

    .line 299
    :goto_0
    const/16 v3, 0x74

    aput-boolean v5, v2, v3

    return-void

    .line 295
    :cond_0
    const/16 v3, 0x71

    aput-boolean v5, v2, v3

    .line 296
    new-instance v0, Lcom/haringeymobile/ukweather/AddCityFragment;

    .end local v0    # "addCityFragment":Lcom/haringeymobile/ukweather/AddCityFragment;
    invoke-direct {v0}, Lcom/haringeymobile/ukweather/AddCityFragment;-><init>()V

    .restart local v0    # "addCityFragment":Lcom/haringeymobile/ukweather/AddCityFragment;
    const/16 v3, 0x72

    aput-boolean v5, v2, v3

    .line 297
    const-string v3, "add city dialog"

    invoke-virtual {v0, v1, v3}, Lcom/haringeymobile/ukweather/AddCityFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/16 v3, 0x73

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method private startActivityWithTransitionAnimation(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 436
    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0xa8

    aput-boolean v3, v0, v1

    .line 437
    const v1, 0x7f040006

    const v2, 0x7f040009

    invoke-virtual {p0, v1, v2}, Lcom/haringeymobile/ukweather/MainActivity;->overridePendingTransition(II)V

    .line 438
    const/16 v1, 0xa9

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public displayRetrievedData(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 395
    iget-boolean v1, p0, Lcom/haringeymobile/ukweather/MainActivity;->isDualPane:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x9b

    aput-boolean v2, v0, v1

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/haringeymobile/ukweather/MainActivity;->displayRetrievedDataInThisActivity(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v1, 0x9c

    aput-boolean v2, v0, v1

    .line 400
    :goto_0
    const/16 v1, 0x9e

    aput-boolean v2, v0, v1

    return-void

    .line 398
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/haringeymobile/ukweather/MainActivity;->displayRetrievedDataInNewActivity(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v1, 0x9d

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onCityWeatherInfoRequested(ILcom/haringeymobile/ukweather/weather/WeatherInfoType;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/haringeymobile/ukweather/MainActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-virtual {v1, p1, p2}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->retrieveWeatherInfoJsonString(ILcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v1, 0x99

    aput-boolean v2, v0, v1

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/haringeymobile/ukweather/MainActivity;->saveWeatherInfoRequest(ILcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    .line 391
    const/16 v1, 0x9a

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 75
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v3, v4, v3

    .line 76
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->setContentView(I)V

    const/4 v2, 0x2

    aput-boolean v3, v4, v2

    .line 77
    const v2, 0x7f0c006a

    invoke-virtual {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    const/4 v5, 0x3

    aput-boolean v3, v4, v5

    .line 78
    invoke-virtual {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v2, 0x4

    aput-boolean v3, v4, v2

    .line 80
    const v2, 0x7f0c0061

    invoke-virtual {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    aput-boolean v3, v4, v2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->isDualPane:Z

    const/4 v2, 0x7

    aput-boolean v3, v4, v2

    .line 82
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const/16 v2, 0x8

    aput-boolean v3, v4, v2

    .line 83
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 84
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const-string v2, "worker fragment"

    const/16 v6, 0x9

    aput-boolean v3, v4, v6

    .line 85
    invoke-virtual {v5, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    iput-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    .line 86
    iget-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    aput-boolean v3, v4, v2

    .line 90
    :goto_1
    const-string v2, "list fragment"

    invoke-virtual {v5, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 91
    .local v0, "cityListFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    const/16 v2, 0xe

    aput-boolean v3, v4, v2

    .line 96
    :goto_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const/16 v2, 0x12

    aput-boolean v3, v4, v2

    .line 98
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v5, 0x13

    aput-boolean v3, v4, v5

    .line 99
    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 101
    iget-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez v2, :cond_3

    const/16 v2, 0x14

    aput-boolean v3, v4, v2

    .line 104
    :goto_3
    const/16 v2, 0x17

    aput-boolean v3, v4, v2

    return-void

    .line 80
    .end local v0    # "cityListFragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x6

    aput-boolean v3, v4, v5

    goto :goto_0

    .line 86
    .restart local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    const/16 v2, 0xb

    aput-boolean v3, v4, v2

    .line 87
    new-instance v2, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-direct {v2}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;-><init>()V

    iput-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    const/16 v2, 0xc

    aput-boolean v3, v4, v2

    .line 88
    iget-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    const-string v6, "worker fragment"

    invoke-virtual {v1, v2, v6}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0xd

    aput-boolean v3, v4, v2

    goto :goto_1

    .line 91
    .restart local v0    # "cityListFragment":Landroid/support/v4/app/Fragment;
    :cond_2
    const/16 v2, 0xf

    aput-boolean v3, v4, v2

    .line 92
    new-instance v0, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;

    .end local v0    # "cityListFragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;-><init>()V

    .restart local v0    # "cityListFragment":Landroid/support/v4/app/Fragment;
    const/16 v2, 0x10

    aput-boolean v3, v4, v2

    .line 93
    const v2, 0x7f0c0060

    const-string v5, "list fragment"

    invoke-virtual {v1, v2, v0, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0x11

    aput-boolean v3, v4, v2

    goto :goto_2

    .line 101
    :cond_3
    const/16 v2, 0x15

    aput-boolean v3, v4, v2

    .line 102
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->handleIntent(Landroid/content/Intent;)V

    const/16 v2, 0x16

    aput-boolean v3, v4, v2

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v1, 0x4d

    aput-boolean v3, v0, v1

    .line 222
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/MainActivity;->setCitySearching(Landroid/view/Menu;)V

    .line 223
    const/16 v1, 0x4e

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onFoundCityNamesItemClicked(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 326
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v4, "add city dialog"

    const/16 v5, 0x7f

    aput-boolean v7, v3, v5

    .line 327
    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/AddCityFragment;

    .line 328
    .local v0, "addCityFragment":Lcom/haringeymobile/ukweather/AddCityFragment;
    if-nez v0, :cond_0

    const/16 v2, 0x80

    aput-boolean v7, v3, v2

    .line 332
    :goto_0
    iget-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    if-nez v2, :cond_1

    const/16 v2, 0x83

    aput-boolean v7, v3, v2

    .line 336
    :goto_1
    iget-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchResponseForFindQuery:Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    if-nez v2, :cond_2

    const/16 v2, 0x86

    aput-boolean v7, v3, v2

    .line 355
    :goto_2
    const/16 v2, 0x90

    aput-boolean v7, v3, v2

    return-void

    .line 328
    :cond_0
    const/16 v2, 0x81

    aput-boolean v7, v3, v2

    .line 329
    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/AddCityFragment;->dismiss()V

    const/16 v2, 0x82

    aput-boolean v7, v3, v2

    goto :goto_0

    .line 332
    :cond_1
    const/16 v2, 0x84

    aput-boolean v7, v3, v2

    .line 333
    iget-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->onActionViewCollapsed()V

    const/16 v2, 0x85

    aput-boolean v7, v3, v2

    goto :goto_1

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchResponseForFindQuery:Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    const/16 v4, 0x87

    aput-boolean v7, v3, v4

    .line 338
    invoke-virtual {v2}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->getCities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;

    const/16 v4, 0x88

    aput-boolean v7, v3, v4

    .line 339
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "currentWeatherJsonString":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/haringeymobile/ukweather/MainActivity;->isDualPane:Z

    if-nez v4, :cond_3

    const/16 v4, 0x89

    aput-boolean v7, v3, v4

    .line 350
    :goto_3
    invoke-virtual {v2}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->getCityId()I

    move-result v4

    const/16 v5, 0x8c

    aput-boolean v7, v3, v5

    .line 351
    invoke-virtual {v2}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->getCityName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8d

    aput-boolean v7, v3, v6

    .line 350
    invoke-direct {p0, v4, v5, v1}, Lcom/haringeymobile/ukweather/MainActivity;->insertNewRecordOrUpdateCity(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8e

    aput-boolean v7, v3, v4

    .line 352
    invoke-virtual {v2}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->getCityId()I

    move-result v2

    sget-object v4, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-direct {p0, v2, v4}, Lcom/haringeymobile/ukweather/MainActivity;->saveWeatherInfoRequest(ILcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v2, 0x8f

    aput-boolean v7, v3, v2

    goto :goto_2

    .line 341
    :cond_3
    const/16 v4, 0x8a

    aput-boolean v7, v3, v4

    .line 342
    sget-object v4, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    invoke-direct {p0, v1, v4}, Lcom/haringeymobile/ukweather/MainActivity;->displayRetrievedDataInThisActivity(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/16 v4, 0x8b

    aput-boolean v7, v3, v4

    goto :goto_3
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 164
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onNewIntent(Landroid/content/Intent;)V

    const/16 v1, 0x2f

    aput-boolean v2, v0, v1

    .line 167
    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/MainActivity;->setIntent(Landroid/content/Intent;)V

    const/16 v1, 0x30

    aput-boolean v2, v0, v1

    .line 168
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/MainActivity;->handleIntent(Landroid/content/Intent;)V

    .line 169
    const/16 v1, 0x31

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 271
    .local v0, "id":I
    const v2, 0x7f0c0096

    if-ne v0, v2, :cond_0

    const/16 v2, 0x60

    aput-boolean v4, v1, v2

    .line 272
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/MainActivity;->showAddCityDialog()V

    const/16 v2, 0x61

    aput-boolean v4, v1, v2

    .line 285
    :goto_0
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    const/16 v3, 0x6e

    aput-boolean v4, v1, v3

    return v2

    .line 273
    :cond_0
    const v2, 0x7f0c0098

    if-ne v0, v2, :cond_1

    const/16 v2, 0x62

    aput-boolean v4, v1, v2

    .line 274
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/haringeymobile/ukweather/CityManagementActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x63

    aput-boolean v4, v1, v3

    .line 275
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->startActivityWithTransitionAnimation(Landroid/content/Intent;)V

    .line 276
    const/16 v2, 0x64

    aput-boolean v4, v1, v2

    goto :goto_0

    :cond_1
    const v2, 0x7f0c0099

    if-ne v0, v2, :cond_2

    const/16 v2, 0x65

    aput-boolean v4, v1, v2

    .line 277
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/haringeymobile/ukweather/settings/SettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x66

    aput-boolean v4, v1, v3

    .line 278
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->startActivityWithTransitionAnimation(Landroid/content/Intent;)V

    .line 279
    const/16 v2, 0x67

    aput-boolean v4, v1, v2

    goto :goto_0

    :cond_2
    const v2, 0x7f0c009a

    if-ne v0, v2, :cond_3

    const/16 v2, 0x68

    aput-boolean v4, v1, v2

    .line 280
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/MainActivity;->goToPlayStore()V

    const/16 v2, 0x69

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 281
    :cond_3
    const v2, 0x7f0c009b

    if-eq v0, v2, :cond_4

    const/16 v2, 0x6a

    aput-boolean v4, v1, v2

    goto :goto_0

    :cond_4
    const/16 v2, 0x6b

    aput-boolean v4, v1, v2

    .line 282
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/haringeymobile/ukweather/AboutActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x6c

    aput-boolean v4, v1, v3

    .line 283
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/MainActivity;->startActivityWithTransitionAnimation(Landroid/content/Intent;)V

    const/16 v2, 0x6d

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 441
    invoke-super {p0}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onPause()V

    .line 443
    const-string v1, "jacoco"

    const/16 v3, 0xaa

    aput-boolean v9, v2, v3

    .line 446
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xab

    aput-boolean v9, v2, v3

    .line 447
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

    const/16 v4, 0xac

    aput-boolean v9, v2, v4

    .line 448
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xad

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 450
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0xae

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 451
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 452
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0xaf

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 453
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0xb0

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 452
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0xb1

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 455
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

    const/16 v3, 0xb2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 456
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    const/16 v1, 0xb5

    aput-boolean v9, v2, v1

    return-void

    .line 457
    :catch_0
    move-exception v1

    const/16 v3, 0xb3

    aput-boolean v9, v2, v3

    .line 458
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xb4

    aput-boolean v9, v2, v1

    throw v3
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 255
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->isUserOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x57

    aput-boolean v4, v1, v2

    .line 256
    new-instance v2, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;

    invoke-direct {v2, p0, p1}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    const/16 v3, 0x58

    aput-boolean v4, v1, v3

    .line 258
    invoke-virtual {v2, p0}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->getUrlForFindCitiesQuery(Landroid/content/Context;)Ljava/net/URL;

    move-result-object v0

    .line 259
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    const/16 v2, 0x59

    aput-boolean v4, v1, v2

    .line 262
    :goto_0
    const/16 v2, 0x5c

    aput-boolean v4, v1, v2

    .line 266
    .end local v0    # "url":Ljava/net/URL;
    :goto_1
    const/16 v2, 0x5f

    aput-boolean v4, v1, v2

    return-void

    .line 259
    .restart local v0    # "url":Ljava/net/URL;
    :cond_0
    const/16 v2, 0x5a

    aput-boolean v4, v1, v2

    .line 260
    new-instance v2, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;

    invoke-direct {v2, p0}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    new-array v3, v4, [Ljava/net/URL;

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v2, 0x5b

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 263
    .end local v0    # "url":Ljava/net/URL;
    :cond_1
    const v2, 0x7f060057

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0x5d

    aput-boolean v4, v1, v3

    .line 264
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x5e

    aput-boolean v4, v1, v2

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 173
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/16 v1, 0x32

    aput-boolean v4, v2, v1

    .line 174
    const-string v1, "json string"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "jsonString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v1, 0x33

    aput-boolean v4, v2, v1

    .line 179
    :goto_0
    const/16 v1, 0x36

    aput-boolean v4, v2, v1

    return-void

    .line 175
    :cond_0
    const/16 v1, 0x34

    aput-boolean v4, v2, v1

    .line 176
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    iput-object v1, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchResponseForFindQuery:Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    const/16 v1, 0x35

    aput-boolean v4, v2, v1

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 191
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    iget-object v1, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchResponseForFindQuery:Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    if-nez v1, :cond_0

    const/16 v1, 0x3b

    aput-boolean v5, v0, v1

    .line 196
    :goto_0
    const/16 v1, 0x40

    aput-boolean v5, v0, v1

    return-void

    .line 192
    :cond_0
    const/16 v1, 0x3c

    aput-boolean v5, v0, v1

    .line 193
    const-string v1, "json string"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchResponseForFindQuery:Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    const/16 v4, 0x3d

    aput-boolean v5, v0, v4

    .line 194
    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e

    aput-boolean v5, v0, v3

    .line 193
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3f

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method public onSearchResponseForFindQueryRetrieved(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 321
    iput-object p1, p0, Lcom/haringeymobile/ukweather/MainActivity;->searchResponseForFindQuery:Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    .line 322
    const/16 v1, 0x7e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 200
    const-string v2, "app_theme"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x41

    aput-boolean v5, v1, v2

    .line 201
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->recreate()V

    const/16 v2, 0x42

    aput-boolean v5, v1, v2

    .line 217
    .local v0, "newAppLocaleCode":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x4c

    aput-boolean v5, v1, v2

    return-void

    .line 202
    .end local v0    # "newAppLocaleCode":Ljava/lang/String;
    :cond_0
    const-string v2, "app_language"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x43

    aput-boolean v5, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x44

    aput-boolean v5, v1, v2

    .line 203
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x45

    aput-boolean v5, v1, v3

    .line 204
    const-string v3, "app_language"

    const-string v4, "device_language"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x46

    aput-boolean v5, v1, v2

    .line 207
    const-string v2, "device_language"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    sget-object v0, Lcom/haringeymobile/ukweather/WorldWeatherApplication;->systemLocaleCode:Ljava/lang/String;

    .restart local v0    # "newAppLocaleCode":Ljava/lang/String;
    const/16 v2, 0x47

    aput-boolean v5, v1, v2

    .line 212
    :goto_1
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->updateLocale(Ljava/lang/String;Landroid/content/res/Resources;)V

    const/16 v2, 0x49

    aput-boolean v5, v1, v2

    .line 214
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->recreate()V

    const/16 v2, 0x4a

    aput-boolean v5, v1, v2

    .line 215
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->resetActionBarTitle()V

    const/16 v2, 0x4b

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 210
    .end local v0    # "newAppLocaleCode":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x48

    aput-boolean v5, v1, v2

    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 183
    invoke-super {p0}, Lcom/haringeymobile/ukweather/RefreshingActivity;->onStart()V

    .line 184
    iget-boolean v1, p0, Lcom/haringeymobile/ukweather/MainActivity;->isDualPane:Z

    if-nez v1, :cond_0

    const/16 v1, 0x37

    aput-boolean v2, v0, v1

    .line 187
    :goto_0
    const/16 v1, 0x3a

    aput-boolean v2, v0, v1

    return-void

    .line 184
    :cond_0
    const/16 v1, 0x38

    aput-boolean v2, v0, v1

    .line 185
    iget-object v1, p0, Lcom/haringeymobile/ukweather/MainActivity;->workerFragment:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-virtual {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->retrieveLastRequestedWeatherInfo()V

    const/16 v1, 0x39

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public showAlertDialog(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;

    move-result-object v1

    const/16 v2, 0x55

    aput-boolean v4, v0, v2

    .line 244
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "short query fragment"

    invoke-virtual {v1, v2, v3}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 245
    const/16 v1, 0x56

    aput-boolean v4, v0, v1

    return-void
.end method
