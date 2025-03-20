.class public Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;
.super Ljava/lang/Object;
.source "DbUtilities.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "DbUtilities"


# instance fields
.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2dfeb15a8eb005c8L    # -1.0759098327829665E87

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/data/DbUtilities"

    const/16 v3, 0xc9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 55
    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;-><init>(Landroid/content/Context;)V

    aput-boolean v3, v0, v3

    .line 56
    invoke-virtual {v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static createShareIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 734
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa8

    aput-boolean v3, v0, v2

    .line 735
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0xa9

    aput-boolean v3, v0, v2

    .line 736
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xaa

    aput-boolean v3, v0, v2

    .line 737
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    const/16 v2, 0xab

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v11, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v10

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v0, 0x5d

    aput-boolean v11, v10, v0

    .line 387
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 388
    .local v8, "inputDate":Ljava/util/Date;
    sub-long v6, v2, p1

    .line 390
    .local v6, "difference":J
    const-wide/32 v0, 0xea60

    cmp-long v0, v6, v0

    if-gez v0, :cond_0

    const/16 v0, 0x5e

    aput-boolean v11, v10, v0

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x5f

    aput-boolean v11, v10, v0

    .line 400
    :goto_0
    return-object v9

    .line 395
    :cond_0
    const-wide/32 v0, 0x240c8400

    cmp-long v0, v6, v0

    if-gez v0, :cond_1

    const/16 v0, 0x60

    aput-boolean v11, v10, v0

    .line 396
    const-wide/16 v4, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, "output":Ljava/lang/String;
    const/16 v0, 0x61

    aput-boolean v11, v10, v0

    goto :goto_0

    .line 400
    .end local v9    # "output":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x62

    aput-boolean v11, v10, v0

    goto :goto_0
.end method

.method public static formatQuantity(D)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 409
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x63

    aput-boolean v4, v0, v2

    .line 410
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    const/16 v2, 0x64

    aput-boolean v4, v0, v2

    .line 411
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public static getCurrentTime()J
    .locals 5

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x5c

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method


# virtual methods
.method public changeItemPosition(Landroid/database/Cursor;JII)V
    .locals 16
    .param p5, "i_end"    # I

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v14

    .line 510
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateItemPosition(JI)I

    const/16 v5, 0x85

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    .line 511
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v5, 0x86

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    .line 512
    const-string v5, "changeItemPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 522
    const/4 v13, -0x1

    .line 523
    .local v13, "positionChange":I
    add-int/lit8 v12, p4, 0x1

    .line 524
    .local v12, "i_start":I
    const/16 v5, 0x87

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    .line 531
    .end local p5    # "i_end":I
    :goto_0
    const/16 v5, 0x89

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    .end local v12    # "i_start":I
    :goto_1
    move/from16 v0, p5

    if-gt v12, v0, :cond_1

    const/16 v5, 0x8a

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    .line 532
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v5, 0x8b

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    .line 533
    const-string v5, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-int v5, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateItemPosition(JI)I

    const/16 v5, 0x8c

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    .line 534
    const-string v5, "changeItemPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, v12, v13

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    add-int/lit8 v4, v12, 0x1

    .local v4, "i":I
    const/16 v5, 0x8d

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    move v12, v4

    goto :goto_1

    .line 527
    .end local v4    # "i":I
    .end local v13    # "positionChange":I
    :cond_0
    const/4 v13, 0x1

    .line 528
    .restart local v13    # "positionChange":I
    move/from16 v12, p5

    .line 529
    .restart local v12    # "i_start":I
    add-int/lit8 p5, p4, -0x1

    const/16 v5, 0x88

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    goto :goto_0

    .line 537
    .end local v12    # "i_start":I
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListIdBasedOnItemId(J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateShoppingList(JJLjava/lang/String;Ljava/lang/String;)I

    .line 538
    const/16 v5, 0x8e

    const/4 v6, 0x1

    aput-boolean v6, v14, v5

    return-void
.end method

.method public closeDb()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public createShareString(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 743
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0xac

    aput-boolean v6, v0, v2

    .line 744
    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0xad

    aput-boolean v6, v0, v3

    .line 745
    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0xae

    aput-boolean v6, v0, v3

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xaf

    aput-boolean v6, v0, v4

    .line 747
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v1, 0xb0

    aput-boolean v6, v0, v1

    .line 770
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc5

    aput-boolean v6, v0, v2

    return-object v1

    .line 748
    :cond_0
    if-nez v2, :cond_1

    const/16 v2, 0xb1

    aput-boolean v6, v0, v2

    .line 753
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xb5

    aput-boolean v6, v0, v1

    .line 758
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xba

    aput-boolean v6, v0, v1

    .line 762
    :goto_3
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xbd

    aput-boolean v6, v0, v1

    .line 763
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string v1, "quantity"

    const/16 v2, 0xbe

    aput-boolean v6, v0, v2

    .line 765
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/16 v1, 0xbf

    aput-boolean v6, v0, v1

    .line 764
    invoke-static {v4, v5}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->formatQuantity(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    const-string v1, "quantityUnit"

    const/16 v2, 0xc0

    aput-boolean v6, v0, v2

    .line 767
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc1

    aput-boolean v6, v0, v2

    .line 766
    invoke-virtual {p0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getLocalisedQuantitUnit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc2

    aput-boolean v6, v0, v1

    .line 768
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xc3

    aput-boolean v6, v0, v1

    goto :goto_2

    .line 748
    :cond_1
    const/16 v2, 0xb2

    aput-boolean v6, v0, v2

    .line 749
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb3

    aput-boolean v6, v0, v2

    .line 750
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb4

    aput-boolean v6, v0, v2

    goto :goto_1

    .line 753
    :cond_2
    if-nez v1, :cond_3

    const/16 v1, 0xb6

    aput-boolean v6, v0, v1

    goto :goto_2

    :cond_3
    const/16 v1, 0xb7

    aput-boolean v6, v0, v1

    .line 754
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb8

    aput-boolean v6, v0, v1

    .line 755
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb9

    aput-boolean v6, v0, v1

    goto/16 :goto_2

    .line 758
    :cond_4
    const/16 v1, 0xbb

    aput-boolean v6, v0, v1

    .line 760
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xbc

    aput-boolean v6, v0, v1

    goto/16 :goto_3

    .line 768
    :cond_5
    const/16 v1, 0xc4

    aput-boolean v6, v0, v1

    goto/16 :goto_0
.end method

.method public deleteCheckedItems(J)Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v10

    .line 416
    const-string v2, "listId=? AND checked=?"

    const/16 v3, 0x66

    aput-boolean v9, v10, v3

    .line 418
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "1"

    aput-object v3, v0, v9

    .line 420
    .local v0, "whereArgs":[Ljava/lang/String;
    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "items"

    const/16 v5, 0x67

    aput-boolean v9, v10, v5

    .line 421
    invoke-virtual {v3, v4, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/16 v1, 0x68

    aput-boolean v9, v10, v1

    move v8, v9

    :goto_0
    const/16 v1, 0x6a

    aput-boolean v9, v10, v1

    .line 424
    const-wide/16 v4, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateShoppingList(JJLjava/lang/String;Ljava/lang/String;)I

    .line 427
    const/16 v1, 0x6b

    aput-boolean v9, v10, v1

    return v8

    .line 421
    :cond_0
    const/16 v2, 0x69

    aput-boolean v9, v10, v2

    move v8, v1

    goto :goto_0
.end method

.method public deleteItem(J)Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v9

    .line 315
    const-string v1, "_id=?"

    const/16 v4, 0x48

    aput-boolean v8, v9, v4

    .line 316
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v5, 0x49

    aput-boolean v8, v9, v5

    .line 319
    invoke-virtual {p0, p1, p2}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListIdBasedOnItemId(J)J

    move-result-wide v2

    .line 322
    .local v2, "shoppingListId":J
    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "items"

    const/16 v10, 0x4a

    aput-boolean v8, v9, v10

    .line 323
    invoke-virtual {v5, v7, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/16 v0, 0x4b

    aput-boolean v8, v9, v0

    move v0, v8

    :goto_0
    const/16 v1, 0x4d

    aput-boolean v8, v9, v1

    .line 326
    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateShoppingList(JJLjava/lang/String;Ljava/lang/String;)I

    .line 328
    const/16 v1, 0x4e

    aput-boolean v8, v9, v1

    return v0

    .line 323
    :cond_0
    const/16 v1, 0x4c

    aput-boolean v8, v9, v1

    goto :goto_0
.end method

.method public deleteShoppingList(J)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v3

    .line 333
    const-string v4, "_id=?"

    const/16 v5, 0x4f

    aput-boolean v2, v3, v5

    .line 334
    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 336
    .local v1, "whereArgs":[Ljava/lang/String;
    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "shoppingLists"

    const/16 v7, 0x50

    aput-boolean v2, v3, v7

    .line 337
    invoke-virtual {v5, v6, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x51

    aput-boolean v2, v3, v4

    move v0, v2

    .line 339
    .local v0, "result":Z
    :goto_0
    const/16 v4, 0x53

    aput-boolean v2, v3, v4

    return v0

    .line 337
    .end local v0    # "result":Z
    :cond_0
    const/16 v4, 0x52

    aput-boolean v2, v3, v4

    goto :goto_0
.end method

.method public getAllShoppingLists()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v9

    .line 98
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "shoppingLists"

    const-string v7, "modificationDate DESC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 108
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    return-object v8
.end method

.method public getAllShoppingListsExceptOf(J)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v9

    .line 112
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "shoppingLists"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "name"

    aput-object v3, v2, v10

    const-string v3, "_id!=?"

    new-array v4, v10, [Ljava/lang/String;

    const/4 v6, 0x6

    aput-boolean v10, v9, v6

    .line 115
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v7, "modificationDate DESC"

    const/4 v6, 0x7

    aput-boolean v10, v9, v6

    move-object v6, v5

    .line 112
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 120
    .local v8, "cursor":Landroid/database/Cursor;
    const/16 v0, 0x8

    aput-boolean v10, v9, v0

    return-object v8
.end method

.method public getCurrentUserIdCloud()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 375
    const-string v1, "0"

    const/16 v2, 0x5a

    aput-boolean v5, v0, v2

    .line 376
    const-string v2, "DbUtilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentUserIdCloud(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 v2, 0x5b

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLocalisedQuantitUnit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v2

    .line 773
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 774
    .local v0, "unitId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc6

    aput-boolean v4, v2, v1

    .line 775
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    const/16 v3, 0xc7

    aput-boolean v4, v2, v3

    .line 776
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    const/16 v3, 0xc8

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public getPercentageComplete(J)D
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v11

    .line 485
    invoke-virtual {p0, p1, p2}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListItemsCount(J)I

    move-result v10

    .line 486
    .local v10, "totalCount":I
    if-eqz v10, :cond_0

    .line 488
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "items"

    const-string v3, "listId=? AND checked=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x80

    aput-boolean v12, v11, v6

    .line 492
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "1"

    aput-object v5, v4, v12

    const/16 v5, 0x81

    aput-boolean v12, v11, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    .line 488
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x82

    aput-boolean v12, v11, v1

    .line 498
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 500
    .local v9, "checkedCount":I
    mul-int/lit8 v0, v9, 0x64

    div-int/2addr v0, v10

    int-to-double v0, v0

    const/16 v2, 0x83

    aput-boolean v12, v11, v2

    .line 503
    .end local v9    # "checkedCount":I
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    const/16 v2, 0x84

    aput-boolean v12, v11, v2

    goto :goto_0
.end method

.method public getShoppingListCursor(J)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v9

    .line 355
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "shoppingLists"

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x57

    aput-boolean v10, v9, v6

    .line 358
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x58

    aput-boolean v10, v9, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 355
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 362
    .local v8, "cursor":Landroid/database/Cursor;
    const/16 v0, 0x59

    aput-boolean v10, v9, v0

    return-object v8
.end method

.method public getShoppingListIdBasedOnItemId(J)J
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v10

    .line 280
    const-string v3, "_id=?"

    const/16 v0, 0x3b

    aput-boolean v11, v10, v0

    .line 281
    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/16 v0, 0x3c

    aput-boolean v11, v10, v0

    .line 283
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "items"

    new-array v2, v11, [Ljava/lang/String;

    const-string v6, "listId"

    aput-object v6, v2, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x3d

    aput-boolean v11, v10, v1

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3e

    aput-boolean v11, v10, v1

    .line 293
    const-string v1, "listId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .local v8, "result":J
    const/16 v1, 0x3f

    aput-boolean v11, v10, v1

    .line 295
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 296
    const/16 v0, 0x41

    aput-boolean v11, v10, v0

    return-wide v8

    .line 294
    .end local v8    # "result":J
    :cond_0
    const-wide/16 v8, -0x1

    const/16 v1, 0x40

    aput-boolean v11, v10, v1

    goto :goto_0
.end method

.method public getShoppingListIdCloud(J)J
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v9

    .line 584
    const-string v3, "_id=?"

    const/16 v0, 0xa1

    aput-boolean v12, v9, v0

    .line 585
    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/16 v0, 0xa2

    aput-boolean v12, v9, v0

    .line 587
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "shoppingLists"

    new-array v2, v12, [Ljava/lang/String;

    const-string v6, "idCloud"

    aput-object v6, v2, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 594
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    const/16 v0, 0xa3

    aput-boolean v12, v9, v0

    .line 595
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa4

    aput-boolean v12, v9, v0

    .line 598
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 599
    const/16 v0, 0xa7

    aput-boolean v12, v9, v0

    return-wide v10

    .line 595
    :cond_0
    const/16 v0, 0xa5

    aput-boolean v12, v9, v0

    .line 596
    const-string v0, "idCloud"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, "idCloud":J
    const/16 v0, 0xa6

    aput-boolean v12, v9, v0

    goto :goto_0
.end method

.method public getShoppingListItemsCount(J)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 479
    invoke-virtual {p0, p1, p2}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListItemsCursor(J)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0x7e

    aput-boolean v3, v0, v2

    .line 480
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x7f

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getShoppingListItemsCursor(J)Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v10

    .line 343
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "items"

    const-string v3, "listId = ?"

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x54

    aput-boolean v11, v10, v6

    .line 346
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v7, "position"

    const/16 v5, 0x55

    aput-boolean v11, v10, v5

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    .line 343
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 351
    .local v9, "cursor":Landroid/database/Cursor;
    const/16 v0, 0x56

    aput-boolean v11, v10, v0

    return-object v9
.end method

.method public insertItem(JLjava/lang/String;DLjava/lang/String;JJ)J
    .locals 15

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v10

    .line 204
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0x1f

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 205
    const-string v4, "idCloud"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x20

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 206
    const-string v4, "name"

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x21

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 207
    const-string v4, "quantity"

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/16 v4, 0x22

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 208
    const-string v4, "quantityUnit"

    move-object/from16 v0, p6

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x23

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 209
    const-string v4, "listId"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x24

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 210
    const-string v4, "listIdCloud"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const/4 v2, 0x0

    const/16 v4, 0x25

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 212
    move-wide/from16 v0, p7

    invoke-virtual {p0, v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListItemsCursor(J)Landroid/database/Cursor;

    move-result-object v4

    const/16 v5, 0x26

    const/4 v6, 0x1

    aput-boolean v6, v10, v5

    .line 213
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v4, 0x27

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 216
    .local v2, "position":I
    :goto_0
    const-string v4, "position"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x2a

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 217
    const-string v4, "checked"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x2b

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 218
    const-string v4, "modificationDate"

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x2c

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 220
    const-string v4, "modifiedByIdCloud"

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentUserIdCloud()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2d

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 224
    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "items"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    const/16 v3, 0x2e

    const/4 v4, 0x1

    aput-boolean v4, v10, v3

    .line 227
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-wide/from16 v4, p7

    invoke-virtual/range {v3 .. v9}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateShoppingList(JJLjava/lang/String;Ljava/lang/String;)I

    .line 229
    const/16 v3, 0x2f

    const/4 v4, 0x1

    aput-boolean v4, v10, v3

    return-wide v12

    .line 213
    .end local v2    # "position":I
    :cond_0
    const/16 v5, 0x28

    const/4 v6, 0x1

    aput-boolean v6, v10, v5

    .line 214
    const-string v5, "position"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .restart local v2    # "position":I
    const/16 v4, 0x29

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    goto :goto_0
.end method

.method public insertShoppingList(JLjava/lang/String;Ljava/lang/String;)J
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v2

    .line 125
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0x9

    aput-boolean v8, v2, v4

    .line 126
    const-string v4, "idCloud"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0xa

    aput-boolean v8, v2, v4

    .line 127
    const-string v4, "name"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb

    aput-boolean v8, v2, v4

    .line 128
    const-string v4, "description"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc

    aput-boolean v8, v2, v4

    .line 130
    const-string v4, "ownerIdCloud"

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentUserIdCloud()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd

    aput-boolean v8, v2, v4

    .line 131
    const-string v4, "modificationDate"

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0xe

    aput-boolean v8, v2, v4

    .line 133
    const-string v4, "modifiedByIdCloud"

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentUserIdCloud()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xf

    aput-boolean v8, v2, v4

    .line 134
    const-string v4, "hashtag"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x10

    aput-boolean v8, v2, v4

    .line 139
    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "shoppingLists"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 142
    .local v0, "shoppingListRowId":J
    const/16 v3, 0x11

    aput-boolean v8, v2, v3

    return-wide v0
.end method

.method public itemCheckBoxChange(JZ)I
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v3

    .line 301
    const-string v4, "_id=?"

    const/16 v5, 0x42

    aput-boolean v8, v3, v5

    .line 302
    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v6, 0x43

    aput-boolean v8, v3, v6

    .line 304
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 306
    .local v1, "contentValues":Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .local v0, "checkedInteger":I
    const/16 v6, 0x44

    aput-boolean v8, v3, v6

    .line 308
    .end local v0    # "checkedInteger":I
    :goto_0
    const-string v6, "checked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v6, 0x46

    aput-boolean v8, v3, v6

    .line 310
    iget-object v6, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "items"

    invoke-virtual {v6, v7, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 311
    .local v2, "result":I
    const/16 v4, 0x47

    aput-boolean v8, v3, v4

    return v2

    .line 307
    .end local v2    # "result":I
    :cond_0
    const/16 v6, 0x45

    aput-boolean v8, v3, v6

    goto :goto_0
.end method

.method public moveItemToAnotherShoppingList(JJ)I
    .locals 15

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v2

    .line 558
    invoke-virtual/range {p0 .. p2}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListIdBasedOnItemId(J)J

    move-result-wide v4

    const/16 v3, 0x95

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    .line 559
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListIdCloud(J)J

    move-result-wide v10

    .line 562
    .local v10, "newShoppingListIdCloud":J
    const-string v3, "_id=?"

    const/16 v6, 0x96

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 563
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x97

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 565
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const/16 v8, 0x98

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    .line 566
    const-string v8, "position"

    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListItemsCount(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v8, 0x99

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    .line 567
    const-string v8, "listId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v8, 0x9a

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    .line 568
    const-string v8, "listIdCloud"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v8, 0x9b

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    .line 569
    const-string v8, "modificationDate"

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v8, 0x9c

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    .line 571
    const-string v8, "modifiedByIdCloud"

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentUserIdCloud()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x9d

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    .line 573
    iget-object v8, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "items"

    invoke-virtual {v8, v9, v7, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    const/16 v3, 0x9e

    const/4 v6, 0x1

    aput-boolean v6, v2, v3

    .line 576
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateShoppingList(JJLjava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x9f

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 577
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-wide/from16 v4, p3

    invoke-virtual/range {v3 .. v9}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateShoppingList(JJLjava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v3, 0xa0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return v12
.end method

.method public sortItems(IJ)Z
    .locals 14

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v10

    .line 432
    packed-switch p1, :pswitch_data_0

    .line 449
    const/4 v9, 0x0

    const/16 v0, 0x71

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    move-object v7, v9

    .line 453
    :goto_0
    iget-object v0, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "items"

    const/4 v2, 0x0

    const-string v3, "listId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x72

    const/4 v8, 0x1

    aput-boolean v8, v10, v6

    .line 456
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x73

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    .line 453
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x74

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x75

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    .line 465
    :goto_1
    const-string v1, "_id"

    const/16 v2, 0x76

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    .line 466
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x77

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    .line 465
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v1, 0x78

    const/4 v4, 0x1

    aput-boolean v4, v10, v1

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    const/16 v4, 0x79

    const/4 v5, 0x1

    aput-boolean v5, v10, v4

    .line 465
    invoke-virtual {p0, v2, v3, v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateItemPosition(JI)I

    const/16 v1, 0x7a

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    .line 469
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x7b

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    goto :goto_1

    .line 434
    :pswitch_0
    const-string v9, "name"

    .line 435
    .local v9, "order":Ljava/lang/String;
    const/16 v0, 0x6c

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    move-object v7, v9

    goto :goto_0

    .line 437
    .end local v9    # "order":Ljava/lang/String;
    :pswitch_1
    const-string v9, "checked, position"

    .line 438
    .restart local v9    # "order":Ljava/lang/String;
    const/16 v0, 0x6d

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    move-object v7, v9

    goto :goto_0

    .line 440
    .end local v9    # "order":Ljava/lang/String;
    :pswitch_2
    const-string v9, "checked DESC, position"

    .line 441
    .restart local v9    # "order":Ljava/lang/String;
    const/16 v0, 0x6e

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    move-object v7, v9

    goto/16 :goto_0

    .line 443
    .end local v9    # "order":Ljava/lang/String;
    :pswitch_3
    const-string v9, "modificationDate DESC, position"

    .line 444
    .restart local v9    # "order":Ljava/lang/String;
    const/16 v0, 0x6f

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    move-object v7, v9

    goto/16 :goto_0

    .line 446
    .end local v9    # "order":Ljava/lang/String;
    :pswitch_4
    const-string v9, "modificationDate, position"

    .line 447
    .restart local v9    # "order":Ljava/lang/String;
    const/16 v0, 0x70

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    move-object v7, v9

    goto/16 :goto_0

    .line 470
    .end local v9    # "order":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x7c

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    .line 473
    :goto_2
    return v0

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x7d

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    goto :goto_2

    .line 432
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updateItem(JLjava/lang/String;DLjava/lang/String;)I
    .locals 9

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v0

    .line 256
    const-string v1, "_id=?"

    const/16 v2, 0x30

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 257
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 259
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0x32

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 260
    const-string v4, "name"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x33

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 261
    const-string v4, "quantity"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/16 v4, 0x34

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 262
    const-string v4, "quantityUnit"

    invoke-virtual {v3, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x35

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 263
    const-string v4, "modificationDate"

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x36

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 265
    const-string v4, "modifiedByIdCloud"

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentUserIdCloud()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x37

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 267
    const-string v4, "checked"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x38

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 269
    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "items"

    invoke-virtual {v4, v5, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/16 v1, 0x39

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 272
    invoke-virtual {p0, p1, p2}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getShoppingListIdBasedOnItemId(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->updateShoppingList(JJLjava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v1, 0x3a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return v8
.end method

.method public updateItemPosition(JI)I
    .locals 9

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v1

    .line 542
    const-string v2, "_id=?"

    const/16 v3, 0x8f

    aput-boolean v7, v1, v3

    .line 543
    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x90

    aput-boolean v7, v1, v4

    .line 545
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/16 v5, 0x91

    aput-boolean v7, v1, v5

    .line 546
    const-string v5, "position"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v5, 0x92

    aput-boolean v7, v1, v5

    .line 550
    const-string v5, "modifiedByIdCloud"

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentUserIdCloud()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x93

    aput-boolean v7, v1, v5

    .line 553
    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "items"

    invoke-virtual {v5, v6, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 554
    .local v0, "result":I
    const/16 v2, 0x94

    aput-boolean v7, v1, v2

    return v0
.end method

.method public updateShoppingList(JJLjava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->$jacocoInit()[Z

    move-result-object v2

    .line 165
    const-string v3, "_id=?"

    const/16 v4, 0x12

    aput-boolean v8, v2, v4

    .line 166
    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x13

    aput-boolean v8, v2, v5

    .line 168
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-wide/16 v6, -0x1

    cmp-long v5, p3, v6

    if-nez v5, :cond_0

    const/16 v5, 0x14

    aput-boolean v8, v2, v5

    .line 171
    :goto_0
    if-nez p5, :cond_1

    const/16 v5, 0x17

    aput-boolean v8, v2, v5

    .line 172
    :goto_1
    if-nez p6, :cond_2

    const/16 v5, 0x19

    aput-boolean v8, v2, v5

    .line 176
    :goto_2
    const-string v5, "modificationDate"

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v5, 0x1c

    aput-boolean v8, v2, v5

    .line 178
    const-string v5, "modifiedByIdCloud"

    invoke-virtual {p0}, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->getCurrentUserIdCloud()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1d

    aput-boolean v8, v2, v5

    .line 181
    iget-object v5, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/DbUtilities;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "shoppingLists"

    invoke-virtual {v5, v6, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, "result":I
    const/16 v3, 0x1e

    aput-boolean v8, v2, v3

    return v1

    .line 169
    .end local v1    # "result":I
    :cond_0
    const/16 v5, 0x15

    aput-boolean v8, v2, v5

    .line 170
    const-string v5, "idCloud"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v5, 0x16

    aput-boolean v8, v2, v5

    goto :goto_0

    .line 171
    :cond_1
    const-string v5, "name"

    invoke-virtual {v0, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x18

    aput-boolean v8, v2, v5

    goto :goto_1

    .line 172
    :cond_2
    const/16 v5, 0x1a

    aput-boolean v8, v2, v5

    .line 173
    const-string v5, "description"

    invoke-virtual {v0, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1b

    aput-boolean v8, v2, v5

    goto :goto_2
.end method
