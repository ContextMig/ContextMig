.class public Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;
.super Ljava/lang/Object;
.source "ImportController.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x20e5256cebeb7da4L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/external/ImportController"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public importRecordsFromCsv(Ljava/lang/String;)Ljava/util/List;
    .locals 40
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;->$jacocoInit()[Z

    move-result-object v38

    .line 29
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v29, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    if-nez p1, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    .line 68
    :goto_0
    return-object v29

    .line 32
    :cond_0
    const-string/jumbo v4, "\\r?\\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 33
    .local v25, "lines":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v39, v0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    aput-boolean v6, v38, v5

    move/from16 v37, v4

    :goto_1
    move/from16 v0, v37

    move/from16 v1, v39

    if-ge v0, v1, :cond_6

    aget-object v24, v25, v37

    .line 34
    .local v24, "line":Ljava/lang/String;
    const-string/jumbo v4, ";"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 35
    .local v36, "words":[Ljava/lang/String;
    move-object/from16 v0, v36

    array-length v4, v0

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    .line 33
    :goto_2
    add-int/lit8 v4, v37, 0x1

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v38, v5

    move/from16 v37, v4

    goto :goto_1

    .line 37
    :cond_1
    const/4 v4, 0x0

    aget-object v32, v36, v4

    .line 38
    .local v32, "timeCol":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v34, v36, v4

    .line 39
    .local v34, "titleCol":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v20, v36, v4

    .line 40
    .local v20, "categoryCol":Ljava/lang/String;
    const/4 v4, 0x3

    aget-object v28, v36, v4

    .line 41
    .local v28, "priceCol":Ljava/lang/String;
    const/4 v4, 0x4

    aget-object v4, v36, v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v38, v5

    .line 44
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 45
    .local v30, "time":J
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    .line 46
    .local v33, "title":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 47
    .local v21, "categoryName":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    .line 48
    .local v26, "price":D
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, "currency":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    .line 51
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x7

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    .line 54
    const-wide/16 v4, 0x0

    cmpg-double v4, v26, v4

    if-gez v4, :cond_4

    const/16 v35, 0x1

    .local v35, "type":I
    const/16 v4, 0x9

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    .line 57
    .end local v35    # "type":I
    :goto_3
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    const-wide/16 v4, -0x1

    const-string/jumbo v6, "MOCK"

    const-wide/16 v7, -0x1

    const-wide/16 v10, 0x0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v15}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;-><init>(JLjava/lang/String;JLjava/lang/String;JDZI)V

    .line 60
    .local v3, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    new-instance v10, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    move-wide/from16 v11, v30

    move/from16 v13, v35

    move-object/from16 v14, v33

    move-object v15, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;-><init>(JILjava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;DLcom/blogspot/e_kanivets/moneytracker/entity/data/Account;Ljava/lang/String;)V

    .line 61
    .local v10, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/blogspot/e_kanivets/moneytracker/controller/external/ImportController;->recordController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;

    invoke-virtual {v4, v10}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->create(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v22

    .line 62
    .local v22, "createdRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    if-nez v22, :cond_5

    const/16 v4, 0xb

    const/4 v5, 0x1

    aput-boolean v5, v38, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_4
    const/16 v4, 0xd

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    goto/16 :goto_2

    .line 50
    .end local v2    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    .end local v3    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .end local v10    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .end local v22    # "createdRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_2
    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    goto/16 :goto_2

    .line 51
    :cond_3
    const/16 v4, 0x8

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    goto/16 :goto_2

    .line 55
    :cond_4
    const/16 v35, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v38, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 63
    .end local v9    # "currency":Ljava/lang/String;
    .end local v21    # "categoryName":Ljava/lang/String;
    .end local v26    # "price":D
    .end local v30    # "time":J
    .end local v33    # "title":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 64
    .local v23, "e":Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, 0xe

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    goto/16 :goto_2

    .line 62
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v2    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    .restart local v3    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .restart local v9    # "currency":Ljava/lang/String;
    .restart local v10    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .restart local v21    # "categoryName":Ljava/lang/String;
    .restart local v22    # "createdRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .restart local v26    # "price":D
    .restart local v30    # "time":J
    .restart local v33    # "title":Ljava/lang/String;
    :cond_5
    :try_start_2
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xc

    const/4 v5, 0x1

    aput-boolean v5, v38, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 68
    .end local v2    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    .end local v3    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .end local v9    # "currency":Ljava/lang/String;
    .end local v10    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .end local v20    # "categoryCol":Ljava/lang/String;
    .end local v21    # "categoryName":Ljava/lang/String;
    .end local v22    # "createdRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .end local v24    # "line":Ljava/lang/String;
    .end local v26    # "price":D
    .end local v28    # "priceCol":Ljava/lang/String;
    .end local v30    # "time":J
    .end local v32    # "timeCol":Ljava/lang/String;
    .end local v33    # "title":Ljava/lang/String;
    .end local v34    # "titleCol":Ljava/lang/String;
    .end local v36    # "words":[Ljava/lang/String;
    :cond_6
    const/16 v4, 0x10

    const/4 v5, 0x1

    aput-boolean v5, v38, v4

    goto/16 :goto_0
.end method
