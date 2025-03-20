.class public Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;
.super Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;
.source "RecordRepo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "RecordRepo"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x10de62f2600d76b2L    # -2.086277814529763E227

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V

    .line 28
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Landroid/content/ContentValues;
    .locals 4
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;->contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Landroid/content/ContentValues;

    move-result-object v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Landroid/content/ContentValues;
    .locals 7
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;->$jacocoInit()[Z

    move-result-object v1

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-nez p1, :cond_0

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    .line 41
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x5

    aput-boolean v6, v1, v2

    .line 52
    :goto_1
    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x4

    aput-boolean v6, v1, v2

    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v2, "time"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    const-string/jumbo v2, "type"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    const-string/jumbo v2, "title"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v2, "category_id"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCategory()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Category;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    const-string/jumbo v2, "price"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getPrice()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    const-string/jumbo v2, "account_id"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    const-string/jumbo v2, "currency"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v2, "decimals"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getDecimals()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const/4 v2, 0x6

    aput-boolean v6, v1, v2

    goto/16 :goto_1
.end method

.method protected getListFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 29
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;->$jacocoInit()[Z

    move-result-object v27

    .line 58
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v23, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;>;"
    if-nez p1, :cond_0

    const/4 v4, 0x7

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    .line 87
    :goto_0
    return-object v23

    .line 61
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x8

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    .line 87
    :goto_1
    const/16 v4, 0xc

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    goto :goto_0

    .line 62
    :cond_1
    const-string/jumbo v4, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 63
    .local v21, "idColIndex":I
    const-string/jumbo v4, "time"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 64
    .local v24, "timeColIndex":I
    const-string/jumbo v4, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 65
    .local v26, "typeColIndex":I
    const-string/jumbo v4, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 66
    .local v25, "titleColIndex":I
    const-string/jumbo v4, "category_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 67
    .local v19, "categoryColIndex":I
    const-string/jumbo v4, "price"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 68
    .local v22, "priceColIndex":I
    const-string/jumbo v4, "account_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, "accountIdColIndex":I
    const-string/jumbo v4, "currency"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 70
    .local v20, "currencyColIndex":I
    const-string/jumbo v4, "decimals"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    const/16 v4, 0x9

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    .line 73
    :goto_2
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 74
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 75
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 76
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 77
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 78
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 79
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 80
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 81
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-direct/range {v3 .. v18}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;-><init>(JJILjava/lang/String;JJJLjava/lang/String;J)V

    .line 83
    .local v3, "record":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    goto :goto_2

    :cond_2
    const/16 v4, 0xb

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    goto/16 :goto_1
.end method

.method protected getTable()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/RecordRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const-string/jumbo v1, "records"

    aput-boolean v2, v0, v2

    return-object v1
.end method
