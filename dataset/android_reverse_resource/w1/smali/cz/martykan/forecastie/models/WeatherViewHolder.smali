.class public Lcz/martykan/forecastie/models/WeatherViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WeatherViewHolder.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field public itemDate:Landroid/widget/TextView;

.field public itemDescription:Landroid/widget/TextView;

.field public itemHumidity:Landroid/widget/TextView;

.field public itemIcon:Landroid/widget/TextView;

.field public itemPressure:Landroid/widget/TextView;

.field public itemTemperature:Landroid/widget/TextView;

.field public itemyWind:Landroid/widget/TextView;

.field public lineView:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3153b7087d41a234L    # -9.760803989550894E70

    const-string v2, "cz/martykan/forecastie/models/WeatherViewHolder"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/models/WeatherViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 21
    const v0, 0x7f0e009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemDate:Landroid/widget/TextView;

    aput-boolean v2, v1, v2

    .line 22
    const v0, 0x7f0e00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemTemperature:Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 23
    const v0, 0x7f0e009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemDescription:Landroid/widget/TextView;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 24
    const v0, 0x7f0e009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemyWind:Landroid/widget/TextView;

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 25
    const v0, 0x7f0e00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemPressure:Landroid/widget/TextView;

    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    .line 26
    const v0, 0x7f0e00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemHumidity:Landroid/widget/TextView;

    const/4 v0, 0x6

    aput-boolean v2, v1, v0

    .line 27
    const v0, 0x7f0e00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemIcon:Landroid/widget/TextView;

    const/4 v0, 0x7

    aput-boolean v2, v1, v0

    .line 28
    const v0, 0x7f0e009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcz/martykan/forecastie/models/WeatherViewHolder;->lineView:Landroid/view/View;

    .line 29
    const/16 v0, 0x8

    aput-boolean v2, v1, v0

    return-void
.end method
