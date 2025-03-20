.class public Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;
.super Landroid/support/v4/app/Fragment;
.source "WeatherThreeHourlyForecastChildListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;,
        Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastViewHolder;,
        Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$IconCacheRequestListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final JSON_STRING_LIST:Ljava/lang/String; = "json string list"


# instance fields
.field private iconCacheRequestListener:Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$IconCacheRequestListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4dc0070b26892ffaL    # -1.1859254211863583E-66

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;)Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$IconCacheRequestListener;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->iconCacheRequestListener:Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$IconCacheRequestListener;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    new-instance v1, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;

    invoke-direct {v1}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;-><init>()V

    aput-boolean v4, v0, v4

    .line 55
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 56
    const-string v3, "json string list"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 57
    invoke-virtual {v1, v2}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 64
    check-cast p1, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$IconCacheRequestListener;

    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->iconCacheRequestListener:Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$IconCacheRequestListener;

    .line 65
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 70
    const v0, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x6

    aput-boolean v7, v1, v0

    .line 72
    const v0, 0x7f0c0069

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x7

    aput-boolean v7, v1, v3

    .line 73
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x8

    aput-boolean v7, v1, v4

    .line 74
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/16 v3, 0x9

    aput-boolean v7, v1, v3

    .line 76
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0xa

    aput-boolean v7, v1, v4

    .line 77
    new-instance v4, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;

    invoke-direct {v4, v3}, Lcom/haringeymobile/ukweather/utils/ItemDecorationListDivider;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/16 v3, 0xb

    aput-boolean v7, v1, v3

    .line 79
    new-instance v3, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "json string list"

    const/16 v6, 0xc

    aput-boolean v7, v1, v6

    .line 80
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment$ThreeHourlyForecastAdapter;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherThreeHourlyForecastChildListFragment;Ljava/util/ArrayList;)V

    const/16 v4, 0xd

    aput-boolean v7, v1, v4

    .line 81
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 83
    const/16 v0, 0xe

    aput-boolean v7, v1, v0

    return-object v2
.end method
