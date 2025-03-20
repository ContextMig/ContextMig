.class public Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;
.super Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;
.source "ExchangeRateRepo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "ExchangeRateRepo"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2fb306df9c4dfcb7L    # -6.709723250240529E78

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;->$jacocoInit()[Z

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
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;->contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;)Landroid/content/ContentValues;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;)Landroid/content/ContentValues;
    .locals 7
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;->$jacocoInit()[Z

    move-result-object v1

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    .line 47
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string/jumbo v2, "created_at"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getCreatedAt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    const-string/jumbo v2, "from_currency"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v2, "to_currency"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v2, "amount"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 47
    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method protected getListFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 18
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;->$jacocoInit()[Z

    move-result-object v16

    .line 53
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v12, "exchangeRateList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;>;"
    if-nez p1, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 76
    :goto_0
    return-object v12

    .line 56
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 76
    :goto_1
    const/16 v4, 0x9

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v4, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 58
    .local v14, "idColIndex":I
    const-string/jumbo v4, "created_at"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 59
    .local v2, "createdAtColIndex":I
    const-string/jumbo v4, "from_currency"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 60
    .local v13, "fromCurrencyColIndex":I
    const-string/jumbo v4, "to_currency"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 61
    .local v15, "toCurrencyColIndex":I
    const-string/jumbo v4, "amount"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 65
    :goto_2
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 66
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 67
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 69
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;-><init>(JJLjava/lang/String;Ljava/lang/String;D)V

    .line 72
    .local v3, "category":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    goto :goto_1
.end method

.method protected getTable()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/ExchangeRateRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const-string/jumbo v1, "rates"

    aput-boolean v2, v0, v2

    return-object v1
.end method
