.class public Lcz/martykan/forecastie/activities/GraphActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GraphActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field maxPressure:F

.field maxRain:F

.field maxTemp:F

.field minPressure:F

.field minRain:F

.field minTemp:F

.field previous:Ljava/lang/String;

.field sp:Landroid/content/SharedPreferences;

.field theme:I

.field weatherList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcz/martykan/forecastie/models/Weather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3d76bd8971946535L    # 1.2926408586495998E-12

    const-string v2, "cz/martykan/forecastie/activities/GraphActivity"

    const/16 v3, 0x90

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x47c35000    # 100000.0f

    const/4 v2, 0x0

    invoke-static {}, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    .line 40
    iput v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minTemp:F

    .line 41
    iput v2, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxTemp:F

    .line 43
    iput v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minRain:F

    .line 44
    iput v2, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxRain:F

    .line 46
    iput v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minPressure:F

    .line 47
    iput v2, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxPressure:F

    .line 246
    const-string v1, ""

    iput-object v1, p0, Lcz/martykan/forecastie/activities/GraphActivity;->previous:Ljava/lang/String;

    aput-boolean v4, v0, v4

    return-void
.end method

.method private getTheme(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 265
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/16 v3, 0x85

    aput-boolean v1, v2, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 273
    const v0, 0x7f0a0037

    const/16 v3, 0x8f

    aput-boolean v1, v2, v3

    :goto_1
    return v0

    .line 265
    :sswitch_0
    const-string v3, "dark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x86

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x87

    aput-boolean v1, v2, v3

    goto :goto_0

    :sswitch_1
    const-string v3, "classic"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x88

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x89

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "classicdark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x8a

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/16 v3, 0x8b

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 267
    :pswitch_0
    const v0, 0x7f0a0039

    const/16 v3, 0x8c

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 269
    :pswitch_1
    const v0, 0x7f0a0038

    const/16 v3, 0x8d

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 271
    :pswitch_2
    const v0, 0x7f0a0096

    const/16 v3, 0x8e

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        -0x84270f8 -> :sswitch_2
        0x2eef76 -> :sswitch_0
        0x32e13892 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private pressureGraph()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 161
    const v2, 0x7f0e006d

    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/activities/GraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/db/chart/view/LineChartView;

    const/16 v3, 0x4b

    aput-boolean v9, v5, v3

    .line 164
    new-instance v6, Lcom/db/chart/model/LineSet;

    invoke-direct {v6}, Lcom/db/chart/model/LineSet;-><init>()V

    const/16 v3, 0x4c

    aput-boolean v9, v5, v3

    .line 165
    const/16 v3, 0x4d

    aput-boolean v9, v5, v3

    move v0, v4

    .local v0, "i":I
    .local v1, "pressure":F
    :goto_0
    iget-object v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/16 v3, 0x4e

    aput-boolean v9, v5, v3

    .line 166
    iget-object v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v3}, Lcz/martykan/forecastie/models/Weather;->getPressure()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v7, p0, Lcz/martykan/forecastie/activities/GraphActivity;->sp:Landroid/content/SharedPreferences;

    invoke-static {v3, v7}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertPressure(FLandroid/content/SharedPreferences;)F

    move-result v1

    .line 168
    iget v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minPressure:F

    .end local v0    # "i":I
    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    const/16 v3, 0x4f

    aput-boolean v9, v5, v3

    .line 172
    :goto_1
    iget v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxPressure:F

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_1

    const/16 v3, 0x51

    aput-boolean v9, v5, v3

    .line 176
    :goto_2
    iget-object v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {p0, v3, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->getDateLabel(Lcz/martykan/forecastie/models/Weather;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v1}, Lcom/db/chart/model/LineSet;->addPoint(Ljava/lang/String;F)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v3, 0x53

    aput-boolean v9, v5, v3

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_0
    iput v1, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minPressure:F

    const/16 v3, 0x50

    aput-boolean v9, v5, v3

    goto :goto_1

    .line 173
    :cond_1
    iput v1, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxPressure:F

    const/16 v3, 0x52

    aput-boolean v9, v5, v3

    goto :goto_2

    .line 178
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {v6, v9}, Lcom/db/chart/model/LineSet;->setSmooth(Z)Lcom/db/chart/model/LineSet;

    const/16 v3, 0x54

    aput-boolean v9, v5, v3

    .line 179
    const-string v3, "#4CAF50"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/db/chart/model/LineSet;->setColor(I)Lcom/db/chart/model/LineSet;

    const/16 v3, 0x55

    aput-boolean v9, v5, v3

    .line 180
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v6, v3}, Lcom/db/chart/model/LineSet;->setThickness(F)Lcom/db/chart/model/LineSet;

    const/16 v3, 0x56

    aput-boolean v9, v5, v3

    .line 182
    invoke-virtual {v2, v6}, Lcom/db/chart/view/LineChartView;->addData(Lcom/db/chart/model/ChartSet;)V

    const/16 v3, 0x57

    aput-boolean v9, v5, v3

    .line 185
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/16 v6, 0x58

    aput-boolean v9, v5, v6

    .line 186
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v6, 0x59

    aput-boolean v9, v5, v6

    .line 187
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v6, 0x5a

    aput-boolean v9, v5, v6

    .line 188
    const-string v6, "#333333"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v6, 0x5b

    aput-boolean v9, v5, v6

    .line 189
    new-instance v6, Landroid/graphics/DashPathEffect;

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 v6, 0x5c

    aput-boolean v9, v5, v6

    .line 190
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v6, 0x5d

    aput-boolean v9, v5, v6

    .line 191
    sget-object v6, Lcom/db/chart/view/ChartView$GridType;->HORIZONTAL:Lcom/db/chart/view/ChartView$GridType;

    invoke-virtual {v2, v6, v3}, Lcom/db/chart/view/LineChartView;->setGrid(Lcom/db/chart/view/ChartView$GridType;Landroid/graphics/Paint;)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x5e

    aput-boolean v9, v5, v3

    .line 192
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/db/chart/Tools;->fromDpToPx(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/db/chart/view/LineChartView;->setBorderSpacing(F)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x5f

    aput-boolean v9, v5, v3

    .line 193
    iget v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minPressure:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x1

    iget v6, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxPressure:F

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/db/chart/view/LineChartView;->setAxisBorderValues(II)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x60

    aput-boolean v9, v5, v3

    .line 194
    invoke-virtual {v2, v10}, Lcom/db/chart/view/LineChartView;->setStep(I)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x61

    aput-boolean v9, v5, v3

    .line 195
    invoke-virtual {v2, v4}, Lcom/db/chart/view/LineChartView;->setXAxis(Z)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x62

    aput-boolean v9, v5, v3

    .line 196
    invoke-virtual {v2, v4}, Lcom/db/chart/view/LineChartView;->setYAxis(Z)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x63

    aput-boolean v9, v5, v3

    .line 198
    invoke-virtual {v2}, Lcom/db/chart/view/LineChartView;->show()V

    .line 199
    const/16 v2, 0x64

    aput-boolean v9, v5, v2

    return-void

    .line 189
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method private rainGraph()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 120
    const v2, 0x7f0e006c

    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/activities/GraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/db/chart/view/LineChartView;

    const/16 v3, 0x31

    aput-boolean v9, v5, v3

    .line 123
    new-instance v6, Lcom/db/chart/model/LineSet;

    invoke-direct {v6}, Lcom/db/chart/model/LineSet;-><init>()V

    const/16 v3, 0x32

    aput-boolean v9, v5, v3

    .line 124
    const/16 v3, 0x33

    aput-boolean v9, v5, v3

    move v0, v4

    .local v0, "i":I
    .local v1, "rain":F
    :goto_0
    iget-object v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/16 v3, 0x34

    aput-boolean v9, v5, v3

    .line 125
    iget-object v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v3}, Lcz/martykan/forecastie/models/Weather;->getRain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 127
    iget v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minRain:F

    .end local v0    # "i":I
    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    const/16 v3, 0x35

    aput-boolean v9, v5, v3

    .line 131
    :goto_1
    iget v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxRain:F

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_1

    const/16 v3, 0x37

    aput-boolean v9, v5, v3

    .line 135
    :goto_2
    iget-object v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {p0, v3, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->getDateLabel(Lcz/martykan/forecastie/models/Weather;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v1}, Lcom/db/chart/model/LineSet;->addPoint(Ljava/lang/String;F)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v3, 0x39

    aput-boolean v9, v5, v3

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    :cond_0
    iput v1, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minRain:F

    const/16 v3, 0x36

    aput-boolean v9, v5, v3

    goto :goto_1

    .line 132
    :cond_1
    iput v1, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxRain:F

    const/16 v3, 0x38

    aput-boolean v9, v5, v3

    goto :goto_2

    .line 137
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {v6, v4}, Lcom/db/chart/model/LineSet;->setSmooth(Z)Lcom/db/chart/model/LineSet;

    const/16 v3, 0x3a

    aput-boolean v9, v5, v3

    .line 138
    const-string v3, "#2196F3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/db/chart/model/LineSet;->setColor(I)Lcom/db/chart/model/LineSet;

    const/16 v3, 0x3b

    aput-boolean v9, v5, v3

    .line 139
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v6, v3}, Lcom/db/chart/model/LineSet;->setThickness(F)Lcom/db/chart/model/LineSet;

    const/16 v3, 0x3c

    aput-boolean v9, v5, v3

    .line 141
    invoke-virtual {v2, v6}, Lcom/db/chart/view/LineChartView;->addData(Lcom/db/chart/model/ChartSet;)V

    const/16 v3, 0x3d

    aput-boolean v9, v5, v3

    .line 144
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/16 v6, 0x3e

    aput-boolean v9, v5, v6

    .line 145
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v6, 0x3f

    aput-boolean v9, v5, v6

    .line 146
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v6, 0x40

    aput-boolean v9, v5, v6

    .line 147
    const-string v6, "#333333"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v6, 0x41

    aput-boolean v9, v5, v6

    .line 148
    new-instance v6, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 v6, 0x42

    aput-boolean v9, v5, v6

    .line 149
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v6, 0x43

    aput-boolean v9, v5, v6

    .line 150
    sget-object v6, Lcom/db/chart/view/ChartView$GridType;->HORIZONTAL:Lcom/db/chart/view/ChartView$GridType;

    invoke-virtual {v2, v6, v3}, Lcom/db/chart/view/LineChartView;->setGrid(Lcom/db/chart/view/ChartView$GridType;Landroid/graphics/Paint;)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x44

    aput-boolean v9, v5, v3

    .line 151
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/db/chart/Tools;->fromDpToPx(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/db/chart/view/LineChartView;->setBorderSpacing(F)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x45

    aput-boolean v9, v5, v3

    .line 152
    iget v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxRain:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/db/chart/view/LineChartView;->setAxisBorderValues(II)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x46

    aput-boolean v9, v5, v3

    .line 153
    invoke-virtual {v2, v9}, Lcom/db/chart/view/LineChartView;->setStep(I)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x47

    aput-boolean v9, v5, v3

    .line 154
    invoke-virtual {v2, v4}, Lcom/db/chart/view/LineChartView;->setXAxis(Z)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x48

    aput-boolean v9, v5, v3

    .line 155
    invoke-virtual {v2, v4}, Lcom/db/chart/view/LineChartView;->setYAxis(Z)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x49

    aput-boolean v9, v5, v3

    .line 157
    invoke-virtual {v2}, Lcom/db/chart/view/LineChartView;->show()V

    .line 158
    const/16 v2, 0x4a

    aput-boolean v9, v5, v2

    return-void

    .line 148
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method private temperatureGraph()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 79
    const v2, 0x7f0e006b

    invoke-virtual {p0, v2}, Lcz/martykan/forecastie/activities/GraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/db/chart/view/LineChartView;

    const/16 v3, 0x17

    aput-boolean v9, v5, v3

    .line 82
    new-instance v6, Lcom/db/chart/model/LineSet;

    invoke-direct {v6}, Lcom/db/chart/model/LineSet;-><init>()V

    const/16 v3, 0x18

    aput-boolean v9, v5, v3

    .line 83
    const/16 v3, 0x19

    aput-boolean v9, v5, v3

    move v0, v4

    .local v0, "i":I
    .local v1, "temperature":F
    :goto_0
    iget-object v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/16 v3, 0x1a

    aput-boolean v9, v5, v3

    .line 84
    iget-object v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {v3}, Lcz/martykan/forecastie/models/Weather;->getTemperature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v7, p0, Lcz/martykan/forecastie/activities/GraphActivity;->sp:Landroid/content/SharedPreferences;

    invoke-static {v3, v7}, Lcz/martykan/forecastie/utils/UnitConvertor;->convertTemperature(FLandroid/content/SharedPreferences;)F

    move-result v1

    .line 86
    iget v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minTemp:F

    .end local v0    # "i":I
    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    const/16 v3, 0x1b

    aput-boolean v9, v5, v3

    .line 90
    :goto_1
    iget v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxTemp:F

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_1

    const/16 v3, 0x1d

    aput-boolean v9, v5, v3

    .line 94
    :goto_2
    iget-object v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/martykan/forecastie/models/Weather;

    invoke-virtual {p0, v3, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->getDateLabel(Lcz/martykan/forecastie/models/Weather;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v1}, Lcom/db/chart/model/LineSet;->addPoint(Ljava/lang/String;F)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v3, 0x1f

    aput-boolean v9, v5, v3

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_0
    iput v1, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minTemp:F

    const/16 v3, 0x1c

    aput-boolean v9, v5, v3

    goto :goto_1

    .line 91
    :cond_1
    iput v1, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxTemp:F

    const/16 v3, 0x1e

    aput-boolean v9, v5, v3

    goto :goto_2

    .line 96
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {v6, v4}, Lcom/db/chart/model/LineSet;->setSmooth(Z)Lcom/db/chart/model/LineSet;

    const/16 v3, 0x20

    aput-boolean v9, v5, v3

    .line 97
    const-string v3, "#FF5722"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/db/chart/model/LineSet;->setColor(I)Lcom/db/chart/model/LineSet;

    const/16 v3, 0x21

    aput-boolean v9, v5, v3

    .line 98
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v6, v3}, Lcom/db/chart/model/LineSet;->setThickness(F)Lcom/db/chart/model/LineSet;

    const/16 v3, 0x22

    aput-boolean v9, v5, v3

    .line 100
    invoke-virtual {v2, v6}, Lcom/db/chart/view/LineChartView;->addData(Lcom/db/chart/model/ChartSet;)V

    const/16 v3, 0x23

    aput-boolean v9, v5, v3

    .line 103
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/16 v6, 0x24

    aput-boolean v9, v5, v6

    .line 104
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v6, 0x25

    aput-boolean v9, v5, v6

    .line 105
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v6, 0x26

    aput-boolean v9, v5, v6

    .line 106
    const-string v6, "#333333"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v6, 0x27

    aput-boolean v9, v5, v6

    .line 107
    new-instance v6, Landroid/graphics/DashPathEffect;

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 v6, 0x28

    aput-boolean v9, v5, v6

    .line 108
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v6, 0x29

    aput-boolean v9, v5, v6

    .line 109
    sget-object v6, Lcom/db/chart/view/ChartView$GridType;->HORIZONTAL:Lcom/db/chart/view/ChartView$GridType;

    invoke-virtual {v2, v6, v3}, Lcom/db/chart/view/LineChartView;->setGrid(Lcom/db/chart/view/ChartView$GridType;Landroid/graphics/Paint;)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x2a

    aput-boolean v9, v5, v3

    .line 110
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/db/chart/Tools;->fromDpToPx(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/db/chart/view/LineChartView;->setBorderSpacing(F)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x2b

    aput-boolean v9, v5, v3

    .line 111
    iget v3, p0, Lcz/martykan/forecastie/activities/GraphActivity;->minTemp:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v6, p0, Lcz/martykan/forecastie/activities/GraphActivity;->maxTemp:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/db/chart/view/LineChartView;->setAxisBorderValues(II)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x2c

    aput-boolean v9, v5, v3

    .line 112
    invoke-virtual {v2, v10}, Lcom/db/chart/view/LineChartView;->setStep(I)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x2d

    aput-boolean v9, v5, v3

    .line 113
    invoke-virtual {v2, v4}, Lcom/db/chart/view/LineChartView;->setXAxis(Z)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x2e

    aput-boolean v9, v5, v3

    .line 114
    invoke-virtual {v2, v4}, Lcom/db/chart/view/LineChartView;->setYAxis(Z)Lcom/db/chart/view/ChartView;

    const/16 v3, 0x2f

    aput-boolean v9, v5, v3

    .line 116
    invoke-virtual {v2}, Lcom/db/chart/view/LineChartView;->show()V

    .line 117
    const/16 v2, 0x30

    aput-boolean v9, v5, v2

    return-void

    .line 107
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method


# virtual methods
.method public getDateLabel(Lcz/martykan/forecastie/models/Weather;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 249
    add-int/lit8 v0, p2, 0x4

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    const/16 v0, 0x7e

    aput-boolean v3, v1, v0

    .line 250
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "E"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7f

    aput-boolean v3, v1, v2

    .line 251
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v2, 0x80

    aput-boolean v3, v1, v2

    .line 252
    invoke-virtual {p1}, Lcz/martykan/forecastie/models/Weather;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81

    aput-boolean v3, v1, v2

    .line 253
    iget-object v2, p0, Lcz/martykan/forecastie/activities/GraphActivity;->previous:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    iput-object v0, p0, Lcz/martykan/forecastie/activities/GraphActivity;->previous:Ljava/lang/String;

    .line 255
    const/16 v2, 0x82

    aput-boolean v3, v1, v2

    .line 260
    :goto_0
    return-object v0

    .line 257
    :cond_0
    const-string v0, ""

    const/16 v2, 0x83

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 260
    :cond_1
    const-string v0, ""

    const/16 v2, 0x84

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 51
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v3, v4, v1

    .line 52
    const-string v1, "theme"

    const-string v5, "fresh"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->getTheme(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/martykan/forecastie/activities/GraphActivity;->theme:I

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->setTheme(I)V

    .line 53
    iget v0, p0, Lcz/martykan/forecastie/activities/GraphActivity;->theme:I

    const v1, 0x7f0a0039

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aput-boolean v3, v4, v0

    :goto_0
    const/4 v0, 0x5

    aput-boolean v3, v4, v0

    move v1, v3

    :goto_1
    const/4 v0, 0x7

    aput-boolean v3, v4, v0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x8

    aput-boolean v3, v4, v0

    .line 57
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->setContentView(I)V

    const/16 v0, 0x9

    aput-boolean v3, v4, v0

    .line 59
    const v0, 0x7f0e006a

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const/16 v5, 0xa

    aput-boolean v3, v4, v5

    .line 60
    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v5, 0xb

    aput-boolean v3, v4, v5

    .line 61
    invoke-virtual {p0}, Lcz/martykan/forecastie/activities/GraphActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    if-nez v1, :cond_2

    const/16 v0, 0xc

    aput-boolean v3, v4, v0

    .line 66
    :goto_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcz/martykan/forecastie/activities/GraphActivity;->sp:Landroid/content/SharedPreferences;

    const/16 v0, 0xf

    aput-boolean v3, v4, v0

    .line 67
    iget-object v0, p0, Lcz/martykan/forecastie/activities/GraphActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "lastLongterm"

    const-string v5, ""

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    aput-boolean v3, v4, v1

    .line 69
    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->parseLongTermJson(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;

    move-result-object v0

    sget-object v1, Lcz/martykan/forecastie/tasks/ParseResult;->OK:Lcz/martykan/forecastie/tasks/ParseResult;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x11

    aput-boolean v3, v4, v0

    .line 70
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/GraphActivity;->temperatureGraph()V

    const/16 v0, 0x12

    aput-boolean v3, v4, v0

    .line 71
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/GraphActivity;->rainGraph()V

    const/16 v0, 0x13

    aput-boolean v3, v4, v0

    .line 72
    invoke-direct {p0}, Lcz/martykan/forecastie/activities/GraphActivity;->pressureGraph()V

    const/16 v0, 0x14

    aput-boolean v3, v4, v0

    .line 76
    :goto_3
    const/16 v0, 0x16

    aput-boolean v3, v4, v0

    return-void

    .line 53
    :cond_0
    iget v0, p0, Lcz/martykan/forecastie/activities/GraphActivity;->theme:I

    const v1, 0x7f0a0096

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    aput-boolean v3, v4, v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x6

    aput-boolean v3, v4, v0

    move v1, v2

    goto/16 :goto_1

    .line 62
    :cond_2
    const/16 v1, 0xd

    aput-boolean v3, v4, v1

    .line 63
    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    const/16 v0, 0xe

    aput-boolean v3, v4, v0

    goto :goto_2

    .line 74
    :cond_3
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcz/martykan/forecastie/activities/GraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07002b

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    const/16 v0, 0x15

    aput-boolean v3, v4, v0

    goto :goto_3
.end method

.method public parseLongTermJson(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/GraphActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 204
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x65

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 206
    const-string v4, "cod"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x66

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 207
    const-string v5, "404"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x67

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 211
    const-string v4, "list"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/16 v4, 0x69

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 212
    const/4 v0, 0x0

    const/16 v4, 0x6a

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .local v0, "i":I
    .local v1, "snowObj":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    const/16 v4, 0x6b

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 213
    new-instance v4, Lcz/martykan/forecastie/models/Weather;

    invoke-direct {v4}, Lcz/martykan/forecastie/models/Weather;-><init>()V

    const/16 v5, 0x6c

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 215
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const/16 v6, 0x6d

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 216
    const-string v6, "main"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const/16 v7, 0x6e

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 218
    const-string v7, "wind"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const/16 v8, 0x6f

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 219
    const-string v8, "speed"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/martykan/forecastie/models/Weather;->setWind(Ljava/lang/String;)V

    const/16 v7, 0x70

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 221
    const-string v7, "pressure"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/martykan/forecastie/models/Weather;->setPressure(Ljava/lang/String;)V

    const/16 v7, 0x71

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 222
    const-string v7, "humidity"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/martykan/forecastie/models/Weather;->setHumidity(Ljava/lang/String;)V

    const/16 v7, 0x72

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 224
    const-string v7, "rain"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const/16 v8, 0x73

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 225
    const-string v8, "snow"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 226
    if-eqz v7, :cond_1

    .end local v0    # "i":I
    const/16 v8, 0x74

    const/4 v9, 0x1

    aput-boolean v9, v3, v8

    .line 227
    invoke-static {v7}, Lcz/martykan/forecastie/activities/MainActivity;->getRainString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/martykan/forecastie/models/Weather;->setRain(Ljava/lang/String;)V

    const/16 v7, 0x75

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 232
    :goto_1
    const-string v7, "dt"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/martykan/forecastie/models/Weather;->setDate(Ljava/lang/String;)V

    const/16 v5, 0x77

    const/4 v7, 0x1

    aput-boolean v7, v3, v5

    .line 233
    const-string v5, "temp"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/martykan/forecastie/models/Weather;->setTemperature(Ljava/lang/String;)V

    const/16 v5, 0x78

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 235
    iget-object v5, p0, Lcz/martykan/forecastie/activities/GraphActivity;->weatherList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v4, 0x79

    const/4 v5, 0x1

    aput-boolean v5, v3, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 237
    .end local v0    # "i":I
    :catch_0
    move-exception v2

    const/16 v4, 0x7a

    aput-boolean v10, v3, v4

    .line 238
    const-string v4, "JSONException Data"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x7b

    aput-boolean v10, v3, v4

    .line 239
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 240
    sget-object v2, Lcz/martykan/forecastie/tasks/ParseResult;->JSON_EXCEPTION:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v4, 0x7c

    aput-boolean v10, v3, v4

    .line 243
    :goto_2
    return-object v2

    .line 208
    .end local v1    # "snowObj":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    sget-object v2, Lcz/martykan/forecastie/tasks/ParseResult;->CITY_NOT_FOUND:Lcz/martykan/forecastie/tasks/ParseResult;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v4, 0x68

    aput-boolean v10, v3, v4

    goto :goto_2

    .line 229
    .restart local v1    # "snowObj":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcz/martykan/forecastie/activities/MainActivity;->getRainString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/martykan/forecastie/models/Weather;->setRain(Ljava/lang/String;)V

    const/16 v7, 0x76

    const/4 v8, 0x1

    aput-boolean v8, v3, v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 243
    .restart local v0    # "i":I
    :cond_2
    sget-object v2, Lcz/martykan/forecastie/tasks/ParseResult;->OK:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v4, 0x7d

    aput-boolean v10, v3, v4

    goto :goto_2
.end method
