.class public abstract Lcom/db/chart/view/AxisController;
.super Ljava/lang/Object;
.source "AxisController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/db/chart/view/AxisController$LabelPosition;
    }
.end annotation


# static fields
.field private static final DEFAULT_STEP:I = 0x1


# instance fields
.field axisPosition:F

.field borderSpacing:F

.field final chartView:Lcom/db/chart/view/ChartView;

.field distLabelToAxis:I

.field handleValues:Z

.field hasAxis:Z

.field labelFormat:Ljava/text/DecimalFormat;

.field private labelHeight:I

.field labels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field labelsPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

.field labelsStaticPos:F

.field labelsValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mandatoryBorderSpacing:F

.field maxLabelValue:I

.field minLabelValue:I

.field nLabels:I

.field screenStep:F

.field step:I

.field topSpacing:F


# direct methods
.method constructor <init>(Lcom/db/chart/view/ChartView;)V
    .locals 0
    .param p1, "chartview"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/db/chart/view/AxisController;->chartView:Lcom/db/chart/view/ChartView;

    .line 120
    invoke-virtual {p0}, Lcom/db/chart/view/AxisController;->reset()V

    .line 121
    return-void
.end method

.method constructor <init>(Lcom/db/chart/view/ChartView;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "chartView"    # Lcom/db/chart/view/ChartView;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/db/chart/view/AxisController;-><init>(Lcom/db/chart/view/ChartView;)V

    .line 126
    return-void
.end method

.method private calcBorderValues()[F
    .locals 7

    .prologue
    .line 286
    const/high16 v1, -0x31000000

    .line 287
    .local v1, "max":F
    const/high16 v2, 0x4f000000

    .line 289
    .local v2, "min":F
    iget-object v4, p0, Lcom/db/chart/view/AxisController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v4, v4, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    .line 290
    .local v3, "set":Lcom/db/chart/model/ChartSet;
    invoke-virtual {v3}, Lcom/db/chart/model/ChartSet;->getEntries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartEntry;

    .line 291
    .local v0, "e":Lcom/db/chart/model/ChartEntry;
    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v6

    cmpl-float v6, v6, v1

    if-ltz v6, :cond_2

    .line 292
    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v1

    .line 293
    :cond_2
    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getValue()F

    move-result v2

    goto :goto_0

    .line 298
    .end local v0    # "e":Lcom/db/chart/model/ChartEntry;
    .end local v3    # "set":Lcom/db/chart/model/ChartSet;
    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    return-object v4
.end method

.method private calcLabels()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 310
    invoke-direct {p0}, Lcom/db/chart/view/AxisController;->calcBorderValues()[F

    move-result-object v0

    .line 311
    .local v0, "borderValues":[F
    aget v2, v0, v8

    .line 312
    .local v2, "minValue":F
    const/4 v5, 0x1

    aget v1, v0, v5

    .line 315
    .local v1, "maxValue":F
    iget v5, p0, Lcom/db/chart/view/AxisController;->minLabelValue:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    if-nez v5, :cond_3

    .line 317
    cmpg-float v5, v1, v9

    if-gez v5, :cond_0

    .line 318
    iput v8, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    .line 322
    :goto_0
    cmpl-float v5, v2, v9

    if-lez v5, :cond_1

    .line 323
    iput v8, p0, Lcom/db/chart/view/AxisController;->minLabelValue:I

    .line 327
    :goto_1
    iget v5, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    iget v6, p0, Lcom/db/chart/view/AxisController;->minLabelValue:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/db/chart/view/AxisController;->step:I

    rem-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 328
    iget v5, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    goto :goto_1

    .line 320
    :cond_0
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iput v5, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    goto :goto_0

    .line 325
    :cond_1
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    iput v5, p0, Lcom/db/chart/view/AxisController;->minLabelValue:I

    goto :goto_1

    .line 331
    :cond_2
    iget v5, p0, Lcom/db/chart/view/AxisController;->minLabelValue:I

    iget v6, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    if-ne v5, v6, :cond_3

    .line 332
    iget v5, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    iget v6, p0, Lcom/db/chart/view/AxisController;->step:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    .line 335
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v3, p0, Lcom/db/chart/view/AxisController;->minLabelValue:I

    .line 337
    .local v3, "pos":I
    :goto_2
    iget v5, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    if-gt v3, v5, :cond_4

    .line 338
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget v5, p0, Lcom/db/chart/view/AxisController;->step:I

    add-int/2addr v3, v5

    goto :goto_2

    .line 343
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    if-ge v5, v6, :cond_5

    .line 344
    iget v5, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_5
    return-object v4
.end method

.method private getLabelsFromData()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v3, p0, Lcom/db/chart/view/AxisController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v3, v3, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v3}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v2

    .line 271
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 273
    iget-object v3, p0, Lcom/db/chart/view/AxisController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v3, v3, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v3, v0}, Lcom/db/chart/model/ChartSet;->getLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-object v1
.end method

.method private getLabelsFromValues()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v3, p0, Lcom/db/chart/view/AxisController;->labelsValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 257
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 259
    iget-object v3, p0, Lcom/db/chart/view/AxisController;->labelFormat:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/db/chart/view/AxisController;->labelsValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract defineAxisPosition()V
.end method

.method defineLabels()V
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/db/chart/view/AxisController;->handleValues:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/db/chart/view/AxisController;->calcLabels()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/db/chart/view/AxisController;->labelsValues:Ljava/util/ArrayList;

    .line 206
    invoke-direct {p0}, Lcom/db/chart/view/AxisController;->getLabelsFromValues()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/db/chart/view/AxisController;->labels:Ljava/util/ArrayList;

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/db/chart/view/AxisController;->labels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/db/chart/view/AxisController;->nLabels:I

    .line 211
    return-void

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/db/chart/view/AxisController;->getLabelsFromData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/db/chart/view/AxisController;->labels:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method defineLabelsPosition(FF)V
    .locals 5
    .param p1, "innerStart"    # F
    .param p2, "innerEnd"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/db/chart/view/AxisController;->nLabels:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/db/chart/view/AxisController;->labelsPos:Ljava/util/ArrayList;

    .line 234
    sub-float v2, p2, p1

    iget v3, p0, Lcom/db/chart/view/AxisController;->topSpacing:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/db/chart/view/AxisController;->borderSpacing:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/db/chart/view/AxisController;->mandatoryBorderSpacing:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/db/chart/view/AxisController;->nLabels:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/db/chart/view/AxisController;->screenStep:F

    .line 241
    iget v2, p0, Lcom/db/chart/view/AxisController;->borderSpacing:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/db/chart/view/AxisController;->mandatoryBorderSpacing:F

    add-float v0, v2, v3

    .line 242
    .local v0, "currPos":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/db/chart/view/AxisController;->nLabels:I

    if-ge v1, v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/db/chart/view/AxisController;->labelsPos:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget v2, p0, Lcom/db/chart/view/AxisController;->screenStep:F

    add-float/2addr v0, v2

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method defineMandatoryBorderSpacing(FF)V
    .locals 3
    .param p1, "innerStart"    # F
    .param p2, "innerEnd"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 219
    iget v0, p0, Lcom/db/chart/view/AxisController;->mandatoryBorderSpacing:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 220
    sub-float v0, p2, p1

    iget v1, p0, Lcom/db/chart/view/AxisController;->borderSpacing:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/db/chart/view/AxisController;->nLabels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/db/chart/view/AxisController;->mandatoryBorderSpacing:F

    .line 221
    :cond_0
    return-void
.end method

.method protected abstract defineStaticLabelsPosition()V
.end method

.method dispose()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/db/chart/view/AxisController;->defineAxisPosition()V

    .line 146
    invoke-virtual {p0}, Lcom/db/chart/view/AxisController;->defineStaticLabelsPosition()V

    .line 147
    return-void
.end method

.method protected abstract draw(Landroid/graphics/Canvas;)V
.end method

.method getLabelsMaxHeight()I
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/db/chart/view/AxisController;->labelHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/db/chart/view/AxisController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v0, v0, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/db/chart/view/AxisController;->chartView:Lcom/db/chart/view/ChartView;

    iget-object v1, v1, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v1, v1, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    .line 361
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/db/chart/view/AxisController;->labelHeight:I

    .line 362
    :cond_0
    iget v0, p0, Lcom/db/chart/view/AxisController;->labelHeight:I

    return v0
.end method

.method init()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/db/chart/view/AxisController;->defineLabels()V

    .line 136
    return-void
.end method

.method reset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/db/chart/view/AxisController;->chartView:Lcom/db/chart/view/ChartView;

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/db/williamchart/R$dimen;->axis_dist_from_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/db/chart/view/AxisController;->distLabelToAxis:I

    .line 181
    iput v2, p0, Lcom/db/chart/view/AxisController;->mandatoryBorderSpacing:F

    .line 182
    iput v2, p0, Lcom/db/chart/view/AxisController;->borderSpacing:F

    .line 183
    iput v2, p0, Lcom/db/chart/view/AxisController;->topSpacing:F

    .line 184
    iput v4, p0, Lcom/db/chart/view/AxisController;->step:I

    .line 185
    iput v2, p0, Lcom/db/chart/view/AxisController;->labelsStaticPos:F

    .line 186
    sget-object v0, Lcom/db/chart/view/AxisController$LabelPosition;->OUTSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

    iput-object v0, p0, Lcom/db/chart/view/AxisController;->labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

    .line 187
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/AxisController;->labelFormat:Ljava/text/DecimalFormat;

    .line 188
    iput v2, p0, Lcom/db/chart/view/AxisController;->axisPosition:F

    .line 189
    iput v3, p0, Lcom/db/chart/view/AxisController;->minLabelValue:I

    .line 190
    iput v3, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/db/chart/view/AxisController;->labelHeight:I

    .line 192
    iput-boolean v4, p0, Lcom/db/chart/view/AxisController;->hasAxis:Z

    .line 193
    iput-boolean v3, p0, Lcom/db/chart/view/AxisController;->handleValues:Z

    .line 194
    return-void
.end method

.method public setAxisLabelsSpacing(F)V
    .locals 1
    .param p1, "spacing"    # F

    .prologue
    .line 373
    float-to-int v0, p1

    iput v0, p0, Lcom/db/chart/view/AxisController;->distLabelToAxis:I

    .line 374
    return-void
.end method

.method public setBorderValues(II)V
    .locals 1
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .prologue
    .line 407
    if-lez p1, :cond_0

    .line 408
    invoke-static {p1, p2}, Lcom/db/chart/Tools;->GCD(II)I

    move-result v0

    iput v0, p0, Lcom/db/chart/view/AxisController;->step:I

    .line 410
    :cond_0
    iput p2, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    .line 411
    iput p1, p0, Lcom/db/chart/view/AxisController;->minLabelValue:I

    .line 412
    return-void
.end method

.method public setBorderValues(III)V
    .locals 2
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "step"    # I

    .prologue
    .line 389
    sub-int v0, p2, p1

    rem-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step value must be a divisor of distance between minValue and maxValue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iput p3, p0, Lcom/db/chart/view/AxisController;->step:I

    .line 394
    iput p2, p0, Lcom/db/chart/view/AxisController;->maxLabelValue:I

    .line 395
    iput p1, p0, Lcom/db/chart/view/AxisController;->minLabelValue:I

    .line 396
    return-void
.end method
