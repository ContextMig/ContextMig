.class public Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;
.super Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;
.source "CityListFragmentWithWeatherButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons$OnWeatherInfoButtonClickedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private onWeatherInfoButtonClickedListener:Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons$OnWeatherInfoButtonClickedListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x35098d2ef0282f69L    # -1.343837110477723E53

    const-string v2, "com/haringeymobile/ukweather/CityListFragmentWithWeatherButtons"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getRequestedWeatherInfoType(Landroid/view/View;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->$jacocoInit()[Z

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 76
    .local v0, "viewId":I
    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported view ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    aput-boolean v5, v2, v3

    throw v1

    .line 78
    :pswitch_0
    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->CURRENT_WEATHER:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v3, 0x9

    aput-boolean v5, v2, v3

    .line 82
    :goto_0
    return-object v1

    .line 80
    :pswitch_1
    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->DAILY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v3, 0xa

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 82
    :pswitch_2
    sget-object v1, Lcom/haringeymobile/ukweather/weather/WeatherInfoType;->THREE_HOURLY_WEATHER_FORECAST:Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    const/16 v3, 0xb

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x7f0c008e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getCityCursorAdapter()Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;
    .locals 9

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->$jacocoInit()[Z

    move-result-object v8

    .line 49
    new-instance v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;

    iget-object v1, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->parentActivity:Landroid/app/Activity;

    const v2, 0x7f03003d

    const/4 v3, 0x0

    sget-object v4, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->COLUMNS_TO_DISPLAY:[Ljava/lang/String;

    sget-object v5, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->TO:[I

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILandroid/view/View$OnClickListener;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->onAttach(Landroid/app/Activity;)V

    .line 38
    check-cast p1, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons$OnWeatherInfoButtonClickedListener;

    iput-object p1, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->onWeatherInfoButtonClickedListener:Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons$OnWeatherInfoButtonClickedListener;

    .line 39
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 63
    iget-object v2, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->cursorAdapter:Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;

    invoke-virtual {v2, v1}, Lcom/haringeymobile/ukweather/BaseCityCursorAdapter;->getCityId(I)I

    move-result v1

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 64
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->getRequestedWeatherInfoType(Landroid/view/View;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v2

    const/4 v3, 0x7

    aput-boolean v4, v0, v3

    .line 65
    iget-object v3, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->onWeatherInfoButtonClickedListener:Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons$OnWeatherInfoButtonClickedListener;

    invoke-interface {v3, v1, v2}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons$OnWeatherInfoButtonClickedListener;->onCityWeatherInfoRequested(ILcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    .line 66
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onDetach()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    invoke-super {p0}, Lcom/haringeymobile/ukweather/BaseCityListFragmentWithButtons;->onDetach()V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons;->onWeatherInfoButtonClickedListener:Lcom/haringeymobile/ukweather/CityListFragmentWithWeatherButtons$OnWeatherInfoButtonClickedListener;

    .line 58
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
