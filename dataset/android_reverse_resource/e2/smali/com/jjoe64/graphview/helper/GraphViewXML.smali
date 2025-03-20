.class public Lcom/jjoe64/graphview/helper/GraphViewXML;
.super Lcom/jjoe64/graphview/GraphView;
.source "GraphViewXML.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct/range {p0 .. p2}, Lcom/jjoe64/graphview/GraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    sget-object v15, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 81
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v15, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_seriesData:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "dataStr":Ljava/lang/String;
    sget v15, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_seriesColor:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 83
    .local v3, "color":I
    sget v15, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_seriesType:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 84
    .local v13, "type":Ljava/lang/String;
    sget v15, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_seriesTitle:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "seriesTitle":Ljava/lang/String;
    sget v15, Lcom/jjoe64/graphview/R$styleable;->GraphViewXML_android_title:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "title":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 92
    :cond_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Attribute seriesData is required in the format: 0=5.0;1=5;2=4;3=9"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 94
    :cond_1
    const-string v15, ";"

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "d":[Ljava/lang/String;
    :try_start_0
    array-length v15, v4

    new-array v5, v15, [Lcom/jjoe64/graphview/series/DataPoint;

    .line 97
    .local v5, "data":[Lcom/jjoe64/graphview/series/DataPoint;
    const/4 v9, 0x0

    .line 98
    .local v9, "i":I
    array-length v0, v4

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v7, v4, v15

    .line 99
    .local v7, "dd":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, "xy":[Ljava/lang/String;
    new-instance v17, Lcom/jjoe64/graphview/series/DataPoint;

    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    const/16 v20, 0x1

    aget-object v20, v14, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-direct/range {v17 .. v21}, Lcom/jjoe64/graphview/series/DataPoint;-><init>(DD)V

    aput-object v17, v5, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    add-int/lit8 v9, v9, 0x1

    .line 98
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 103
    .end local v5    # "data":[Lcom/jjoe64/graphview/series/DataPoint;
    .end local v7    # "dd":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v14    # "xy":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 104
    .local v8, "e":Ljava/lang/Exception;
    const-string v15, "GraphViewXML"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Attribute seriesData is broken. Use this format: 0=5.0;1=5;2=4;3=9"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 111
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "data":[Lcom/jjoe64/graphview/series/DataPoint;
    .restart local v9    # "i":I
    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 112
    :cond_3
    const-string v13, "line"

    .line 114
    :cond_4
    const-string v15, "line"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 115
    new-instance v10, Lcom/jjoe64/graphview/series/LineGraphSeries;

    invoke-direct {v10, v5}, Lcom/jjoe64/graphview/series/LineGraphSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .line 123
    .local v10, "series":Lcom/jjoe64/graphview/series/BaseSeries;, "Lcom/jjoe64/graphview/series/BaseSeries<Lcom/jjoe64/graphview/series/DataPoint;>;"
    :goto_1
    if-eqz v3, :cond_5

    .line 124
    invoke-virtual {v10, v3}, Lcom/jjoe64/graphview/series/BaseSeries;->setColor(I)V

    .line 126
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/jjoe64/graphview/helper/GraphViewXML;->addSeries(Lcom/jjoe64/graphview/series/Series;)V

    .line 128
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 129
    invoke-virtual {v10, v11}, Lcom/jjoe64/graphview/series/BaseSeries;->setTitle(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/helper/GraphViewXML;->getLegendRenderer()Lcom/jjoe64/graphview/LegendRenderer;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/jjoe64/graphview/LegendRenderer;->setVisible(Z)V

    .line 133
    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 134
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jjoe64/graphview/helper/GraphViewXML;->setTitle(Ljava/lang/String;)V

    .line 136
    :cond_7
    return-void

    .line 116
    .end local v10    # "series":Lcom/jjoe64/graphview/series/BaseSeries;, "Lcom/jjoe64/graphview/series/BaseSeries<Lcom/jjoe64/graphview/series/DataPoint;>;"
    :cond_8
    const-string v15, "bar"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 117
    new-instance v10, Lcom/jjoe64/graphview/series/BarGraphSeries;

    invoke-direct {v10, v5}, Lcom/jjoe64/graphview/series/BarGraphSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .restart local v10    # "series":Lcom/jjoe64/graphview/series/BaseSeries;, "Lcom/jjoe64/graphview/series/BaseSeries<Lcom/jjoe64/graphview/series/DataPoint;>;"
    goto :goto_1

    .line 118
    .end local v10    # "series":Lcom/jjoe64/graphview/series/BaseSeries;, "Lcom/jjoe64/graphview/series/BaseSeries<Lcom/jjoe64/graphview/series/DataPoint;>;"
    :cond_9
    const-string v15, "points"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 119
    new-instance v10, Lcom/jjoe64/graphview/series/PointsGraphSeries;

    invoke-direct {v10, v5}, Lcom/jjoe64/graphview/series/PointsGraphSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    .restart local v10    # "series":Lcom/jjoe64/graphview/series/BaseSeries;, "Lcom/jjoe64/graphview/series/BaseSeries<Lcom/jjoe64/graphview/series/DataPoint;>;"
    goto :goto_1

    .line 121
    .end local v10    # "series":Lcom/jjoe64/graphview/series/BaseSeries;, "Lcom/jjoe64/graphview/series/BaseSeries<Lcom/jjoe64/graphview/series/DataPoint;>;"
    :cond_a
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unknown graph type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". Possible is line|bar|points"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
.end method
