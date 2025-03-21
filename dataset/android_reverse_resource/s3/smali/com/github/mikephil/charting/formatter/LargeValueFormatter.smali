.class public Lcom/github/mikephil/charting/formatter/LargeValueFormatter;
.super Ljava/lang/Object;
.source "LargeValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/ValueFormatter;
.implements Lcom/github/mikephil/charting/formatter/AxisValueFormatter;


# static fields
.field private static final MAX_LENGTH:I = 0x5

.field private static SUFFIX:[Ljava/lang/String;


# instance fields
.field protected mFormattedStringCache:Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimDouble;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "k"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimDouble;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###E00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimDouble;-><init>(Ljava/text/Format;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mFormattedStringCache:Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimDouble;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "appendix"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private makePretty(D)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # D

    .prologue
    .line 86
    iget-object v4, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mFormattedStringCache:Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimDouble;

    invoke-virtual {v4, p1, p2}, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimDouble;->getFormattedValue(D)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "r":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    .line 89
    .local v1, "numericValue1":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    .line 90
    .local v2, "numericValue2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    .local v0, "combined":I
    const-string v4, "E[0-9][0-9]"

    sget-object v5, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    div-int/lit8 v6, v0, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_0

    const-string v4, "[0-9]+\\.[a-z]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 98
    :cond_1
    return-object v3
.end method


# virtual methods
.method public getDecimalDigits()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/AxisBase;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->makePretty(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F
    .param p2, "entry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p3, "dataSetIndex"    # I
    .param p4, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->makePretty(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAppendix(Ljava/lang/String;)V
    .locals 0
    .param p1, "appendix"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setSuffix([Ljava/lang/String;)V
    .locals 0
    .param p1, "suff"    # [Ljava/lang/String;

    .prologue
    .line 76
    sput-object p1, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    .line 77
    return-void
.end method
