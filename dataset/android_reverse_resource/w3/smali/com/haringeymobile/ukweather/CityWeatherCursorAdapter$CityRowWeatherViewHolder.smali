.class Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;
.super Ljava/lang/Object;
.source "CityWeatherCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CityRowWeatherViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field buttonCurrentWeather:Landroid/widget/LinearLayout;

.field buttonDailyForecast:Landroid/widget/LinearLayout;

.field buttonThreeHourlyForecast:Landroid/widget/LinearLayout;

.field cityNameTextView:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5245815601ce0a2cL    # -2.0810457307083406E-88

    const-string v2, "com/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$1;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/CityWeatherCursorAdapter$CityRowWeatherViewHolder;-><init>()V

    aput-boolean v1, v0, v1

    return-void
.end method
