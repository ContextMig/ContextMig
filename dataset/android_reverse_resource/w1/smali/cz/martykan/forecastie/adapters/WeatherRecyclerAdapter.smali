.class public Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WeatherRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcz/martykan/forecastie/models/WeatherViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/martykan/forecastie/models/Weather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3104bd215012fe05L    # 1.467217365346353E-72

    const-string v2, "cz/martykan/forecastie/adapters/WeatherRecyclerAdapter"

    const/16 v3, 0x41

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcz/martykan/forecastie/models/Weather;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p2, p0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->itemList:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    .line 32
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

    invoke-static {}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 132
    iget-object v0, p0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->itemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x3c

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x3e

    aput-boolean v3, v1, v2

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x3d

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    check-cast p1, Lcz/martykan/forecastie/models/WeatherViewHolder;

    invoke-virtual {p0, p1, p2}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->onBindViewHolder(Lcz/martykan/forecastie/models/WeatherViewHolder;I)V

    const/16 v1, 0x3f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onBindViewHolder(Lcz/martykan/forecastie/models/WeatherViewHolder;I)V
    .locals 22

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->$jacocoInit()[Z

    move-result-object v12

    .line 44
    move-object/from16 v0, p0

    iget-object v10, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->itemList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcz/martykan/forecastie/models/Weather;

    const/4 v11, 0x3

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    .line 46
    move-object/from16 v0, p0

    iget-object v11, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const/4 v11, 0x4

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 49
    invoke-virtual {v10}, Lcz/martykan/forecastie/models/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11, v13}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertTemperature(FLandroid/content/SharedPreferences;)F

    move-result v7

    const/4 v11, 0x5

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 50
    const-string v11, "temperatureInteger"

    const/4 v14, 0x0

    invoke-interface {v13, v11, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x6

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 55
    .local v7, "temperature":F
    :goto_0
    invoke-virtual {v10}, Lcz/martykan/forecastie/models/Weather;->getRain()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const/16 v11, 0x9

    const/16 v16, 0x1

    aput-boolean v16, v12, v11

    .line 56
    invoke-static {v14, v15, v13}, Lcz/martykan/forecastie/utils/UnitConvertor;->getRainString(DLandroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v14

    const/16 v11, 0xa

    const/4 v15, 0x1

    :try_start_0
    aput-boolean v15, v12, v11

    .line 61
    invoke-virtual {v10}, Lcz/martykan/forecastie/models/Weather;->getWind()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 65
    .local v8, "wind":D
    const/16 v11, 0xb

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 66
    .end local v8    # "wind":D
    :goto_1
    invoke-static {v8, v9, v13}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertWind(DLandroid/content/SharedPreferences;)D

    move-result-wide v8

    .restart local v8    # "wind":D
    const/16 v11, 0xe

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 69
    invoke-virtual {v10}, Lcz/martykan/forecastie/models/Weather;->getPressure()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v11, v0

    invoke-static {v11, v13}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertPressure(FLandroid/content/SharedPreferences;)F

    move-result v11

    float-to-double v0, v11

    move-wide/from16 v16, v0

    const/16 v11, 0xf

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 71
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    const/16 v15, 0x10

    const/16 v18, 0x1

    aput-boolean v18, v12, v15

    .line 72
    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v18, 0x7f0c0000

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    aget-object v15, v15, v18

    const/16 v18, 0x11

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 73
    const-string v18, "dateFormat"

    move-object/from16 v0, v18

    invoke-interface {v13, v0, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x12

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 74
    const-string v18, "custom"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const/16 v15, 0x13

    const/16 v18, 0x1

    aput-boolean v18, v12, v15

    .line 79
    :goto_2
    :try_start_1
    new-instance v15, Ljava/text/SimpleDateFormat;

    invoke-direct {v15, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x16

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 80
    invoke-virtual {v15, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v11, 0x17

    const/16 v18, 0x1

    aput-boolean v18, v12, v11

    .line 81
    invoke-virtual {v10}, Lcz/martykan/forecastie/models/Weather;->getDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 84
    .local v6, "dateString":Ljava/lang/String;
    const/16 v11, 0x18

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 86
    .end local v6    # "dateString":Ljava/lang/String;
    :goto_3
    const-string v11, "differentiateDaysByTint"

    const/4 v15, 0x0

    invoke-interface {v13, v11, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2

    const/16 v11, 0x1b

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 106
    :goto_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemDate:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x26

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 107
    const-string v11, "displayDecimalZeroes"

    const/4 v15, 0x0

    invoke-interface {v13, v11, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x27

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 108
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemTemperature:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v18, Ljava/text/DecimalFormat;

    const-string v19, "#.0"

    invoke-direct/range {v18 .. v19}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v0, v7

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "unit"

    const-string v19, "\u00b0C"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x28

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 112
    :goto_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemDescription:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcz/martykan/forecastie/models/Weather;->getDescription()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v18, 0x2a

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 113
    invoke-virtual {v10}, Lcz/martykan/forecastie/models/Weather;->getDescription()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2b

    const/16 v18, 0x1

    aput-boolean v18, v12, v15

    .line 112
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x2c

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v14, "fonts/weather.ttf"

    invoke-static {v11, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    const/16 v14, 0x2d

    const/4 v15, 0x1

    aput-boolean v15, v12, v14

    .line 115
    move-object/from16 v0, p1

    iget-object v14, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemIcon:Landroid/widget/TextView;

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v11, 0x2e

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 116
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemIcon:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcz/martykan/forecastie/models/Weather;->getIcon()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x2f

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 117
    const-string v11, "speedUnit"

    const-string v14, "m/s"

    invoke-interface {v13, v11, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "bft"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x30

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 118
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemyWind:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    const v18, 0x7f07005c

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    double-to-int v15, v8

    const/16 v18, 0x31

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 119
    invoke-static {v15}, Lcz/martykan/forecastie/utils/UnitConvertor;->getBeaufortName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v13, v15, v10}, Lcz/martykan/forecastie/activities/MainActivity;->getWindDirectionString(Landroid/content/SharedPreferences;Landroid/content/Context;Lcz/martykan/forecastie/models/Weather;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x32

    const/16 v18, 0x1

    aput-boolean v18, v12, v15

    .line 118
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x33

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 125
    :goto_6
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemPressure:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    const v18, 0x7f07002d

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/text/DecimalFormat;

    const-string v18, "#.0"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    const-string v16, "pressureUnit"

    const-string v17, "hPa"

    const/16 v18, 0x38

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 126
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v13, v15, v0, v1}, Lcz/martykan/forecastie/activities/MainActivity;->localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x39

    const/4 v15, 0x1

    aput-boolean v15, v12, v14

    .line 125
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x3a

    const/4 v13, 0x1

    aput-boolean v13, v12, v11

    .line 127
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemHumidity:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    const v15, 0x7f070021

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcz/martykan/forecastie/models/Weather;->getHumidity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " %"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const/16 v10, 0x3b

    const/4 v11, 0x1

    aput-boolean v11, v12, v10

    return-void

    .line 50
    .end local v7    # "temperature":F
    .end local v8    # "wind":D
    :cond_0
    const/4 v11, 0x7

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 51
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v7, v11

    .restart local v7    # "temperature":F
    const/16 v11, 0x8

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    goto/16 :goto_0

    .line 62
    :catch_0
    move-exception v11

    const/16 v15, 0xc

    const/16 v16, 0x1

    aput-boolean v16, v12, v15

    .line 63
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const-wide/16 v8, 0x0

    const/16 v11, 0xd

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    goto/16 :goto_1

    .line 74
    .restart local v8    # "wind":D
    :cond_1
    const/16 v18, 0x14

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 75
    const-string v18, "dateFormatCustom"

    move-object/from16 v0, v18

    invoke-interface {v13, v0, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "dateFormat":Ljava/lang/String;
    const/16 v15, 0x15

    const/16 v18, 0x1

    :try_start_2
    aput-boolean v18, v12, v15
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 82
    .end local v5    # "dateFormat":Ljava/lang/String;
    :catch_1
    move-exception v11

    const/16 v11, 0x19

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 83
    move-object/from16 v0, p0

    iget-object v11, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v15, 0x7f07001f

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x1a

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    goto/16 :goto_3

    .line 86
    :cond_2
    const/16 v11, 0x1c

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 87
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    const/16 v15, 0x1d

    const/16 v18, 0x1

    aput-boolean v18, v12, v15

    .line 91
    invoke-virtual {v10, v11}, Lcz/martykan/forecastie/models/Weather;->getNumDaysFrom(Ljava/util/Date;)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    cmp-long v15, v18, v20

    if-gtz v15, :cond_3

    const/16 v11, 0x1e

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    goto/16 :goto_4

    :cond_3
    const/16 v15, 0x1f

    const/16 v18, 0x1

    aput-boolean v18, v12, v15

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v15

    const/16 v18, 0x20

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 93
    invoke-virtual {v10, v11}, Lcz/martykan/forecastie/models/Weather;->getNumDaysFrom(Ljava/util/Date;)J

    move-result-wide v18

    const-wide/16 v20, 0x2

    rem-long v18, v18, v20

    const-wide/16 v20, 0x1

    cmp-long v11, v18, v20

    if-nez v11, :cond_4

    const/16 v11, 0x21

    const/16 v18, 0x1

    aput-boolean v18, v12, v11

    .line 94
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0027

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .local v4, "color":I
    const/16 v11, 0x22

    const/16 v18, 0x1

    aput-boolean v18, v12, v11

    .line 101
    .end local v4    # "color":I
    :goto_7
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v11, 0x24

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    .line 102
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v11, 0x25

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    goto/16 :goto_4

    .line 99
    :cond_4
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0024

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const/16 v11, 0x23

    const/16 v18, 0x1

    aput-boolean v18, v12, v11

    goto :goto_7

    .line 110
    :cond_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemTemperature:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v18, Ljava/text/DecimalFormat;

    const-string v19, "#.#"

    invoke-direct/range {v18 .. v19}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v0, v7

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "unit"

    const-string v19, "\u00b0C"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x29

    const/4 v15, 0x1

    aput-boolean v15, v12, v11

    goto/16 :goto_5

    .line 121
    :cond_6
    move-object/from16 v0, p1

    iget-object v11, v0, Lcz/martykan/forecastie/models/WeatherViewHolder;->itemyWind:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    const v18, 0x7f07005c

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/text/DecimalFormat;

    const-string v18, "#.0"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    const-string v18, "speedUnit"

    const-string v19, "m/s"

    const/16 v20, 0x34

    const/16 v21, 0x1

    aput-boolean v21, v12, v20

    .line 122
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v13, v15, v0, v1}, Lcz/martykan/forecastie/activities/MainActivity;->localize(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->context:Landroid/content/Context;

    const/16 v18, 0x35

    const/16 v19, 0x1

    aput-boolean v19, v12, v18

    .line 123
    invoke-static {v13, v15, v10}, Lcz/martykan/forecastie/activities/MainActivity;->getWindDirectionString(Landroid/content/SharedPreferences;Landroid/content/Context;Lcz/martykan/forecastie/models/Weather;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x36

    const/16 v18, 0x1

    aput-boolean v18, v12, v15

    .line 121
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x37

    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    goto/16 :goto_6

    .line 92
    :array_0
    .array-data 4
        0x7f010001
        0x7f010000
    .end array-data
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcz/martykan/forecastie/models/WeatherViewHolder;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcz/martykan/forecastie/models/WeatherViewHolder;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcz/martykan/forecastie/adapters/WeatherRecyclerAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-boolean v5, v1, v5

    .line 38
    new-instance v0, Lcz/martykan/forecastie/models/WeatherViewHolder;

    invoke-direct {v0, v2}, Lcz/martykan/forecastie/models/WeatherViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    .local v0, "viewHolder":Lcz/martykan/forecastie/models/WeatherViewHolder;
    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    return-object v0
.end method
