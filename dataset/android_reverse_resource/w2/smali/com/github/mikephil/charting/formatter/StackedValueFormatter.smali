.class public Lcom/github/mikephil/charting/formatter/StackedValueFormatter;
.super Ljava/lang/Object;
.source "StackedValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/ValueFormatter;


# instance fields
.field private mAppendix:Ljava/lang/String;

.field private mDrawWholeStack:Z

.field private mFormat:Ljava/text/DecimalFormat;

.field private mFormattedStringCache:Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;

.field private mFormattedStringCacheWholeStack:Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 6
    .param p1, "drawWholeStack"    # Z
    .param p2, "appendix"    # Ljava/lang/String;
    .param p3, "decimals"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mDrawWholeStack:Z

    .line 41
    iput-object p2, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mAppendix:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 45
    if-nez v1, :cond_0

    .line 46
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_0
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    new-instance v2, Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;

    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###,###,###,##0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;-><init>(Ljava/text/Format;)V

    iput-object v2, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mFormattedStringCache:Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;

    .line 51
    new-instance v2, Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;

    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###,###,###,##0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;-><init>(Ljava/text/Format;)V

    iput-object v2, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mFormattedStringCacheWholeStack:Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;

    .line 52
    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # F
    .param p2, "entry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p3, "dataSetIndex"    # I
    .param p4, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mFormattedStringCache:Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;

    .line 58
    .local v1, "chosenCache":Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;
    move v2, p3

    .line 59
    .local v2, "chosenIndex":I
    move v3, p1

    .line 60
    .local v3, "chosenValue":F
    iget-boolean v5, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mDrawWholeStack:Z

    if-nez v5, :cond_0

    instance-of v5, p2, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz v5, :cond_0

    move-object v0, p2

    .line 62
    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 63
    .local v0, "barEntry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v4

    .line 65
    .local v4, "vals":[F
    if-eqz v4, :cond_0

    .line 68
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v5, v4, v5

    cmpl-float v5, v5, p1

    if-nez v5, :cond_1

    .line 69
    iget-object v1, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mFormattedStringCacheWholeStack:Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;

    .line 70
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v3

    .line 77
    .end local v0    # "barEntry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v4    # "vals":[F
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 78
    const-string v5, ""

    .line 82
    :goto_1
    return-object v5

    .line 72
    .restart local v0    # "barEntry":Lcom/github/mikephil/charting/data/BarEntry;
    .restart local v4    # "vals":[F
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    .end local v0    # "barEntry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v4    # "vals":[F
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/github/mikephil/charting/formatter/FormattedStringCache$Generic;->getFormattedValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mAppendix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
