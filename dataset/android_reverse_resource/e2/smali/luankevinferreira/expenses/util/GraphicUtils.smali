.class public Lluankevinferreira/expenses/util/GraphicUtils;
.super Ljava/lang/Object;
.source "GraphicUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/util/GraphicUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x10870be62c2915bL

    const-string v2, "luankevinferreira/expenses/util/GraphicUtils"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/util/GraphicUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/util/GraphicUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getDataPoints(Landroid/content/Context;Ljava/lang/String;)[Lcom/jjoe64/graphview/series/DataPoint;
    .locals 12

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/util/GraphicUtils;->$jacocoInit()[Z

    move-result-object v5

    .line 40
    const/4 v4, 0x4

    new-array v6, v4, [Lcom/jjoe64/graphview/series/DataPoint;

    const/16 v4, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    .line 41
    new-instance v0, Lluankevinferreira/expenses/dao/ExpenseDAO;

    invoke-direct {v0, p1}, Lluankevinferreira/expenses/dao/ExpenseDAO;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "dao":Lluankevinferreira/expenses/dao/ExpenseDAO;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x3

    const/16 v4, 0x9

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    :goto_0
    array-length v4, v6

    if-ge v1, v4, :cond_0

    const/16 v4, 0xa

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v7, 0xb

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 45
    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    const/4 v8, 0x1

    :try_start_0
    aput-boolean v8, v5, v7

    .line 47
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lluankevinferreira/expenses/dao/ExpenseDAO;->selectTotalMonth(Ljava/util/Date;Ljava/lang/String;)D

    move-result-wide v8

    const/16 v4, 0xd

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    .line 48
    new-instance v3, Lcom/jjoe64/graphview/series/DataPoint;

    int-to-double v10, v1

    invoke-direct {v3, v10, v11, v8, v9}, Lcom/jjoe64/graphview/series/DataPoint;-><init>(DD)V

    .line 49
    .local v3, "point":Lcom/jjoe64/graphview/series/DataPoint;
    aput-object v3, v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/16 v4, 0xe

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    .line 43
    .end local v3    # "point":Lcom/jjoe64/graphview/series/DataPoint;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    const/16 v4, 0x11

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    goto :goto_0

    .line 50
    .end local v2    # "j":I
    :catch_0
    move-exception v4

    const/16 v7, 0xf

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v4, 0x10

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    .line 55
    const/16 v4, 0x12

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    return-object v6
.end method

.method public getLabels(Lcom/jjoe64/graphview/GraphView;)Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lluankevinferreira/expenses/util/GraphicUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lluankevinferreira/expenses/util/GraphicUtils;->getStringsLabels(Ljava/util/Calendar;)[Ljava/lang/String;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 24
    new-instance v2, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;

    invoke-direct {v2, p1}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 25
    invoke-virtual {v2, v1}, Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;->setHorizontalLabels([Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-object v2
.end method

.method getStringsLabels(Ljava/util/Calendar;)[Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {}, Lluankevinferreira/expenses/util/GraphicUtils;->$jacocoInit()[Z

    move-result-object v3

    .line 32
    new-array v2, v4, [Ljava/lang/String;

    .line 33
    .local v2, "labels":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x3

    aput-boolean v5, v3, v4

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    const/4 v4, 0x5

    aput-boolean v5, v3, v4

    .line 34
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4}, Lluankevinferreira/expenses/enumeration/LabelsType;->getLabel(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    const/4 v4, 0x6

    aput-boolean v5, v3, v4

    goto :goto_0

    .line 36
    .end local v1    # "j":I
    :cond_0
    const/4 v4, 0x7

    aput-boolean v5, v3, v4

    return-object v2
.end method
