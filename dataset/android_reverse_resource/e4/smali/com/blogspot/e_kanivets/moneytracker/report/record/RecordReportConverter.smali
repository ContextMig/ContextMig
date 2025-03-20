.class public Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;
.super Ljava/lang/Object;
.source "RecordReportConverter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final PRICE_PARAM_NAME:Ljava/lang/String; = "price"

.field public static final TITLE_PARAM_NAME:Ljava/lang/String; = "title"


# instance fields
.field private final report:Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xf9dd7c5026448ceL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;)V
    .locals 3
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->report:Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;

    .line 29
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getTitle(Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->getRecordList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    .local v0, "count":I
    if-gt v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-boolean v4, v2, v3

    .line 98
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-boolean v4, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getChildData()Ljava/util/List;
    .locals 13
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v5

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "childData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    iget-object v6, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->report:Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;

    invoke-interface {v6}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getSummary()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x7

    aput-boolean v12, v5, v7

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;

    .line 65
    .local v0, "categoryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, "childDataItem":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;->getSummaryRecordList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v8, 0x8

    aput-boolean v12, v5, v8

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;

    .line 67
    .local v4, "summaryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "title"

    invoke-direct {p0, v4}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->getTitle(Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v8, "price"

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;->getAmount()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const/16 v8, 0x9

    aput-boolean v12, v5, v8

    goto :goto_1

    .line 74
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "summaryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/SummaryRecord;
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const/16 v7, 0xa

    aput-boolean v12, v5, v7

    goto :goto_0

    .line 77
    .end local v0    # "categoryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;
    .end local v2    # "childDataItem":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    const/16 v6, 0xb

    aput-boolean v12, v5, v6

    return-object v1
.end method

.method public getChildFrom()[Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "title"

    aput-object v3, v1, v2

    const-string/jumbo v2, "price"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public getChildLayout()I
    .locals 4
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    const v1, 0x7f0b005b

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getChildTo()[I
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1

    :array_0
    .array-data 4
        0x7f0900f3
        0x7f090101
    .end array-data
.end method

.method public getGroupData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v3

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v1, "groupData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->report:Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;

    invoke-interface {v4}, Lcom/blogspot/e_kanivets/moneytracker/report/record/IRecordReport;->getSummary()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    aput-boolean v8, v3, v8

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;

    .line 35
    .local v0, "categoryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "title"

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v5, "price"

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;->getAmount()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v5, 0x2

    aput-boolean v8, v3, v5

    goto :goto_0

    .line 42
    .end local v0    # "categoryRecord":Lcom/blogspot/e_kanivets/moneytracker/report/record/model/CategoryRecord;
    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x3

    aput-boolean v8, v3, v4

    return-object v1
.end method

.method public getGroupFrom()[Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "title"

    aput-object v3, v1, v2

    const-string/jumbo v2, "price"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public getGroupLayout()I
    .locals 4
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    const v1, 0x7f0b005c

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getGroupTo()[I
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/report/record/RecordReportConverter;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1

    nop

    :array_0
    .array-data 4
        0x7f0900f3
        0x7f090101
    .end array-data
.end method
