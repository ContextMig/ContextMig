.class public Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WeatherForecastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mWeatherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/WeatherForecast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2f7fc2df83a76637L    # -6.017030108390173E79

    const-string v2, "org/asdtm/goodweather/adapter/WeatherForecastAdapter"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/WeatherForecast;",
            ">;",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->mWeatherList:Ljava/util/List;

    .line 24
    iput-object p3, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 42
    iget-object v0, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->mWeatherList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->mWeatherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    check-cast p1, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->onBindViewHolder(Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;I)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onBindViewHolder(Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 36
    iget-object v0, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->mWeatherList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/asdtm/goodweather/model/WeatherForecast;

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 37
    invoke-virtual {p1, v0}, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->bindWeather(Lorg/asdtm/goodweather/model/WeatherForecast;)V

    .line 38
    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    aput-boolean v5, v0, v5

    .line 30
    const v2, 0x7f040031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    .line 31
    new-instance v2, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;

    iget-object v3, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v2, v1, v3, v4}, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    return-object v2
.end method
