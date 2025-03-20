.class public Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;
.super Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;
.source "TransferRepo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "TransferRepo"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x132850556078f90dL    # -2.0413254293942486E216

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;->$jacocoInit()[Z

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
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;->contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;)Landroid/content/ContentValues;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;)Landroid/content/ContentValues;
    .locals 7
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;->$jacocoInit()[Z

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

    .line 50
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string/jumbo v2, "time"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    const-string/jumbo v2, "from_account_id"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getFromAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    const-string/jumbo v2, "to_account_id"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getToAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 45
    const-string/jumbo v2, "from_amount"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getFromAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    const-string/jumbo v2, "to_amount"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getToAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    const-string/jumbo v2, "decimals_from"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getFromDecimals()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    const-string/jumbo v2, "decimals_to"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getToDecimals()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method protected getListFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 29
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
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;->$jacocoInit()[Z

    move-result-object v27

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;>;"
    if-nez p1, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    .line 85
    :goto_0
    return-object v2

    .line 59
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    .line 85
    :goto_1
    const/16 v4, 0x9

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    goto :goto_0

    .line 61
    :cond_1
    const-string/jumbo v4, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 62
    .local v23, "idColIndex":I
    const-string/jumbo v4, "time"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 63
    .local v24, "idColTime":I
    const-string/jumbo v4, "from_account_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 64
    .local v21, "idColFromAccountId":I
    const-string/jumbo v4, "to_account_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 65
    .local v25, "idColToAccountId":I
    const-string/jumbo v4, "from_amount"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 66
    .local v22, "idColFromAmount":I
    const-string/jumbo v4, "to_amount"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 67
    .local v26, "idColToAmount":I
    const-string/jumbo v4, "decimals_from"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 68
    .local v20, "idColDecimalsFrom":I
    const-string/jumbo v4, "decimals_to"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    .line 72
    :goto_2
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 73
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 74
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 75
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 76
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 77
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 78
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 79
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-direct/range {v3 .. v19}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;-><init>(JJJJJJJJ)V

    .line 81
    .local v3, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    const/4 v5, 0x1

    aput-boolean v5, v27, v4

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

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

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/TransferRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const-string/jumbo v1, "transfers"

    aput-boolean v2, v0, v2

    return-object v1
.end method
