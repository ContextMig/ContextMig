.class public Lcom/jjoe64/graphview/DefaultLabelFormatter;
.super Ljava/lang/Object;
.source "DefaultLabelFormatter.java"

# interfaces
.implements Lcom/jjoe64/graphview/LabelFormatter;


# instance fields
.field protected mNumberFormatter:[Ljava/text/NumberFormat;

.field protected mViewport:Lcom/jjoe64/graphview/Viewport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/text/NumberFormat;

    iput-object v0, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 2
    .param p1, "xFormat"    # Ljava/text/NumberFormat;
    .param p2, "yFormat"    # Ljava/text/NumberFormat;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/text/NumberFormat;

    iput-object v0, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    .line 64
    iget-object v0, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 66
    return-void
.end method


# virtual methods
.method public formatLabel(DZ)Ljava/lang/String;
    .locals 13
    .param p1, "value"    # D
    .param p3, "isValueX"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 86
    if-eqz p3, :cond_1

    move v2, v3

    .line 87
    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    aget-object v7, v7, v2

    if-nez v7, :cond_0

    .line 88
    iget-object v7, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v8

    aput-object v8, v7, v2

    .line 89
    if-eqz p3, :cond_2

    iget-object v7, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-virtual {v7, v6}, Lcom/jjoe64/graphview/Viewport;->getMaxX(Z)D

    move-result-wide v0

    .line 90
    .local v0, "highestvalue":D
    :goto_1
    if-eqz p3, :cond_3

    iget-object v7, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-virtual {v7, v6}, Lcom/jjoe64/graphview/Viewport;->getMinX(Z)D

    move-result-wide v4

    .line 91
    .local v4, "lowestvalue":D
    :goto_2
    sub-double v8, v0, v4

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpg-double v7, v8, v10

    if-gez v7, :cond_4

    .line 92
    iget-object v3, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    aget-object v3, v3, v2

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 103
    .end local v0    # "highestvalue":D
    .end local v4    # "lowestvalue":D
    :cond_0
    :goto_3
    iget-object v3, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v2    # "i":I
    :cond_1
    move v2, v6

    .line 86
    goto :goto_0

    .line 89
    .restart local v2    # "i":I
    :cond_2
    iget-object v7, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-virtual {v7, v6}, Lcom/jjoe64/graphview/Viewport;->getMaxY(Z)D

    move-result-wide v0

    goto :goto_1

    .line 90
    .restart local v0    # "highestvalue":D
    :cond_3
    iget-object v7, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    invoke-virtual {v7, v6}, Lcom/jjoe64/graphview/Viewport;->getMinY(Z)D

    move-result-wide v4

    goto :goto_2

    .line 93
    .restart local v4    # "lowestvalue":D
    :cond_4
    sub-double v8, v0, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_5

    .line 94
    iget-object v3, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    aget-object v3, v3, v2

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3

    .line 95
    :cond_5
    sub-double v8, v0, v4

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_6

    .line 96
    iget-object v3, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    aget-object v3, v3, v2

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3

    .line 97
    :cond_6
    sub-double v8, v0, v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_7

    .line 98
    iget-object v6, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    aget-object v6, v6, v2

    invoke-virtual {v6, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3

    .line 100
    :cond_7
    iget-object v3, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mNumberFormatter:[Ljava/text/NumberFormat;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_3
.end method

.method public setViewport(Lcom/jjoe64/graphview/Viewport;)V
    .locals 0
    .param p1, "viewport"    # Lcom/jjoe64/graphview/Viewport;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jjoe64/graphview/DefaultLabelFormatter;->mViewport:Lcom/jjoe64/graphview/Viewport;

    .line 74
    return-void
.end method
