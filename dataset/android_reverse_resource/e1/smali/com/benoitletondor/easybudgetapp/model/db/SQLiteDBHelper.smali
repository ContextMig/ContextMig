.class public final Lcom/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteDBHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field protected static final COLUMN_EXPENSE_AMOUNT:Ljava/lang/String; = "amount"

.field protected static final COLUMN_EXPENSE_DATE:Ljava/lang/String; = "date"

.field protected static final COLUMN_EXPENSE_DB_ID:Ljava/lang/String; = "_expense_id"

.field protected static final COLUMN_EXPENSE_RECURRING_ID:Ljava/lang/String; = "monthly_id"

.field protected static final COLUMN_EXPENSE_TITLE:Ljava/lang/String; = "title"

.field protected static final COLUMN_RECURRING_AMOUNT:Ljava/lang/String; = "amount"

.field protected static final COLUMN_RECURRING_DB_ID:Ljava/lang/String; = "_expense_id"

.field protected static final COLUMN_RECURRING_MODIFIED:Ljava/lang/String; = "modified"

.field protected static final COLUMN_RECURRING_RECURRING_DATE:Ljava/lang/String; = "recurringDate"

.field protected static final COLUMN_RECURRING_TITLE:Ljava/lang/String; = "title"

.field protected static final COLUMN_RECURRING_TYPE:Ljava/lang/String; = "type"

.field private static final DATABASE_NAME:Ljava/lang/String; = "easybudget.db"

.field private static final DATABASE_VERSION:I = 0x3

.field protected static final TABLE_EXPENSE:Ljava/lang/String; = "expense"

.field protected static final TABLE_RECURRING_EXPENSE:Ljava/lang/String; = "monthlyexpense"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2fdb50f28933a2ffL    # -1.197510161087965E78

    const-string v2, "com/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    const-string v1, "easybudget.db"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    const-string v1, "create table expense(_expense_id integer primary key autoincrement, title text not null, amount integer not null, date integer not null, monthly_id integer null );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    .line 69
    const-string v1, "CREATE INDEX D_i on expense(date);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table monthlyexpense(_expense_id integer primary key autoincrement, title text not null, amount integer not null, modified integer not null, recurringDate integer not null, type text not null DEFAULT \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->MONTHLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 90
    :goto_0
    const/4 v1, 0x3

    if-lt p2, v1, :cond_1

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 94
    :goto_1
    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    return-void

    .line 84
    :cond_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 86
    const-string v1, "UPDATE expense SET amount = amount * 100"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 87
    const-string v1, "UPDATE monthlyexpense SET amount = amount * 100"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 90
    :cond_1
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE monthlyexpense ADD COLUMN type text not null DEFAULT \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->MONTHLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    goto :goto_1
.end method
