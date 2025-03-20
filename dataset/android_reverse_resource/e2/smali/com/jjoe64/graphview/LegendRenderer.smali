.class public Lcom/jjoe64/graphview/LegendRenderer;
.super Ljava/lang/Object;
.source "LegendRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;,
        Lcom/jjoe64/graphview/LegendRenderer$Styles;
    }
.end annotation


# instance fields
.field private cachedLegendWidth:I

.field private final mGraphView:Lcom/jjoe64/graphview/GraphView;

.field private mIsVisible:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 3
    .param p1, "graphView"    # Lcom/jjoe64/graphview/GraphView;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    .line 113
    iput-boolean v2, p0, Lcom/jjoe64/graphview/LegendRenderer;->mIsVisible:Z

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    new-instance v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jjoe64/graphview/LegendRenderer$Styles;-><init>(Lcom/jjoe64/graphview/LegendRenderer;Lcom/jjoe64/graphview/LegendRenderer$1;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    .line 117
    iput v2, p0, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    .line 118
    invoke-virtual {p0}, Lcom/jjoe64/graphview/LegendRenderer;->resetStyles()V

    .line 119
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mIsVisible:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 231
    :cond_0
    return-void

    .line 163
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 167
    .local v16, "shapeSize":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v6, "allSeries":Ljava/util/List;, "Ljava/util/List<Lcom/jjoe64/graphview/series/Series;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/GraphView;->getSeries()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->mSecondScale:Lcom/jjoe64/graphview/SecondScale;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/GraphView;->getSecondScale()Lcom/jjoe64/graphview/SecondScale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/SecondScale;->getSeries()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v13, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->width:I

    .line 175
    .local v13, "legendWidth":I
    if-nez v13, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    .line 179
    if-nez v13, :cond_6

    .line 180
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v17, "textBounds":Landroid/graphics/Rect;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jjoe64/graphview/series/Series;

    .line 182
    .local v14, "s":Lcom/jjoe64/graphview/series/Series;
    invoke-interface {v14}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-interface {v14}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v14}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 184
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_0

    .line 187
    .end local v14    # "s":Lcom/jjoe64/graphview/series/Series;
    :cond_4
    if-nez v13, :cond_5

    const/4 v13, 0x1

    .line 190
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v18, v18, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v13, v13, v18

    .line 191
    move-object/from16 v0, p0

    iput v13, v0, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    .line 196
    .end local v17    # "textBounds":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v12, v18, v19

    .line 199
    .local v12, "legendHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->fixedPosition:Landroid/graphics/Point;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->fixedPosition:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v9, v0

    .line 202
    .local v9, "lLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->fixedPosition:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v11, v0

    .line 216
    .local v11, "lTop":F
    :goto_1
    int-to-float v0, v13

    move/from16 v18, v0

    add-float v10, v9, v18

    .line 217
    .local v10, "lRight":F
    add-float v18, v11, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v8, v18, v19

    .line 218
    .local v8, "lBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->backgroundColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    new-instance v18, Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-direct {v0, v9, v11, v10, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v19, 0x41000000    # 8.0f

    const/high16 v20, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 221
    const/4 v7, 0x0

    .line 222
    .local v7, "i":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jjoe64/graphview/series/Series;

    .line 223
    .local v15, "series":Lcom/jjoe64/graphview/series/Series;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-interface {v15}, Lcom/jjoe64/graphview/series/Series;->getColor()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    new-instance v19, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v11

    int-to-float v0, v7

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v22, v22, v9

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v11

    int-to-float v0, v7

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-direct/range {v19 .. v23}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    invoke-interface {v15}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textColor:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    invoke-interface {v15}, Lcom/jjoe64/graphview/series/Series;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v9

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v22, v0

    add-float v21, v21, v22

    int-to-float v0, v7

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 230
    goto/16 :goto_2

    .line 204
    .end local v7    # "i":I
    .end local v8    # "lBottom":F
    .end local v9    # "lLeft":F
    .end local v10    # "lRight":F
    .end local v11    # "lTop":F
    .end local v15    # "series":Lcom/jjoe64/graphview/series/Series;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/GraphView;->getGraphContentLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/jjoe64/graphview/GraphView;->getGraphContentWidth()I

    move-result v19

    add-int v18, v18, v19

    sub-int v18, v18, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v9, v0

    .line 205
    .restart local v9    # "lLeft":F
    sget-object v18, Lcom/jjoe64/graphview/LegendRenderer$1;->$SwitchMap$com$jjoe64$graphview$LegendRenderer$LegendAlign:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->align:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/jjoe64/graphview/GraphView;->getGraphContentHeight()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v11, v18, v19

    .restart local v11    # "lTop":F
    goto/16 :goto_1

    .line 207
    .end local v11    # "lTop":F
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/GraphView;->getGraphContentTop()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v11, v0

    .line 208
    .restart local v11    # "lTop":F
    goto/16 :goto_1

    .line 210
    .end local v11    # "lTop":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jjoe64/graphview/GraphView;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v12, v19

    sub-float v11, v18, v19

    .line 211
    .restart local v11    # "lTop":F
    goto/16 :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAlign()Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->align:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->backgroundColor:I

    return v0
.end method

.method public getMargin()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    return v0
.end method

.method public getSpacing()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v0, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->width:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mIsVisible:Z

    return v0
.end method

.method public resetStyles()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v8, 0x40a00000    # 5.0f

    const/16 v7, 0x64

    const/4 v9, 0x0

    .line 126
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    sget-object v5, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->MIDDLE:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    iput-object v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->align:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    .line 127
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v5, p0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GridLabelRenderer;->getTextSize()F

    move-result v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    .line 128
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v5, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v5, v5, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    div-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    .line 129
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v5, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v5, v5, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    .line 130
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput v9, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->width:I

    .line 131
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    const/16 v5, 0xb4

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->backgroundColor:I

    .line 132
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget-object v5, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iget v5, v5, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    div-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    .line 135
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 136
    .local v3, "typedValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010042

    invoke-virtual {v4, v5, v3, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 141
    :try_start_0
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mGraphView:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->data:I

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const v8, 0x1010036

    aput v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 144
    .local v1, "color1":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "array":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v4, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput v1, v4, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textColor:I

    .line 151
    iput v9, p0, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    .line 152
    return-void

    .line 145
    .end local v1    # "color1":I
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    const/high16 v1, -0x1000000

    .restart local v1    # "color1":I
    goto :goto_0
.end method

.method public setAlign(Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;)V
    .locals 1
    .param p1, "align"    # Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput-object p1, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->align:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    .line 368
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput p1, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->backgroundColor:I

    .line 338
    return-void
.end method

.method public setFixedPosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->fixedPosition:Landroid/graphics/Point;

    .line 393
    return-void
.end method

.method public setMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput p1, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->margin:I

    .line 354
    return-void
.end method

.method public setPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput p1, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->padding:I

    .line 301
    return-void
.end method

.method public setSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput p1, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->spacing:I

    .line 281
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput p1, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textColor:I

    .line 382
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 263
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput p1, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->textSize:F

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->cachedLegendWidth:I

    .line 265
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "mIsVisible"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/jjoe64/graphview/LegendRenderer;->mIsVisible:Z

    .line 247
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/jjoe64/graphview/LegendRenderer;->mStyles:Lcom/jjoe64/graphview/LegendRenderer$Styles;

    iput p1, v0, Lcom/jjoe64/graphview/LegendRenderer$Styles;->width:I

    .line 320
    return-void
.end method
