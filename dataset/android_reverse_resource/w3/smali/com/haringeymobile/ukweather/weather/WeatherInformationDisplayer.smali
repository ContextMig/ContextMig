.class public Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;
.super Ljava/lang/Object;
.source "WeatherInformationDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field protected static final HECTOPASCAL:Ljava/lang/String; = "hPa"

.field protected static final PERCENT_SIGN:Ljava/lang/String; = "%"

.field protected static final SEPARATOR:Ljava/lang/String; = ": "


# instance fields
.field private context:Landroid/content/Context;

.field private iconCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private res:Landroid/content/res/Resources;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4219c683256a8158L    # 2.7676166490626312E10

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherInformationDisplayer"

    const/16 v3, 0x4d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/util/LruCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    .line 46
    iput-object p2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->iconCache:Landroid/support/v4/util/LruCache;

    .line 47
    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$100(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;)Landroid/content/Context;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->context:Landroid/content/Context;

    const/16 v2, 0x4a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;)Landroid/content/res/Resources;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const/16 v2, 0x4b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->addIconToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/16 v1, 0x4c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private addIconToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->iconCache:Landroid/support/v4/util/LruCache;

    if-nez v1, :cond_0

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 79
    :goto_0
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 77
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->iconCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private displayAtmosphericPressureText(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v2

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const v5, 0x7f0600f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    aput-boolean v7, v2, v4

    .line 143
    invoke-interface {p1}, Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;->isPressureProvided()Z

    move-result v0

    .line 145
    .local v0, "isPressureProvided":Z
    if-eqz v0, :cond_0

    const/16 v4, 0x25

    aput-boolean v7, v2, v4

    .line 146
    invoke-interface {p1}, Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;->getPressure()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const/16 v6, 0x26

    aput-boolean v7, v2, v6

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "hPa"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "pressureInfo":Ljava/lang/String;
    const/16 v3, 0x27

    aput-boolean v7, v2, v3

    .line 152
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/16 v3, 0x29

    aput-boolean v7, v2, v3

    return-void

    .line 149
    .end local v1    # "pressureInfo":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const v5, 0x7f060037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "pressureInfo":Ljava/lang/String;
    const/16 v3, 0x28

    aput-boolean v7, v2, v3

    goto :goto_0
.end method

.method private displayHumidity(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const v5, 0x7f0600fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2a

    aput-boolean v7, v2, v4

    .line 163
    invoke-interface {p1}, Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;->isHumidityProvided()Z

    move-result v1

    .line 165
    .local v1, "isHumidityProvided":Z
    if-eqz v1, :cond_0

    const/16 v4, 0x2b

    aput-boolean v7, v2, v4

    .line 166
    invoke-interface {p1}, Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;->getHumidity()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const/16 v6, 0x2c

    aput-boolean v7, v2, v6

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "humidityInfo":Ljava/lang/String;
    const/16 v3, 0x2d

    aput-boolean v7, v2, v3

    .line 172
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const/16 v3, 0x2f

    aput-boolean v7, v2, v3

    return-void

    .line 169
    .end local v0    # "humidityInfo":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const v5, 0x7f060037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "humidityInfo":Ljava/lang/String;
    const/16 v3, 0x2e

    aput-boolean v7, v2, v3

    goto :goto_0
.end method

.method private displayTemperatureText(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v2

    .line 107
    invoke-interface {p1}, Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;->isDayTemperatureProvided()Z

    move-result v0

    .line 109
    .local v0, "isDayTemperatureProvided":Z
    if-eqz v0, :cond_0

    const/16 v3, 0x18

    aput-boolean v8, v2, v3

    .line 110
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->getTemperatureScale()Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    move-result-object v3

    const/16 v4, 0x19

    aput-boolean v8, v2, v4

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v3}, Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;->getDayTemperature(Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;)D

    move-result-wide v6

    invoke-static {v6, v7, v8}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->formatDoubleValue(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const/16 v6, 0x1a

    aput-boolean v8, v2, v6

    .line 112
    invoke-virtual {v3}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->getDisplayResourceId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "temperatureInfo":Ljava/lang/String;
    const/16 v3, 0x1b

    aput-boolean v8, v2, v3

    .line 117
    .end local v1    # "temperatureInfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/16 v3, 0x1d

    aput-boolean v8, v2, v3

    return-void

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const v4, 0x7f060037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1c

    aput-boolean v8, v2, v3

    goto :goto_0
.end method

.method private getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v1

    .line 72
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->iconCache:Landroid/support/v4/util/LruCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0xf

    aput-boolean v3, v1, v2

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->iconCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private getWindSpeedMeasurementUnit()Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->context:Landroid/content/Context;

    const/16 v2, 0x44

    aput-boolean v5, v0, v2

    .line 221
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "wind_speed_measurement_unit"

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->context:Landroid/content/Context;

    const/16 v4, 0x45

    aput-boolean v5, v0, v4

    .line 223
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x46

    aput-boolean v5, v0, v4

    .line 221
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-boolean v5, v0, v2

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x48

    aput-boolean v5, v0, v2

    .line 225
    invoke-static {v1}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->getWindSpeedMeasurementUnitById(I)Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    move-result-object v1

    const/16 v2, 0x49

    aput-boolean v5, v0, v2

    return-object v1
.end method


# virtual methods
.method displayConditions(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const/4 v3, 0x2

    aput-boolean v5, v1, v3

    .line 57
    invoke-interface {p1}, Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;->getWeatherConditionsId()I

    move-result v3

    invoke-static {v3}, Lcom/haringeymobile/ukweather/data/objects/WeatherConditionFinder;->findWeatherConditionStringResourceId(I)I

    move-result v3

    const/4 v4, 0x3

    aput-boolean v5, v1, v4

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v5, v1, v3

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    aput-boolean v5, v1, v4

    .line 59
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v5, v1, v3

    .line 60
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    .line 62
    invoke-interface {p1}, Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;->getIconName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-boolean v5, v1, v3

    .line 63
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    const/16 v2, 0x9

    aput-boolean v5, v1, v2

    .line 65
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v2, 0xa

    aput-boolean v5, v1, v2

    .line 69
    :goto_0
    const/16 v2, 0xc

    aput-boolean v5, v1, v2

    return-void

    .line 67
    :cond_0
    new-instance v3, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p3, v4}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;Landroid/widget/ImageView;Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$1;)V

    new-array v4, v5, [Ljava/lang/String;

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v2, 0xb

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method displayWeatherNumericParametersText(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->displayTemperatureText(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;)V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    .line 94
    invoke-direct {p0, p1, p3}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->displayAtmosphericPressureText(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;)V

    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    .line 95
    invoke-direct {p0, p1, p4}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->displayHumidity(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;)V

    .line 96
    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    return-void
.end method

.method displayWindInfo(Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;Landroid/widget/TextView;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v2

    .line 182
    invoke-interface {p1}, Lcom/haringeymobile/ukweather/data/objects/WeatherInformation;->getWind()Lcom/haringeymobile/ukweather/data/objects/Wind;

    move-result-object v0

    .line 184
    .local v0, "wind":Lcom/haringeymobile/ukweather/data/objects/Wind;
    if-nez v0, :cond_0

    .line 185
    const/16 v3, 0x30

    aput-boolean v8, v2, v3

    .line 212
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->getWindSpeedMeasurementUnit()Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    move-result-object v3

    const/16 v4, 0x31

    aput-boolean v8, v2, v4

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const v6, 0x7f060103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "windInfo":Ljava/lang/String;
    sget-object v4, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->BEAUFORT_SCALE:Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;

    if-ne v3, v4, :cond_1

    const/16 v4, 0x32

    aput-boolean v8, v2, v4

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const v6, 0x7f060105

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x33

    aput-boolean v8, v2, v4

    .line 192
    invoke-virtual {v0, v3}, Lcom/haringeymobile/ukweather/data/objects/Wind;->getSpeed(Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const/16 v3, 0x34

    aput-boolean v8, v2, v3

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    long-to-int v4, v4

    const/16 v5, 0x35

    aput-boolean v8, v2, v5

    .line 195
    invoke-static {v4}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->getBeaufortScaleWindDescriptionStringResourceId(I)I

    move-result v4

    const/16 v5, 0x36

    aput-boolean v8, v2, v5

    .line 194
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x37

    aput-boolean v8, v2, v4

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x38

    aput-boolean v8, v2, v5

    .line 197
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x39

    aput-boolean v8, v2, v3

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    const/16 v3, 0x3a

    aput-boolean v8, v2, v3

    .line 204
    :goto_1
    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "wind_direction_display"

    const/16 v5, 0x3d

    aput-boolean v8, v2, v5

    .line 205
    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x3e

    aput-boolean v8, v2, v3

    .line 211
    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/16 v3, 0x43

    aput-boolean v8, v2, v3

    goto/16 :goto_0

    .line 200
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/haringeymobile/ukweather/data/objects/Wind;->getSpeed(Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;)D

    move-result-wide v6

    invoke-static {v6, v7, v8}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->formatDoubleValue(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const/16 v6, 0x3b

    aput-boolean v8, v2, v6

    .line 201
    invoke-virtual {v3}, Lcom/haringeymobile/ukweather/data/objects/WindSpeedMeasurementUnit;->getDisplayResourceId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3c

    aput-boolean v8, v2, v3

    goto :goto_1

    .line 205
    :cond_2
    const/16 v3, 0x3f

    aput-boolean v8, v2, v3

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const v5, 0x7f060102

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x40

    aput-boolean v8, v2, v4

    .line 207
    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/Wind;->getDirectionInDegrees()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    const v5, 0x7f06013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x41

    aput-boolean v8, v2, v3

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->res:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lcom/haringeymobile/ukweather/data/objects/Wind;->getCardinalDirectionStringResource()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x42

    aput-boolean v8, v2, v3

    goto/16 :goto_2
.end method

.method getTemperatureScale()Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->context:Landroid/content/Context;

    const/16 v2, 0x1e

    aput-boolean v5, v0, v2

    .line 127
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "temperature_scale"

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->context:Landroid/content/Context;

    const/16 v4, 0x1f

    aput-boolean v5, v0, v4

    .line 128
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    aput-boolean v5, v0, v4

    .line 127
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-boolean v5, v0, v2

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x22

    aput-boolean v5, v0, v2

    .line 131
    invoke-static {v1}, Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;->getTemperatureScaleById(I)Lcom/haringeymobile/ukweather/data/objects/TemperatureScale;

    move-result-object v1

    const/16 v2, 0x23

    aput-boolean v5, v0, v2

    return-object v1
.end method
