.class public Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;
.super Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo;
.source "AccountRepo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/repo/base/BaseRepo",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "AccountRepo"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3283402e1f64633bL    # 2.2849545231624905E-65

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;->$jacocoInit()[Z

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
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;->contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;)Landroid/content/ContentValues;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected contentValues(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;)Landroid/content/ContentValues;
    .locals 7
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;->$jacocoInit()[Z

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
    const-string/jumbo v2, "title"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "cur_sum"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurSum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    const-string/jumbo v2, "currency"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v2, "decimals"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getDecimals()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    const-string/jumbo v2, "goal"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getGoal()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 47
    const-string/jumbo v2, "archived"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->isArchived()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 48
    const-string/jumbo v2, "color"

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method protected getListFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 26
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
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;->$jacocoInit()[Z

    move-result-object v23

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;>;"
    if-nez p1, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v23, v4

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

    aput-boolean v5, v23, v4

    .line 85
    :goto_1
    const/16 v4, 0xb

    const/4 v5, 0x1

    aput-boolean v5, v23, v4

    goto :goto_0

    .line 61
    :cond_1
    const-string/jumbo v4, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 62
    .local v21, "idColIndex":I
    const-string/jumbo v4, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 63
    .local v22, "titleColIndex":I
    const-string/jumbo v4, "cur_sum"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 64
    .local v17, "curSumColIndex":I
    const-string/jumbo v4, "currency"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 65
    .local v18, "currencyColIndex":I
    const-string/jumbo v4, "decimals"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 66
    .local v19, "decimalsColIndex":I
    const-string/jumbo v4, "goal"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 67
    .local v20, "goalColIndex":I
    const-string/jumbo v4, "archived"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 68
    .local v16, "archivedIndex":I
    const-string/jumbo v4, "color"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v23, v4

    .line 72
    :goto_2
    new-instance v3, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 73
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 74
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 75
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 76
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 77
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 78
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    const/4 v15, 0x7

    const/16 v25, 0x1

    aput-boolean v25, v23, v15

    .line 79
    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-direct/range {v3 .. v15}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;-><init>(JLjava/lang/String;JLjava/lang/String;JDZI)V

    .line 81
    .local v3, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x9

    const/4 v5, 0x1

    aput-boolean v5, v23, v4

    goto :goto_2

    .line 78
    .end local v3    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_2
    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v25, 0x1

    aput-boolean v25, v23, v15

    goto :goto_3

    .line 82
    .restart local v3    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_3
    const/16 v4, 0xa

    const/4 v5, 0x1

    aput-boolean v5, v23, v4

    goto/16 :goto_1
.end method

.method protected getTable()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/data/AccountRepo;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const-string/jumbo v1, "accounts"

    aput-boolean v2, v0, v2

    return-object v1
.end method
