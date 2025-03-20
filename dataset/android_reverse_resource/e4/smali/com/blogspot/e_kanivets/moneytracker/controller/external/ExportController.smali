.class public Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;
.super Ljava/lang/Object;
.source "ExportController.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

.field private final recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x24347ad0dce0c686L    # -1.5627174820666763E134

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/external/ExportController"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    .line 24
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;->categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getRecordsForExport(JJ)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;->$jacocoInit()[Z

    move-result-object v10

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v7, "category"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v7, "price"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v7, "currency"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string/jumbo v2, "time BETWEEN ? AND ?"

    .line 42
    .local v2, "condition":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 44
    .local v0, "args":[Ljava/lang/String;
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    invoke-virtual {v7, v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 46
    .local v4, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v10, v7

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 47
    .local v3, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v7, 0x2

    const/4 v8, 0x1

    aput-boolean v8, v10, v7

    .line 55
    :goto_1
    if-nez v1, :cond_1

    const-string/jumbo v7, "NONE"

    const/4 v8, 0x4

    const/4 v9, 0x1

    aput-boolean v9, v10, v8

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v8

    const/4 v7, 0x6

    const/4 v12, 0x1

    aput-boolean v12, v10, v7

    :goto_3
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "NON"

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput-boolean v9, v10, v8

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const/16 v7, 0xa

    const/4 v8, 0x1

    aput-boolean v8, v10, v7

    goto :goto_0

    .line 53
    :cond_0
    iget-object v7, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ExportController;->categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->read(J)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .restart local v1    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    const/4 v7, 0x3

    const/4 v8, 0x1

    aput-boolean v8, v10, v7

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    const/4 v9, 0x1

    aput-boolean v9, v10, v8

    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v8

    neg-double v8, v8

    const/4 v7, 0x7

    const/4 v12, 0x1

    aput-boolean v12, v10, v7

    goto :goto_3

    .line 59
    :cond_3
    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    const/4 v9, 0x1

    aput-boolean v9, v10, v8

    goto :goto_4

    .line 64
    .end local v1    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    .end local v3    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_4
    const/16 v7, 0xb

    const/4 v8, 0x1

    aput-boolean v8, v10, v7

    return-object v5
.end method
