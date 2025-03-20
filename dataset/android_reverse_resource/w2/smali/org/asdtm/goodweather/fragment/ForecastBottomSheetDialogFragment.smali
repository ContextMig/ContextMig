.class public Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "ForecastBottomSheetDialogFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x760bf3ddd7ee8905L

    const-string v2, "org/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment"

    const/16 v3, 0x48

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/asdtm/goodweather/model/WeatherForecast;)Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    new-instance v1, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;

    invoke-direct {v1}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;-><init>()V

    aput-boolean v4, v0, v4

    .line 24
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 25
    const-string v3, "weatherForecast"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 26
    invoke-virtual {v1, v2}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 32
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 33
    invoke-virtual {p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "weatherForecast"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/asdtm/goodweather/model/WeatherForecast;

    iput-object v0, p0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    .line 34
    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 32

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->$jacocoInit()[Z

    move-result-object v16

    .line 38
    const v6, 0x7f040032

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 40
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lorg/asdtm/goodweather/utils/Utils;->getSpeedScale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    const/4 v8, 0x1

    aput-boolean v8, v16, v7

    .line 41
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0800a8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput-boolean v9, v16, v8

    .line 42
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f080040

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    const/4 v10, 0x1

    aput-boolean v10, v16, v9

    .line 43
    const v9, 0x7f08002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 45
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v10}, Lorg/asdtm/goodweather/model/WeatherForecast;->getTemperatureMorning()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v10, 0xc

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 46
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v10}, Lorg/asdtm/goodweather/model/WeatherForecast;->getTemperatureDay()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/16 v10, 0xd

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 47
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v10}, Lorg/asdtm/goodweather/model/WeatherForecast;->getTemperatureEvening()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    const/16 v10, 0xe

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 48
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v10}, Lorg/asdtm/goodweather/model/WeatherForecast;->getTemperatureNight()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    const/16 v10, 0xf

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 50
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v10}, Lorg/asdtm/goodweather/model/WeatherForecast;->getDescription()Ljava/lang/String;

    move-result-object v22

    const/16 v10, 0x10

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 51
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f0800aa

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x11

    const/4 v15, 0x1

    aput-boolean v15, v16, v14

    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const-string v15, "%.0f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v18, v23, v24

    move-object/from16 v0, v23

    invoke-static {v14, v15, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x12

    const/4 v14, 0x1

    aput-boolean v14, v16, v13

    .line 51
    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x13

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 55
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f0800aa

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x14

    const/4 v15, 0x1

    aput-boolean v15, v16, v14

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const-string v15, "%.0f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v19, v23, v24

    move-object/from16 v0, v23

    invoke-static {v14, v15, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x15

    const/4 v14, 0x1

    aput-boolean v14, v16, v13

    .line 55
    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x16

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 59
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f0800aa

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x17

    const/4 v15, 0x1

    aput-boolean v15, v16, v14

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const-string v15, "%.0f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v20, v23, v24

    move-object/from16 v0, v23

    invoke-static {v14, v15, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x18

    const/4 v14, 0x1

    aput-boolean v14, v16, v13

    .line 59
    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x19

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 63
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f0800aa

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x1a

    const/4 v15, 0x1

    aput-boolean v15, v16, v14

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const-string v15, "%.0f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v21, v23, v24

    move-object/from16 v0, v23

    invoke-static {v14, v15, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x1b

    const/4 v14, 0x1

    aput-boolean v14, v16, v13

    .line 63
    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x1c

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 67
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f080077

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v14}, Lorg/asdtm/goodweather/model/WeatherForecast;->getWindSpeed()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v6, 0x1d

    const/4 v10, 0x1

    aput-boolean v10, v16, v6

    .line 68
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v6}, Lorg/asdtm/goodweather/model/WeatherForecast;->getWindDegree()Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x1e

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/16 v11, 0x1f

    const/4 v12, 0x1

    aput-boolean v12, v16, v11

    .line 70
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/16 v6, 0x20

    const/4 v11, 0x1

    aput-boolean v11, v16, v6

    .line 69
    invoke-static {v10, v12, v13}, Lorg/asdtm/goodweather/utils/Utils;->windDegreeToDirections(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v24

    const/16 v6, 0x21

    const/4 v10, 0x1

    aput-boolean v10, v16, v6

    .line 71
    const v6, 0x7f080071

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v12}, Lorg/asdtm/goodweather/model/WeatherForecast;->getRain()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    const/16 v6, 0x22

    const/4 v10, 0x1

    aput-boolean v10, v16, v6

    .line 72
    const v6, 0x7f080072

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v12}, Lorg/asdtm/goodweather/model/WeatherForecast;->getSnow()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    const/16 v6, 0x23

    const/4 v9, 0x1

    aput-boolean v9, v16, v6

    .line 73
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v9, 0x7f080070

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v12}, Lorg/asdtm/goodweather/model/WeatherForecast;->getPressure()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const/16 v6, 0x24

    const/4 v8, 0x1

    aput-boolean v8, v16, v6

    .line 74
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v8, 0x7f080067

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->mWeather:Lorg/asdtm/goodweather/model/WeatherForecast;

    invoke-virtual {v11}, Lorg/asdtm/goodweather/model/WeatherForecast;->getHumidity()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v6, 0x25

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 76
    const v6, 0x7f0f00a9

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x26

    const/4 v8, 0x1

    aput-boolean v8, v16, v7

    .line 77
    const v7, 0x7f0f00b6

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x27

    const/4 v9, 0x1

    aput-boolean v9, v16, v8

    .line 78
    const v8, 0x7f0f00b9

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x28

    const/4 v10, 0x1

    aput-boolean v10, v16, v9

    .line 79
    const v9, 0x7f0f00bc

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x29

    const/4 v11, 0x1

    aput-boolean v11, v16, v10

    .line 80
    const v10, 0x7f0f00bf

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0x2a

    const/4 v12, 0x1

    aput-boolean v12, v16, v11

    .line 81
    const v11, 0x7f0f00c2

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/16 v12, 0x2b

    const/4 v13, 0x1

    aput-boolean v13, v16, v12

    .line 83
    const v12, 0x7f0f00af

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0x2c

    const/4 v14, 0x1

    aput-boolean v14, v16, v13

    .line 85
    const v13, 0x7f0f00b1

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v14, 0x2d

    const/4 v15, 0x1

    aput-boolean v15, v16, v14

    .line 87
    const v14, 0x7f0f00b3

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v15, 0x2e

    const/16 v29, 0x1

    aput-boolean v29, v16, v15

    .line 89
    const v15, 0x7f0f00ad

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const/16 v29, 0x2f

    const/16 v30, 0x1

    aput-boolean v30, v16, v29

    .line 91
    invoke-virtual/range {p0 .. p0}, Lorg/asdtm/goodweather/fragment/ForecastBottomSheetDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v29

    const-string v30, "fonts/weathericons-regular-webfont.ttf"

    invoke-static/range {v29 .. v30}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v29

    const/16 v30, 0x30

    const/16 v31, 0x1

    aput-boolean v31, v16, v30

    .line 94
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x31

    const/16 v22, 0x1

    aput-boolean v22, v16, v6

    .line 95
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x32

    const/16 v22, 0x1

    aput-boolean v22, v16, v6

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x33

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 97
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x34

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 98
    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x35

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 99
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x36

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 100
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x37

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 101
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    const/16 v6, 0x38

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 104
    .local v4, "temperatureMorningStr":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_1

    const/16 v6, 0x3b

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 107
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    const/16 v6, 0x3e

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 110
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3

    const/16 v6, 0x41

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 113
    :goto_3
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x44

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 114
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x45

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 115
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x46

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 116
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/16 v6, 0x47

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    return-object v17

    .line 101
    .end local v4    # "temperatureMorningStr":Ljava/lang/String;
    :cond_0
    const/16 v6, 0x39

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "temperatureMorningStr":Ljava/lang/String;
    const/16 v6, 0x3a

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    goto :goto_0

    .line 104
    :cond_1
    const/16 v6, 0x3c

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "temperatureDayStr":Ljava/lang/String;
    const/16 v6, 0x3d

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    goto :goto_1

    .line 107
    .end local v2    # "temperatureDayStr":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x3f

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "temperatureEveningStr":Ljava/lang/String;
    const/16 v6, 0x40

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    goto/16 :goto_2

    .line 110
    .end local v3    # "temperatureEveningStr":Ljava/lang/String;
    :cond_3
    const/16 v6, 0x42

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "temperatureNightStr":Ljava/lang/String;
    const/16 v6, 0x43

    const/4 v7, 0x1

    aput-boolean v7, v16, v6

    goto/16 :goto_3
.end method
