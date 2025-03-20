.class Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WeatherThreeHourlyForecastChildListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreeHourlyForecastViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private conditionsImageView:Landroid/widget/ImageView;

.field private conditionsTextView:Landroid/widget/TextView;

.field private forecastStartHourTextView:Landroid/widget/TextView;

.field private humidityTextView:Landroid/widget/TextView;

.field private pressureTextView:Landroid/widget/TextView;

.field private temperatureTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;

.field private windTextView:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xa4ca9e7752c8c27L    # -9.290732008895579E258

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 95
    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 96
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    aput-boolean v2, v1, v2

    .line 97
    const v0, 0x7f0c0092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->forecastStartHourTextView:Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 98
    const v0, 0x7f0c006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->temperatureTextView:Landroid/widget/TextView;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 99
    const v0, 0x7f0c0071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->conditionsTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 101
    const v0, 0x7f0c0070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->conditionsImageView:Landroid/widget/ImageView;

    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    .line 103
    const v0, 0x7f0c006b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->pressureTextView:Landroid/widget/TextView;

    const/4 v0, 0x6

    aput-boolean v2, v1, v0

    .line 105
    const v0, 0x7f0c006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->humidityTextView:Landroid/widget/TextView;

    const/4 v0, 0x7

    aput-boolean v2, v1, v0

    .line 106
    const v0, 0x7f0c006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->windTextView:Landroid/widget/TextView;

    .line 107
    const/16 v0, 0x8

    aput-boolean v2, v1, v0

    return-void
.end method

.method static synthetic access$100(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->conditionsTextView:Landroid/widget/TextView;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/ImageView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->conditionsImageView:Landroid/widget/ImageView;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->temperatureTextView:Landroid/widget/TextView;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->pressureTextView:Landroid/widget/TextView;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$500(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->humidityTextView:Landroid/widget/TextView;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->windTextView:Landroid/widget/TextView;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->forecastStartHourTextView:Landroid/widget/TextView;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
