.class public Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WeatherForecastViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDateTime:Landroid/widget/TextView;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mIcon:Landroid/widget/TextView;

.field private mTemperatureMax:Landroid/widget/TextView;

.field private mTemperatureMin:Landroid/widget/TextView;

.field private mWeatherForecast:Lorg/asdtm/goodweather/model/WeatherForecast;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xa7700ade4cb5860L

    const-string v2, "org/asdtm/goodweather/adapter/WeatherForecastViewHolder"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    const-string v0, "ForecastViewHolder"

    iput-object v0, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->TAG:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aput-boolean v2, v1, v2

    .line 40
    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mDateTime:Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 41
    const v0, 0x7f0f00a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mIcon:Landroid/widget/TextView;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 42
    const v0, 0x7f0f00a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mTemperatureMin:Landroid/widget/TextView;

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 43
    const v0, 0x7f0f00a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mTemperatureMax:Landroid/widget/TextView;

    .line 44
    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    return-void
.end method


# virtual methods
.method bindWeather(Lorg/asdtm/goodweather/model/WeatherForecast;)V
    .locals 18

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->$jacocoInit()[Z

    move-result-object v5

    .line 47
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mWeatherForecast:Lorg/asdtm/goodweather/model/WeatherForecast;

    const/4 v6, 0x6

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 49
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/weathericons-regular-webfont.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x7

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 51
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "EEE, dd MMMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 52
    new-instance v2, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getDateTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 53
    .local v2, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mContext:Landroid/content/Context;

    const v9, 0x7f0800aa

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x9

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "%.0f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x1

    aput-boolean v17, v5, v16

    .line 55
    invoke-virtual/range {p1 .. p1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getTemperatureMin()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const/16 v16, 0x1

    aput-boolean v16, v5, v15

    .line 54
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 53
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "temperatureMin":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mContext:Landroid/content/Context;

    const v9, 0x7f0800aa

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0xd

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "%.0f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0xe

    const/16 v17, 0x1

    aput-boolean v17, v5, v16

    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getTemperatureMax()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xf

    const/16 v16, 0x1

    aput-boolean v16, v5, v15

    .line 57
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x10

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 56
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x11

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 60
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mDateTime:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v7, 0x12

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 61
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x13

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 62
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mIcon:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getIcon()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/asdtm/goodweather/utils/Utils;->getStrIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x14

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 63
    invoke-virtual/range {p1 .. p1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getTemperatureMin()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    const/16 v6, 0x15

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 66
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mTemperatureMin:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x18

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 67
    invoke-virtual/range {p1 .. p1}, Lorg/asdtm/goodweather/model/WeatherForecast;->getTemperatureMax()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_1

    const/16 v6, 0x19

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 70
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mTemperatureMax:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/16 v6, 0x1c

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    return-void

    .line 63
    :cond_0
    const/16 v6, 0x16

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x17

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    goto :goto_0

    .line 67
    :cond_1
    const/16 v6, 0x1a

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "temperatureMax":Ljava/lang/String;
    const/16 v6, 0x1b

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    new-instance v1, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;

    invoke-direct {v1}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;-><init>()V

    iget-object v2, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mWeatherForecast:Lorg/asdtm/goodweather/model/WeatherForecast;

    const/16 v3, 0x1d

    aput-boolean v5, v0, v3

    .line 76
    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->newInstance(Lorg/asdtm/goodweather/model/WeatherForecast;)Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lorg/asdtm/goodweather/adapter/WeatherForecastViewHolder;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v3, "forecastBottomSheet"

    const/16 v4, 0x1e

    aput-boolean v5, v0, v4

    .line 77
    invoke-virtual {v1, v2, v3}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    const/16 v1, 0x1f

    aput-boolean v5, v0, v1

    return-void
.end method
