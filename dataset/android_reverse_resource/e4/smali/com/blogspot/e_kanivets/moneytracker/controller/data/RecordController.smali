.class public Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;
.super Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;
.source "RecordController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

.field private final categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x159c42f5f57dedacL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/data/RecordController"

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)V

    .line 32
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    .line 33
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    .line 34
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private validateRecord(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .locals 15
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v14

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x14

    const/4 v1, 0x1

    aput-boolean v1, v14, v0

    .line 135
    .local v7, "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    :goto_0
    return-object p1

    .line 133
    .end local v7    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->readOrCreate(Ljava/lang/String;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v7

    .line 135
    .restart local v7    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    new-instance v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getId()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getPrice()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v11

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getDecimals()J

    move-result-wide v12

    invoke-direct/range {v0 .. v13}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;-><init>(JJILjava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;JLcom/blogspot/e_kanivets/moneytracker/entity/data/Account;Ljava/lang/String;J)V

    .line 135
    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v14, v1

    move-object/from16 p1, v0

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .locals 6
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v3

    .line 39
    if-nez p1, :cond_0

    aput-boolean v5, v3, v5

    move-object v0, v2

    .line 47
    .local v1, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :goto_0
    return-object v0

    .line 41
    .end local v1    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_0
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->validateRecord(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v1

    .line 43
    .restart local v1    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v4, v1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 44
    .local v0, "createdRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    if-nez v0, :cond_1

    const/4 v4, 0x2

    aput-boolean v5, v3, v4

    move-object v0, v2

    goto :goto_0

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->recordAdded(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z

    .line 47
    const/4 v2, 0x3

    aput-boolean v5, v3, v2

    goto :goto_0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->create(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public delete(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z
    .locals 4
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v1

    .line 71
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->delete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->recordDeleted(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z

    move-result v0

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->delete(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z

    move-result v1

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getRecordsForPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/Period;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v2

    .line 123
    const-string/jumbo v1, "time BETWEEN ? AND ?"

    .line 124
    .local v1, "condition":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getFirst()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 125
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getLast()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 127
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x13

    aput-boolean v6, v2, v4

    return-object v3
.end method

.method public read(J)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v2

    .line 78
    const-string/jumbo v1, "id=?"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    const/16 v3, 0x9

    aput-boolean v5, v2, v3

    .line 81
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0xa

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic read(J)Ljava/lang/Object;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->read(J)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v1

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readAll()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    invoke-virtual {p0, v1, v1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v19

    .line 93
    invoke-super/range {p0 .. p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 96
    .local v18, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v16, "completedRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 106
    .local v17, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    const/4 v9, 0x0

    .line 107
    .local v9, "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 110
    :goto_1
    const/4 v12, 0x0

    .line 111
    .local v12, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 114
    :goto_2
    new-instance v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getId()J

    move-result-wide v3

    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTime()J

    move-result-wide v5

    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v7

    .line 115
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getPrice()J

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v13

    .line 116
    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getDecimals()J

    move-result-wide v14

    invoke-direct/range {v2 .. v15}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;-><init>(JJILjava/lang/String;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;JLcom/blogspot/e_kanivets/moneytracker/entity/data/Account;Ljava/lang/String;J)V

    .line 114
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_0

    .line 108
    .end local v12    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->categoryController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;

    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/CategoryController;->read(J)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    check-cast v9, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    .restart local v9    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_1

    .line 112
    .restart local v12    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual/range {v17 .. v17}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->read(J)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    check-cast v12, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .restart local v12    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_2

    .line 119
    .end local v9    # "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;
    .end local v12    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .end local v17    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_2
    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    return-object v16
.end method

.method public update(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .locals 9
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v4

    .line 54
    if-nez p1, :cond_0

    const/4 v5, 0x4

    aput-boolean v8, v4, v5

    move-object v2, v3

    .line 64
    .local v0, "oldRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .local v1, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :goto_0
    return-object v2

    .line 56
    .end local v0    # "oldRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    .end local v1    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    :cond_0
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->validateRecord(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v1

    .line 58
    .restart local v1    # "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    invoke-virtual {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->read(J)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v0

    .line 60
    .restart local v0    # "oldRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v5, v1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->update(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    .line 61
    .local v2, "updatedRecord":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    if-nez v2, :cond_1

    const/4 v5, 0x5

    aput-boolean v8, v4, v5

    move-object v2, v3

    goto :goto_0

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->accountController:Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;

    invoke-virtual {v3, v0, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->recordUpdated(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z

    .line 64
    const/4 v3, 0x6

    aput-boolean v8, v4, v3

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/RecordController;->update(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-result-object v1

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
