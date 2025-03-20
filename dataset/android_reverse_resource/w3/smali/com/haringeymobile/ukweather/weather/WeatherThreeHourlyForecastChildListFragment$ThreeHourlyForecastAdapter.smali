.class Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WeatherThreeHourlyForecastChildListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreeHourlyForecastAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TIME_TEMPLATE:Ljava/lang/String; = "HH:mm"


# instance fields
.field final synthetic this$0:Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;

.field private threeHourlyForecastJsonStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x59fba84c0fc9aae8L    # -1.502581543020514E-125

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->threeHourlyForecastJsonStrings:Ljava/util/ArrayList;

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 124
    new-instance v1, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-virtual {p1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-boolean v4, v0, v4

    .line 125
    invoke-static {p1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->access$000(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;)Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$IconCacheRequestListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$IconCacheRequestListener;->getIconMemoryCache()Landroid/support/v4/util/LruCache;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;-><init>(Landroid/content/Context;Landroid/support/v4/util/LruCache;)V

    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    .line 126
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method

.method private displayForecastTime(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 159
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    const/16 v2, 0x10

    aput-boolean v6, v0, v2

    .line 160
    const-string v2, "HH:mm"

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-boolean v6, v0, v2

    .line 162
    invoke-virtual {p2}, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;->getDate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/16 v4, 0x12

    aput-boolean v6, v0, v4

    .line 163
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/16 v2, 0x13

    aput-boolean v6, v0, v2

    .line 164
    invoke-static {p1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->access$700(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/16 v1, 0x14

    aput-boolean v6, v0, v1

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->threeHourlyForecastJsonStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    check-cast p1, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->onBindViewHolder(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;I)V

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onBindViewHolder(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 137
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->threeHourlyForecastJsonStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x6

    aput-boolean v7, v1, v2

    .line 138
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const/4 v3, 0x7

    aput-boolean v7, v1, v3

    .line 139
    const-class v3, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;

    const/16 v2, 0x8

    aput-boolean v7, v1, v2

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->displayForecastTime(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;Lcom/haringeymobile/ukweather/data/objects/CityThreeHourlyWeatherForecast;)V

    const/16 v2, 0x9

    aput-boolean v7, v1, v2

    .line 143
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-static {p1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->access$100(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0xa

    aput-boolean v7, v1, v4

    .line 144
    invoke-static {p1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->access$200(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0xb

    aput-boolean v7, v1, v5

    .line 143
    invoke-virtual {v2, v0, v3, v4}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->displayConditions(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 145
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    const/16 v3, 0xc

    aput-boolean v7, v1, v3

    .line 146
    invoke-static {p1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->access$300(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->access$400(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {p1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->access$500(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0xd

    aput-boolean v7, v1, v6

    .line 145
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->displayWeatherNumericParametersText(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const/16 v2, 0xe

    aput-boolean v7, v1, v2

    .line 147
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->weatherInformationDisplayer:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-static {p1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;->access$600(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->displayWindInfo(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;)V

    .line 148
    const/16 v0, 0xf

    aput-boolean v7, v1, v0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;

    move-result-object v1

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030040

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 131
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    .line 132
    new-instance v2, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;

    invoke-direct {v2, v3, v1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;Landroid/view/View;)V

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    return-object v2
.end method
