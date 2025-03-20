.class public Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ACCOUNT_ID_COLUMN:Ljava/lang/String; = "account_id"

.field public static final AMOUNT_COLUMN:Ljava/lang/String; = "amount"

.field public static final ARCHIVED_COLUMN:Ljava/lang/String; = "archived"

.field public static final CATEGORY_ID_COLUMN:Ljava/lang/String; = "category_id"

.field public static final COLOR_COLUMN:Ljava/lang/String; = "color"

.field public static final CREATED_AT_COLUMN:Ljava/lang/String; = "created_at"

.field public static final CURRENCY_COLUMN:Ljava/lang/String; = "currency"

.field public static final CUR_SUM_COLUMN:Ljava/lang/String; = "cur_sum"

.field public static final DB_NAME:Ljava/lang/String; = "database"

.field public static final DB_VERSION:I = 0x5

.field public static final DECIMALS_COLUMN:Ljava/lang/String; = "decimals"

.field public static final DECIMALS_FROM_COLUMN:Ljava/lang/String; = "decimals_from"

.field public static final DECIMALS_TO_COLUMN:Ljava/lang/String; = "decimals_to"

.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "Default"

.field public static final DEFAULT_ACCOUNT_CURRENCY:Ljava/lang/String; = "NON"

.field public static final FROM_ACCOUNT_ID_COLUMN:Ljava/lang/String; = "from_account_id"

.field public static final FROM_AMOUNT_COLUMN:Ljava/lang/String; = "from_amount"

.field public static final FROM_CURRENCY_COLUMN:Ljava/lang/String; = "from_currency"

.field public static final GOAL_COLUMN:Ljava/lang/String; = "goal"

.field public static final ID_COLUMN:Ljava/lang/String; = "id"

.field public static final NAME_COLUMN:Ljava/lang/String; = "name"

.field public static final PRICE_COLUMN:Ljava/lang/String; = "price"

.field public static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final TABLE_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final TABLE_RATES:Ljava/lang/String; = "rates"

.field public static final TABLE_RECORDS:Ljava/lang/String; = "records"

.field public static final TABLE_TRANSFERS:Ljava/lang/String; = "transfers"

.field public static final TIME_COLUMN:Ljava/lang/String; = "time"

.field public static final TITLE_COLUMN:Ljava/lang/String; = "title"

.field public static final TO_ACCOUNT_ID_COLUMN:Ljava/lang/String; = "to_account_id"

.field public static final TO_AMOUNT_COLUMN:Ljava/lang/String; = "to_amount"

.field public static final TO_CURRENCY_COLUMN:Ljava/lang/String; = "to_currency"

.field public static final TYPE_COLUMN:Ljava/lang/String; = "type"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x70c2ff3594fde6beL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/repo/DbHelper"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    const-string/jumbo v1, "database"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 64
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createDbVersion1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 165
    const-string/jumbo v1, "CREATE TABLE records(id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,type INTEGER,title TEXT,category_id INTEGER,price INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "CREATE TABLE categories(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createDbVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 180
    const-string/jumbo v1, "CREATE TABLE records(id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,type INTEGER,title TEXT,category_id INTEGER,price INTEGER,account_id INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v1, "CREATE TABLE categories(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "CREATE TABLE accounts(id INTEGER PRIMARY KEY AUTOINCREMENT,created_at INTEGER,title TEXT,cur_sum INTEGER,currency TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "CREATE TABLE transfers(id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,from_account_id INTEGER,to_account_id INTEGER,from_amount INTEGER,to_amount INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->insertDefaultAccount(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 209
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createDbVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 213
    const-string/jumbo v1, "CREATE TABLE records(id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,type INTEGER,title TEXT,category_id INTEGER,price INTEGER,account_id INTEGER,currency TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v1, "CREATE TABLE categories(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v1, "CREATE TABLE accounts(id INTEGER PRIMARY KEY AUTOINCREMENT,created_at INTEGER,title TEXT,cur_sum INTEGER,currency TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "CREATE TABLE transfers(id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,from_account_id INTEGER,to_account_id INTEGER,from_amount INTEGER,to_amount INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->createRatesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->insertDefaultAccount(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 245
    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createDbVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 287
    const-string/jumbo v1, "CREATE TABLE records(id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,type INTEGER,title TEXT,category_id INTEGER,price INTEGER,account_id INTEGER,currency TEXT,decimals INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v1, "CREATE TABLE categories(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "CREATE TABLE accounts(id INTEGER PRIMARY KEY AUTOINCREMENT,created_at INTEGER,title TEXT,cur_sum INTEGER,currency TEXT,decimals INTEGER,goal REAL,archived INTEGER,color INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v1, "CREATE TABLE transfers(id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,from_account_id INTEGER,to_account_id INTEGER,from_amount INTEGER,to_amount INTEGER,decimals_from INTEGER,decimals_to INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->createRatesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 325
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->insertDefaultAccount(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 326
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createRatesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 329
    const-string/jumbo v1, "CREATE TABLE rates(id INTEGER PRIMARY KEY AUTOINCREMENT,created_at INTEGER,from_currency INTEGER,to_currency INTEGER,amount REAL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private insertDefaultAccount(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 339
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "title"

    const-string/jumbo v3, "Default"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v2, "cur_sum"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string/jumbo v2, "currency"

    const-string/jumbo v3, "NON"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v2, "created_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    const-string/jumbo v2, "accounts"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const/16 v4, 0x10

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    return-wide v2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->createDbVersion5(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 77
    if-lt p2, v4, :cond_0

    aput-boolean v7, v1, v4

    .line 110
    .local v0, "contentValues":Landroid/content/ContentValues;
    .local v2, "id":J
    :goto_0
    if-lt p2, v8, :cond_1

    aput-boolean v7, v1, v9

    .line 122
    :goto_1
    if-lt p2, v9, :cond_2

    const/4 v4, 0x6

    aput-boolean v7, v1, v4

    .line 143
    :goto_2
    if-lt p2, v10, :cond_3

    const/16 v4, 0x8

    aput-boolean v7, v1, v4

    .line 161
    :goto_3
    const/16 v4, 0xa

    aput-boolean v7, v1, v4

    return-void

    .line 78
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "id":J
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 80
    const-string/jumbo v4, "CREATE TABLE accounts(id INTEGER PRIMARY KEY AUTOINCREMENT,created_at INTEGER,title TEXT,cur_sum INTEGER,currency TEXT );"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v4, "ALTER TABLE records ADD COLUMN account_id INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v4, "CREATE TABLE transfers(id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER,from_account_id INTEGER,to_account_id INTEGER,from_amount INTEGER,to_amount INTEGER);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->insertDefaultAccount(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    .line 102
    .restart local v2    # "id":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "account_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    const-string/jumbo v4, "records"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 107
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    aput-boolean v7, v1, v8

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 113
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/DbHelper;->createRatesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 116
    const-string/jumbo v4, "ALTER TABLE records ADD COLUMN currency INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    aput-boolean v7, v1, v10

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 126
    const-string/jumbo v4, "ALTER TABLE records ADD COLUMN decimals INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v4, "ALTER TABLE accounts ADD COLUMN decimals INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v4, "ALTER TABLE transfers ADD COLUMN decimals_from INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v4, "ALTER TABLE transfers ADD COLUMN decimals_to INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 140
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v4, 0x7

    aput-boolean v7, v1, v4

    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 147
    const-string/jumbo v4, "ALTER TABLE accounts ADD COLUMN goal REAL;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v4, "ALTER TABLE accounts ADD COLUMN archived INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v4, "ALTER TABLE accounts ADD COLUMN color INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 159
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/16 v4, 0x9

    aput-boolean v7, v1, v4

    goto/16 :goto_3
.end method
