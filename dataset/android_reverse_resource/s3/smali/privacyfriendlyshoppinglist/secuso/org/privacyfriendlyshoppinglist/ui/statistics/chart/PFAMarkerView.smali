.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;
.super Lcom/github/mikephil/charting/components/MarkerView;
.source "PFAMarkerView.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final SEPARATION:Ljava/lang/String; = " - "

.field private static final SPACE:Ljava/lang/String; = " "


# instance fields
.field private context:Landroid/content/Context;

.field private format:Ljava/text/DecimalFormat;

.field private markup:Landroid/widget/TextView;

.field private numberScale:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

.field private unit:Ljava/lang/String;

.field private xValueFormatter:Lcom/github/mikephil/charting/formatter/AxisValueFormatter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x66a8f67d43025ca5L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView"

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/github/mikephil/charting/formatter/AxisValueFormatter;ILprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->$jacocoInit()[Z

    move-result-object v1

    .line 32
    const v0, 0x7f04005b

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/components/MarkerView;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->xValueFormatter:Lcom/github/mikephil/charting/formatter/AxisValueFormatter;

    .line 35
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->context:Landroid/content/Context;

    const/4 v0, 0x0

    aput-boolean v5, v1, v0

    .line 36
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->markup:Landroid/widget/TextView;

    .line 39
    sget v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticsQuery;->PRICE:I

    if-ne p3, v0, :cond_0

    aput-boolean v5, v1, v5

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090103

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    .line 42
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x3

    aput-boolean v5, v1, v3

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-boolean v5, v1, v4

    .line 44
    const-string v4, "pref_currency"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->unit:Ljava/lang/String;

    .line 45
    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    .line 52
    :goto_0
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->context:Landroid/content/Context;

    .line 53
    iput-object p4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->numberScale:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    const/16 v2, 0x8

    aput-boolean v5, v1, v2

    .line 54
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->format:Ljava/text/DecimalFormat;

    .line 55
    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090101

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v5, v1, v2

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->unit:Ljava/lang/String;

    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getXOffset(F)I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->$jacocoInit()[Z

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v0, v2

    .line 79
    .local v0, "center":I
    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return v0
.end method

.method public getYOffset(F)I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->getHeight()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->$jacocoInit()[Z

    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v1

    .line 61
    .local v1, "value":F
    const-string v0, ""

    const/16 v3, 0xa

    aput-boolean v8, v2, v3

    .line 62
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->numberScale:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    if-nez v3, :cond_0

    const/16 v3, 0xb

    aput-boolean v8, v2, v3

    .line 67
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->xValueFormatter:Lcom/github/mikephil/charting/formatter/AxisValueFormatter;

    const/16 v5, 0x10

    aput-boolean v8, v2, v5

    .line 68
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/github/mikephil/charting/formatter/AxisValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->format:Ljava/text/DecimalFormat;

    float-to-double v6, v1

    const/16 v5, 0x11

    aput-boolean v8, v2, v5

    .line 70
    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->unit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    aput-boolean v8, v2, v4

    .line 72
    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->markup:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/16 v3, 0x13

    aput-boolean v8, v2, v3

    return-void

    .line 62
    :cond_0
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->numberScale:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getValue(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_1

    const/16 v3, 0xc

    aput-boolean v8, v2, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0xd

    aput-boolean v8, v2, v3

    .line 64
    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->numberScale:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getValue(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/16 v3, 0xe

    aput-boolean v8, v2, v3

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->numberScale:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;

    iget-object v5, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAMarkerView;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/NumberScale;->getAbbreviation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "numberSuffix":Ljava/lang/String;
    const/16 v3, 0xf

    aput-boolean v8, v2, v3

    goto/16 :goto_0
.end method
