.class Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;
.super Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;
.source "GetAvailableCitiesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/GetAvailableCitiesTask$OnCitySearchResponseRetrievedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar",
        "<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        "Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final CITY_SEARCH_RESULTS_FRAGMENT_TAG:Ljava/lang/String; = "ic_action_search results"

.field private static final NO_CITIES_FOUND_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "no cities fragment"


# instance fields
.field private final activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7d17627378d3340fL    # 3.7337501066817727E294

    const-string v2, "com/haringeymobile/ukweather/GetAvailableCitiesTask"

    const/16 v3, 0x2f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 53
    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->setContext(Landroid/content/Context;)Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;

    .line 54
    aput-boolean v2, v0, v2

    return-void
.end method

.method private dealWithSearchResponseForFindCitiesQuery(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->informActivityAboutObtainedSearchResponse(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    .line 111
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->showDialogWithSearchResults(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V

    .line 112
    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    return-void
.end method

.method private displayErrorMessage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->activity:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_0

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    .line 89
    :goto_0
    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    return-void

    .line 85
    :cond_0
    const/16 v1, 0x10

    aput-boolean v4, v0, v1

    .line 86
    iget-object v1, p0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->activity:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f060057

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x11

    aput-boolean v4, v0, v2

    .line 87
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x12

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private getCityName(Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->getCoordinates()Lcom/haringeymobile/ukweather/data/objects/Coordinates;

    move-result-object v1

    const/16 v2, 0x28

    aput-boolean v6, v0, v2

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    aput-boolean v6, v0, v3

    .line 170
    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;->getSystemParameters()Lcom/haringeymobile/ukweather/data/objects/SystemParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/haringeymobile/ukweather/data/objects/SystemParameters;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2a

    aput-boolean v6, v0, v3

    .line 171
    invoke-virtual {v1}, Lcom/haringeymobile/ukweather/data/objects/Coordinates;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5, v7}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->formatDoubleValue(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    aput-boolean v6, v0, v3

    .line 173
    invoke-virtual {v1}, Lcom/haringeymobile/ukweather/data/objects/Coordinates;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5, v7}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->formatDoubleValue(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    const/16 v2, 0x2c

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method private getFoundCityNames(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v1

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x21

    aput-boolean v5, v1, v0

    .line 153
    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->getCities()Ljava/util/List;

    move-result-object v0

    const/16 v3, 0x22

    aput-boolean v5, v1, v3

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v0, 0x23

    aput-boolean v5, v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;

    const/16 v4, 0x24

    aput-boolean v5, v1, v4

    .line 155
    invoke-direct {p0, v0}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->getCityName(Lcom/haringeymobile/ukweather/data/objects/CityCurrentWeather;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x25

    aput-boolean v5, v1, v4

    .line 156
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const/16 v0, 0x26

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 158
    :cond_0
    const/16 v0, 0x27

    aput-boolean v5, v1, v0

    return-object v2
.end method

.method private informActivityAboutObtainedSearchResponse(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->activity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask$OnCitySearchResponseRetrievedListener;

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 124
    invoke-interface {v0, p1}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask$OnCitySearchResponseRetrievedListener;->onSearchResponseForFindQueryRetrieved(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/16 v0, 0x1d

    aput-boolean v4, v1, v0

    return-void

    .line 125
    :catch_0
    move-exception v0

    const/16 v0, 0x1b

    aput-boolean v4, v1, v0

    .line 126
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnCitySearchResponseRetrievedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1c

    aput-boolean v4, v1, v2

    throw v0
.end method

.method private showDialogWithSearchResults(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v1

    .line 138
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->getFoundCityNames(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)Ljava/util/ArrayList;

    move-result-object v0

    .line 139
    .local v0, "foundCityNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v2, 0x1e

    aput-boolean v5, v1, v2

    .line 140
    invoke-static {v0}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->newInstance(Ljava/util/ArrayList;)Lcom/haringeymobile/ukweather/CitySearchResultsDialog;

    move-result-object v2

    const/16 v3, 0x1f

    aput-boolean v5, v1, v3

    .line 141
    iget-object v3, p0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "ic_action_search results"

    invoke-virtual {v2, v3, v4}, Lcom/haringeymobile/ukweather/CitySearchResultsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 143
    const/16 v2, 0x20

    aput-boolean v5, v1, v2

    return-void
.end method

.method private showNoCitiesFoundAlertDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v4, v0, v2

    .line 97
    iget-object v2, p0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->getNoCitiesFoundDialogMessage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    aput-boolean v4, v0, v3

    .line 98
    invoke-static {v1, v2}, Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/haringeymobile/ukweather/utils/GeneralDialogFragment;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v4, v0, v2

    .line 100
    iget-object v2, p0, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "no cities fragment"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URL;)Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v2

    .line 60
    :try_start_0
    new-instance v3, Lcom/haringeymobile/ukweather/data/JsonFetcher;

    invoke-direct {v3}, Lcom/haringeymobile/ukweather/data/JsonFetcher;-><init>()V

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/haringeymobile/ukweather/data/JsonFetcher;->getJsonString(Ljava/net/URL;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    .local v0, "jsonString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    :goto_0
    const/4 v3, 0x6

    aput-boolean v5, v2, v3

    .end local v0    # "jsonString":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 61
    :catch_0
    move-exception v3

    const/4 v3, 0x2

    aput-boolean v5, v2, v3

    .line 62
    const-string v3, "IOException in SearchResponseForFindQuery doInBackground()"

    invoke-static {v3}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->log(Ljava/lang/String;)V

    .line 63
    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 65
    .restart local v0    # "jsonString":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->doInBackground([Ljava/net/URL;)Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    move-result-object v1

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->onPostExecute(Ljava/lang/Object;)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 72
    if-nez p1, :cond_0

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 73
    :goto_0
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->displayErrorMessage()V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 79
    :goto_1
    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;->getCount()I

    move-result v1

    if-ge v1, v3, :cond_2

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 75
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->showNoCitiesFoundAlertDialog()V

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 77
    :cond_2
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->dealWithSearchResponseForFindCitiesQuery(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    check-cast p1, Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;

    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/GetAvailableCitiesTask;->onPostExecute(Lcom/haringeymobile/ukweather/data/objects/SearchResponseForFindQuery;)V

    const/16 v1, 0x2d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
