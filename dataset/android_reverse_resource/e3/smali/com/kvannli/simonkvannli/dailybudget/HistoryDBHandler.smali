.class public Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HistoryDBHandler.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final COLUMN_DATE_TIME_TEXT:Ljava/lang/String; = "datetime"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_MINUS:Ljava/lang/String; = "minus"

.field public static final COLUMN_NOTE:Ljava/lang/String; = "note"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final DATABASE_NAME:Ljava/lang/String; = "history.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "historyTable"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3d7202ca3ed9755eL    # -4.121670722769329E12

    const-string v2, "com/kvannli/simonkvannli/dailybudget/HistoryDBHandler"

    const/16 v3, 0xa9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    const-string v1, "history.db"

    invoke-direct {p0, p1, v1, p3, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public addHistory(Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 68
    const-string v2, "note"

    invoke-virtual {p1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_historyNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-boolean v6, v0, v2

    .line 69
    const-string v2, "value"

    invoke-virtual {p1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_value()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/16 v2, 0x9

    aput-boolean v6, v0, v2

    .line 70
    const-string v2, "minus"

    invoke-virtual {p1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->is_minus()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 v2, 0xa

    aput-boolean v6, v0, v2

    .line 71
    const-string v2, "datetime"

    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getCurrentTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-boolean v6, v0, v2

    .line 73
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v3, 0xc

    aput-boolean v6, v0, v3

    .line 74
    const-string v3, "historyTable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    .line 75
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    return-void
.end method

.method public changeRowBasedOnId(ILjava/lang/String;D)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/16 v2, 0x20

    aput-boolean v6, v0, v2

    .line 107
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Changing row based on id!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-boolean v6, v0, v2

    .line 110
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x22

    aput-boolean v6, v0, v3

    .line 111
    const-string v3, "note"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x23

    aput-boolean v6, v0, v3

    .line 112
    const-string v3, "value"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/16 v3, 0x24

    aput-boolean v6, v0, v3

    .line 113
    const-string v3, "historyTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v2, 0x25

    aput-boolean v6, v0, v2

    .line 115
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 117
    const/16 v1, 0x26

    aput-boolean v6, v0, v1

    return-void
.end method

.method public databaseToStringOnlyMinus()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v7

    .line 311
    const-string v1, ""

    const/16 v1, 0x99

    aput-boolean v10, v7, v1

    .line 312
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 313
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM historyTable WHERE 1 AND minus= 1 ORDER BY datetime DESC"

    const/16 v2, 0x9a

    aput-boolean v10, v7, v2

    .line 315
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/16 v1, 0x9b

    aput-boolean v10, v7, v1

    .line 316
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x9c

    aput-boolean v10, v7, v1

    .line 318
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x9d

    aput-boolean v10, v7, v1

    .line 320
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x9e

    aput-boolean v10, v7, v1

    .line 321
    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x9f

    aput-boolean v10, v7, v1

    .line 330
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v1, 0xa7

    aput-boolean v10, v7, v1

    goto :goto_0

    .line 321
    :cond_0
    const/16 v1, 0xa0

    aput-boolean v10, v7, v1

    .line 322
    const-string v1, "note"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0xa1

    aput-boolean v10, v7, v1

    .line 323
    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/16 v1, 0xa2

    aput-boolean v10, v7, v1

    .line 324
    const-string v1, "minus"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/16 v1, 0xa3

    aput-boolean v10, v7, v1

    .line 325
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v1, 0xa4

    aput-boolean v10, v7, v1

    .line 326
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-direct/range {v1 .. v6}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;-><init>(ILjava/lang/String;DZ)V

    const/16 v2, 0xa5

    aput-boolean v10, v7, v2

    .line 327
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa6

    aput-boolean v10, v7, v1

    goto :goto_1

    .line 332
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 333
    const/16 v1, 0xa8

    aput-boolean v10, v7, v1

    return-object v9
.end method

.method public deleteHistory(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/16 v2, 0xf

    aput-boolean v4, v0, v2

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM historyTable WHERE _id =\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-boolean v4, v0, v2

    .line 82
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 84
    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    return-void
.end method

.method public get30HistoryObjects()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v9

    .line 218
    const-string v1, ""

    const/16 v1, 0x60

    aput-boolean v8, v9, v1

    .line 219
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 220
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM historyTable WHERE 1 ORDER BY datetime DESC LIMIT 30"

    const/16 v2, 0x61

    aput-boolean v8, v9, v2

    .line 222
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v1, 0x62

    aput-boolean v8, v9, v1

    .line 223
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x63

    aput-boolean v8, v9, v1

    .line 225
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x64

    aput-boolean v8, v9, v1

    .line 227
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x65

    aput-boolean v8, v9, v1

    .line 228
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x66

    aput-boolean v8, v9, v1

    .line 239
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v1, 0x71

    aput-boolean v8, v9, v1

    goto :goto_0

    .line 228
    :cond_0
    const/16 v1, 0x67

    aput-boolean v8, v9, v1

    .line 230
    const-string v1, "note"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x68

    aput-boolean v8, v9, v1

    .line 231
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/16 v1, 0x69

    aput-boolean v8, v9, v1

    .line 232
    const-string v1, "minus"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6a

    aput-boolean v8, v9, v1

    move v6, v8

    :goto_2
    const/16 v1, 0x6c

    aput-boolean v8, v9, v1

    .line 233
    const-string v1, "datetime"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x6d

    aput-boolean v8, v9, v1

    .line 234
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v1, 0x6e

    aput-boolean v8, v9, v1

    .line 235
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-direct/range {v1 .. v7}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;-><init>(ILjava/lang/String;DZLjava/lang/String;)V

    const/16 v2, 0x6f

    aput-boolean v8, v9, v2

    .line 236
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x70

    aput-boolean v8, v9, v1

    goto :goto_1

    .line 232
    :cond_1
    const/4 v6, 0x0

    const/16 v1, 0x6b

    aput-boolean v8, v9, v1

    goto :goto_2

    .line 241
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 243
    const/16 v1, 0x72

    aput-boolean v8, v9, v1

    return-object v11
.end method

.method public get30HistoryObjectsMinus()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v9

    .line 280
    const-string v1, ""

    const/16 v1, 0x86

    aput-boolean v8, v9, v1

    .line 281
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 282
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM historyTable WHERE 1 AND minus= 1 ORDER BY datetime DESC LIMIT 30"

    const/16 v2, 0x87

    aput-boolean v8, v9, v2

    .line 284
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v1, 0x88

    aput-boolean v8, v9, v1

    .line 285
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x89

    aput-boolean v8, v9, v1

    .line 287
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8a

    aput-boolean v8, v9, v1

    .line 289
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x8b

    aput-boolean v8, v9, v1

    .line 290
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x8c

    aput-boolean v8, v9, v1

    .line 301
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v1, 0x97

    aput-boolean v8, v9, v1

    goto :goto_0

    .line 290
    :cond_0
    const/16 v1, 0x8d

    aput-boolean v8, v9, v1

    .line 292
    const-string v1, "note"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x8e

    aput-boolean v8, v9, v1

    .line 293
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/16 v1, 0x8f

    aput-boolean v8, v9, v1

    .line 294
    const-string v1, "minus"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x90

    aput-boolean v8, v9, v1

    move v6, v8

    :goto_2
    const/16 v1, 0x92

    aput-boolean v8, v9, v1

    .line 295
    const-string v1, "datetime"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x93

    aput-boolean v8, v9, v1

    .line 296
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v1, 0x94

    aput-boolean v8, v9, v1

    .line 297
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-direct/range {v1 .. v7}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;-><init>(ILjava/lang/String;DZLjava/lang/String;)V

    const/16 v2, 0x95

    aput-boolean v8, v9, v2

    .line 298
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x96

    aput-boolean v8, v9, v1

    goto :goto_1

    .line 294
    :cond_1
    const/4 v6, 0x0

    const/16 v1, 0x91

    aput-boolean v8, v9, v1

    goto :goto_2

    .line 303
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 305
    const/16 v1, 0x98

    aput-boolean v8, v9, v1

    return-object v11
.end method

.method public get30HistoryObjectsPlus()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v9

    .line 249
    const-string v1, ""

    const/16 v1, 0x73

    aput-boolean v8, v9, v1

    .line 250
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM historyTable WHERE 1 AND minus= 0 ORDER BY datetime DESC LIMIT 30"

    const/16 v2, 0x74

    aput-boolean v8, v9, v2

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v1, 0x75

    aput-boolean v8, v9, v1

    .line 254
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x76

    aput-boolean v8, v9, v1

    .line 256
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x77

    aput-boolean v8, v9, v1

    .line 258
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x78

    aput-boolean v8, v9, v1

    .line 259
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x79

    aput-boolean v8, v9, v1

    .line 270
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v1, 0x84

    aput-boolean v8, v9, v1

    goto :goto_0

    .line 259
    :cond_0
    const/16 v1, 0x7a

    aput-boolean v8, v9, v1

    .line 261
    const-string v1, "note"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x7b

    aput-boolean v8, v9, v1

    .line 262
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/16 v1, 0x7c

    aput-boolean v8, v9, v1

    .line 263
    const-string v1, "minus"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x7d

    aput-boolean v8, v9, v1

    move v6, v8

    :goto_2
    const/16 v1, 0x7f

    aput-boolean v8, v9, v1

    .line 264
    const-string v1, "datetime"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x80

    aput-boolean v8, v9, v1

    .line 265
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v1, 0x81

    aput-boolean v8, v9, v1

    .line 266
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-direct/range {v1 .. v7}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;-><init>(ILjava/lang/String;DZLjava/lang/String;)V

    const/16 v2, 0x82

    aput-boolean v8, v9, v2

    .line 267
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x83

    aput-boolean v8, v9, v1

    goto :goto_1

    .line 263
    :cond_1
    const/4 v6, 0x0

    const/16 v1, 0x7e

    aput-boolean v8, v9, v1

    goto :goto_2

    .line 272
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 274
    const/16 v1, 0x85

    aput-boolean v8, v9, v1

    return-object v11
.end method

.method public getAllHistoryObjects()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v9

    .line 122
    const-string v1, ""

    const/16 v1, 0x27

    aput-boolean v8, v9, v1

    .line 123
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM historyTable WHERE 1 ORDER BY datetime DESC"

    const/16 v2, 0x28

    aput-boolean v8, v9, v2

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v1, 0x29

    aput-boolean v8, v9, v1

    .line 127
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x2a

    aput-boolean v8, v9, v1

    .line 129
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2b

    aput-boolean v8, v9, v1

    .line 131
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2c

    aput-boolean v8, v9, v1

    .line 132
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    aput-boolean v8, v9, v1

    .line 143
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v1, 0x38

    aput-boolean v8, v9, v1

    goto :goto_0

    .line 132
    :cond_0
    const/16 v1, 0x2e

    aput-boolean v8, v9, v1

    .line 134
    const-string v1, "note"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x2f

    aput-boolean v8, v9, v1

    .line 135
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/16 v1, 0x30

    aput-boolean v8, v9, v1

    .line 136
    const-string v1, "minus"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x31

    aput-boolean v8, v9, v1

    move v6, v8

    :goto_2
    const/16 v1, 0x33

    aput-boolean v8, v9, v1

    .line 137
    const-string v1, "datetime"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x34

    aput-boolean v8, v9, v1

    .line 138
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v1, 0x35

    aput-boolean v8, v9, v1

    .line 139
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-direct/range {v1 .. v7}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;-><init>(ILjava/lang/String;DZLjava/lang/String;)V

    const/16 v2, 0x36

    aput-boolean v8, v9, v2

    .line 140
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x37

    aput-boolean v8, v9, v1

    goto :goto_1

    .line 136
    :cond_1
    const/4 v6, 0x0

    const/16 v1, 0x32

    aput-boolean v8, v9, v1

    goto :goto_2

    .line 145
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 147
    const/16 v1, 0x39

    aput-boolean v8, v9, v1

    return-object v11
.end method

.method public getAllHistoryObjectsMinus()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v9

    .line 186
    const-string v1, ""

    const/16 v1, 0x4d

    aput-boolean v8, v9, v1

    .line 187
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM historyTable WHERE 1 AND minus = 1 ORDER BY datetime DESC"

    const/16 v2, 0x4e

    aput-boolean v8, v9, v2

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v1, 0x4f

    aput-boolean v8, v9, v1

    .line 191
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x50

    aput-boolean v8, v9, v1

    .line 193
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x51

    aput-boolean v8, v9, v1

    .line 195
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x52

    aput-boolean v8, v9, v1

    .line 196
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x53

    aput-boolean v8, v9, v1

    .line 207
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v1, 0x5e

    aput-boolean v8, v9, v1

    goto :goto_0

    .line 196
    :cond_0
    const/16 v1, 0x54

    aput-boolean v8, v9, v1

    .line 198
    const-string v1, "note"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x55

    aput-boolean v8, v9, v1

    .line 199
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/16 v1, 0x56

    aput-boolean v8, v9, v1

    .line 200
    const-string v1, "minus"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x57

    aput-boolean v8, v9, v1

    move v6, v8

    :goto_2
    const/16 v1, 0x59

    aput-boolean v8, v9, v1

    .line 201
    const-string v1, "datetime"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x5a

    aput-boolean v8, v9, v1

    .line 202
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v1, 0x5b

    aput-boolean v8, v9, v1

    .line 203
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-direct/range {v1 .. v7}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;-><init>(ILjava/lang/String;DZLjava/lang/String;)V

    const/16 v2, 0x5c

    aput-boolean v8, v9, v2

    .line 204
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x5d

    aput-boolean v8, v9, v1

    goto :goto_1

    .line 200
    :cond_1
    const/4 v6, 0x0

    const/16 v1, 0x58

    aput-boolean v8, v9, v1

    goto :goto_2

    .line 209
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 211
    const/16 v1, 0x5f

    aput-boolean v8, v9, v1

    return-object v11
.end method

.method public getAllHistoryObjectsPlus()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v9

    .line 154
    const-string v1, ""

    const/16 v1, 0x3a

    aput-boolean v8, v9, v1

    .line 155
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 156
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM historyTable WHERE 1 AND minus = 0 ORDER BY datetime DESC"

    const/16 v2, 0x3b

    aput-boolean v8, v9, v2

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v1, 0x3c

    aput-boolean v8, v9, v1

    .line 159
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x3d

    aput-boolean v8, v9, v1

    .line 161
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x3e

    aput-boolean v8, v9, v1

    .line 163
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x3f

    aput-boolean v8, v9, v1

    .line 164
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x40

    aput-boolean v8, v9, v1

    .line 176
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v1, 0x4b

    aput-boolean v8, v9, v1

    goto :goto_0

    .line 164
    :cond_0
    const/16 v1, 0x41

    aput-boolean v8, v9, v1

    .line 166
    const-string v1, "note"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x42

    aput-boolean v8, v9, v1

    .line 167
    const-string v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/16 v1, 0x43

    aput-boolean v8, v9, v1

    .line 168
    const-string v1, "minus"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x44

    aput-boolean v8, v9, v1

    move v6, v8

    :goto_2
    const/16 v1, 0x46

    aput-boolean v8, v9, v1

    .line 169
    const-string v1, "datetime"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x47

    aput-boolean v8, v9, v1

    .line 170
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v1, 0x48

    aput-boolean v8, v9, v1

    .line 172
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-direct/range {v1 .. v7}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;-><init>(ILjava/lang/String;DZLjava/lang/String;)V

    const/16 v2, 0x49

    aput-boolean v8, v9, v2

    .line 173
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x4a

    aput-boolean v8, v9, v1

    goto :goto_1

    .line 168
    :cond_1
    const/4 v6, 0x0

    const/16 v1, 0x45

    aput-boolean v8, v9, v1

    goto :goto_2

    .line 178
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 180
    const/16 v1, 0x4c

    aput-boolean v8, v9, v1

    return-object v11
.end method

.method public getCurrentTimestamp()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v1

    .line 60
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 61
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "currentDateTime":Ljava/lang/String;
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    return-object v0
.end method

.method public getHistoryObject(I)Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;
    .locals 10

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v8

    .line 87
    const-string v1, ""

    const/16 v1, 0x12

    aput-boolean v0, v8, v1

    .line 88
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/16 v1, 0x13

    aput-boolean v0, v8, v1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM historyTable WHERE _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datetime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v0, v8, v2

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0x15

    aput-boolean v0, v8, v2

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v2, 0x16

    aput-boolean v0, v8, v2

    .line 94
    const-string v2, "note"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    aput-boolean v0, v8, v2

    .line 95
    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/16 v2, 0x18

    aput-boolean v0, v8, v2

    .line 96
    const-string v2, "minus"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    aput-boolean v0, v8, v2

    move v6, v0

    :goto_0
    const/16 v2, 0x1b

    aput-boolean v0, v8, v2

    .line 97
    const-string v2, "datetime"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x1c

    aput-boolean v0, v8, v2

    .line 98
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v1, 0x1d

    aput-boolean v0, v8, v1

    .line 99
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-direct/range {v1 .. v7}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;-><init>(ILjava/lang/String;DZLjava/lang/String;)V

    const/16 v2, 0x1e

    aput-boolean v0, v8, v2

    .line 101
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/16 v2, 0x1f

    aput-boolean v0, v8, v2

    return-object v1

    .line 96
    :cond_0
    const/4 v6, 0x0

    const/16 v2, 0x1a

    aput-boolean v0, v8, v2

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    const-string v1, "CREATE TABLE historyTable (_id INTEGER PRIMARY KEY AUTOINCREMENT, note TEXT,  value DOUBLE,  minus BOOLEAN, datetime TEXT )"

    aput-boolean v2, v0, v2

    .line 49
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    const-string v1, "DROP TABLE IF EXISTS historyTable"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 56
    invoke-virtual {p0, p1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method
