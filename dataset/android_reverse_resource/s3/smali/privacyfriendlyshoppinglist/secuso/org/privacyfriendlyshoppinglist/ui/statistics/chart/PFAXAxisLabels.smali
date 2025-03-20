.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;
.super Ljava/lang/Object;
.source "PFAXAxisLabels.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/AxisValueFormatter;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4aedd727ffa0f6e4L    # 8.931711487138267E52

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->labels:Ljava/util/List;

    aput-boolean v3, v0, v3

    .line 23
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->labels:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public getDecimalDigits()I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->$jacocoInit()[Z

    move-result-object v2

    .line 29
    float-to-double v4, p1

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-nez v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v8, v2, v1

    .line 31
    :goto_0
    const-string v1, ""

    const/4 v3, 0x5

    aput-boolean v8, v2, v3

    .line 42
    .local v0, "value":F
    :goto_1
    return-object v1

    .line 29
    .end local v0    # "value":F
    :cond_0
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 35
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .restart local v0    # "value":F
    const/4 v1, 0x6

    aput-boolean v8, v2, v1

    .line 36
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 38
    const-string v1, ""

    const/4 v3, 0x7

    aput-boolean v8, v2, v3

    goto :goto_1

    .line 42
    :cond_2
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/statistics/chart/PFAXAxisLabels;->labels:Ljava/util/List;

    float-to-int v3, v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x8

    aput-boolean v8, v2, v3

    goto :goto_1
.end method
