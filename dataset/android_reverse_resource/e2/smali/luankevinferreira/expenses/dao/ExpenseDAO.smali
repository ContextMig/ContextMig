.class public Lluankevinferreira/expenses/dao/ExpenseDAO;
.super Ljava/lang/Object;
.source "ExpenseDAO.java"

# interfaces
.implements Lluankevinferreira/expenses/dao/Approachable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lluankevinferreira/expenses/dao/Approachable",
        "<",
        "Lluankevinferreira/expenses/domain/Expense;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final NO_FILTER_BR:Ljava/lang/String; = "* TODOS *"

.field public static final NO_FILTER_EN:Ljava/lang/String; = "* ALL *"

.field private static final QUERY_ERROR:I = -0x1

.field private static final ZERO:I


# instance fields
.field private databaseManager:Lluankevinferreira/expenses/database/DatabaseManager;

.field private dateUtils:Lluankevinferreira/expenses/util/DateUtils;

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x519669354c361fcdL    # 1.0884273327134908E85

    const-string v2, "luankevinferreira/expenses/dao/ExpenseDAO"

    const/16 v3, 0x5f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 41
    new-instance v1, Lluankevinferreira/expenses/database/DatabaseManager;

    invoke-direct {v1, p1}, Lluankevinferreira/expenses/database/DatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->databaseManager:Lluankevinferreira/expenses/database/DatabaseManager;

    aput-boolean v3, v0, v3

    .line 42
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 43
    new-instance v1, Lluankevinferreira/expenses/util/DateUtils;

    invoke-direct {v1}, Lluankevinferreira/expenses/util/DateUtils;-><init>()V

    iput-object v1, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->dateUtils:Lluankevinferreira/expenses/util/DateUtils;

    .line 44
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method private getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iget-object v1, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 50
    :goto_0
    iget-object v1, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    return-object v1

    .line 47
    :cond_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 48
    iget-object v1, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->databaseManager:Lluankevinferreira/expenses/database/DatabaseManager;

    invoke-virtual {v1}, Lluankevinferreira/expenses/database/DatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->databaseManager:Lluankevinferreira/expenses/database/DatabaseManager;

    invoke-virtual {v1}, Lluankevinferreira/expenses/database/DatabaseManager;->close()V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    check-cast p1, Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {p0, p1}, Lluankevinferreira/expenses/dao/ExpenseDAO;->delete(Lluankevinferreira/expenses/domain/Expense;)Z

    move-result v1

    const/16 v2, 0x5c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public delete(Lluankevinferreira/expenses/domain/Expense;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v3

    .line 72
    const-string v4, "_id = ?"

    const/16 v5, 0x11

    aput-boolean v2, v3, v5

    .line 73
    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/16 v6, 0x12

    aput-boolean v2, v3, v6

    .line 74
    invoke-direct {p0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "expense"

    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "removed":I
    if-lez v0, :cond_0

    const/16 v1, 0x13

    aput-boolean v2, v3, v1

    move v1, v2

    :goto_0
    const/16 v4, 0x15

    aput-boolean v2, v3, v4

    return v1

    :cond_0
    const/16 v4, 0x14

    aput-boolean v2, v3, v4

    goto :goto_0
.end method

.method deleteAll()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v2

    .line 202
    invoke-direct {p0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "expense"

    const/4 v5, 0x0

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/16 v0, 0x59

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x5b

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/16 v3, 0x5a

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    check-cast p1, Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {p0, p1}, Lluankevinferreira/expenses/dao/ExpenseDAO;->insert(Lluankevinferreira/expenses/domain/Expense;)Z

    move-result v1

    const/16 v2, 0x5e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public insert(Lluankevinferreira/expenses/domain/Expense;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v2

    .line 61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    .line 62
    const-string v3, "value"

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    .line 63
    const-string v3, "expense_date"

    iget-object v4, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->dateUtils:Lluankevinferreira/expenses/util/DateUtils;

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lluankevinferreira/expenses/util/DateUtils;->getStringDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xb

    aput-boolean v1, v2, v3

    .line 64
    const-string v3, "description"

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    .line 65
    const-string v3, "expense_type"

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xd

    aput-boolean v1, v2, v3

    .line 67
    invoke-direct {p0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "expense"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x10

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xf

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public select(Ljava/util/Date;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lluankevinferreira/expenses/domain/Expense;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v3

    .line 92
    iget-object v4, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->dateUtils:Lluankevinferreira/expenses/util/DateUtils;

    invoke-virtual {v4}, Lluankevinferreira/expenses/util/DateUtils;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v4

    const/16 v5, 0x1f

    aput-boolean v10, v3, v5

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0x20

    aput-boolean v10, v3, v6

    .line 94
    invoke-virtual {v5, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v6, 0x21

    aput-boolean v10, v3, v6

    .line 96
    iget-object v6, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x22

    aput-boolean v10, v3, v7

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "strMonth":Ljava/lang/String;
    const-string v0, "SELECT * FROM expense WHERE strftime(\'%m%Y\', expense_date) = ?"

    .line 100
    .local v0, "query":Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    aput-object v1, v2, v11

    const/16 v5, 0x23

    aput-boolean v10, v3, v5

    .line 102
    if-nez p2, :cond_0

    const/16 v5, 0x24

    aput-boolean v10, v3, v5

    .line 109
    :goto_0
    invoke-direct {p0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const/16 v6, 0x2b

    aput-boolean v10, v3, v6

    .line 111
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x2c

    aput-boolean v10, v3, v7

    .line 113
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v4, 0x2d

    aput-boolean v10, v3, v4

    .line 125
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 126
    const/16 v4, 0x38

    aput-boolean v10, v3, v4

    return-object v6

    .line 102
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x25

    aput-boolean v10, v3, v5

    goto :goto_0

    :cond_1
    const/16 v5, 0x26

    aput-boolean v10, v3, v5

    .line 103
    const-string v5, "* TODOS *"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x27

    aput-boolean v10, v3, v5

    goto :goto_0

    :cond_2
    const-string v5, "* ALL *"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x28

    aput-boolean v10, v3, v5

    goto :goto_0

    :cond_3
    const/16 v5, 0x29

    aput-boolean v10, v3, v5

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND expense_type = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-array v2, v12, [Ljava/lang/String;

    aput-object v1, v2, v11

    aput-object p2, v2, v10

    .local v2, "whereArgs":[Ljava/lang/String;
    const/16 v5, 0x2a

    aput-boolean v10, v3, v5

    goto :goto_0

    .line 113
    .end local v2    # "whereArgs":[Ljava/lang/String;
    :cond_4
    const/16 v7, 0x2e

    aput-boolean v10, v3, v7

    .line 115
    :goto_2
    new-instance v7, Lluankevinferreira/expenses/domain/Expense;

    invoke-direct {v7}, Lluankevinferreira/expenses/domain/Expense;-><init>()V

    const/16 v8, 0x2f

    aput-boolean v10, v3, v8

    .line 116
    const-string v8, "_id"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lluankevinferreira/expenses/domain/Expense;->setId(J)V

    const/16 v8, 0x30

    aput-boolean v10, v3, v8

    .line 117
    const-string v8, "description"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lluankevinferreira/expenses/domain/Expense;->setDescription(Ljava/lang/String;)V

    const/16 v8, 0x31

    aput-boolean v10, v3, v8

    .line 118
    const-string v8, "value"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lluankevinferreira/expenses/domain/Expense;->setValue(D)V

    const/16 v8, 0x32

    aput-boolean v10, v3, v8

    .line 119
    const-string v8, "expense_date"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Lluankevinferreira/expenses/domain/Expense;->setDate(Ljava/util/Date;)V

    const/16 v8, 0x33

    aput-boolean v10, v3, v8

    .line 120
    const-string v8, "expense_type"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lluankevinferreira/expenses/domain/Expense;->setType(Ljava/lang/String;)V

    const/16 v8, 0x34

    aput-boolean v10, v3, v8

    .line 121
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x35

    aput-boolean v10, v3, v7

    .line 122
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x36

    aput-boolean v10, v3, v7

    goto :goto_2

    :cond_5
    const/16 v4, 0x37

    aput-boolean v10, v3, v4

    goto/16 :goto_1
.end method

.method public selectTotalMonth(Ljava/util/Date;Ljava/lang/String;)D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v6

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v8, 0x39

    const/4 v9, 0x1

    aput-boolean v9, v6, v8

    .line 131
    invoke-virtual {v7, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v8, 0x3a

    const/4 v9, 0x1

    aput-boolean v9, v6, v8

    .line 133
    iget-object v8, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3b

    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "actualMonth":Ljava/lang/String;
    const-string v2, "SELECT SUM(value) FROM expense WHERE strftime(\'%m%Y\', expense_date) = ?"

    .line 139
    .local v2, "query":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/16 v7, 0x3c

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 141
    if-nez p2, :cond_0

    const/16 v7, 0x3d

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 148
    :goto_0
    invoke-direct {p0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 150
    .local v1, "cursor":Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    const/16 v7, 0x44

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x45

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 157
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    const/16 v7, 0x4a

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    return-wide v4

    .line 141
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x3e

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto :goto_0

    :cond_1
    const/16 v7, 0x3f

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 142
    const-string v7, "* TODOS *"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x40

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto :goto_0

    :cond_2
    const-string v7, "* ALL *"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x41

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto :goto_0

    :cond_3
    const/16 v7, 0x42

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND expense_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v7, 0x1

    aput-object p2, v3, v7

    .local v3, "whereArgs":[Ljava/lang/String;
    const/16 v7, 0x43

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto :goto_0

    .line 152
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/16 v7, 0x46

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 154
    :goto_2
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    add-double/2addr v4, v8

    .local v4, "total":D
    const/16 v7, 0x47

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x48

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto :goto_2

    :cond_5
    const/16 v7, 0x49

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    goto :goto_1
.end method

.method public selectTypesExpenses()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lluankevinferreira/expenses/domain/Type;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v5

    .line 169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x4b

    aput-boolean v12, v5, v7

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v8, 0x4c

    aput-boolean v12, v5, v8

    .line 173
    iget-object v8, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->decimalFormat:Ljava/text/DecimalFormat;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x4d

    aput-boolean v12, v5, v9

    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "strMonth":Ljava/lang/String;
    const-string v2, "SELECT DISTINCT expense_type FROM expense WHERE strftime(\'%m%Y\', expense_date) = ?"

    .line 179
    .local v2, "query":Ljava/lang/String;
    new-array v7, v12, [Ljava/lang/String;

    aput-object v3, v7, v4

    const/16 v8, 0x4e

    aput-boolean v12, v5, v8

    .line 181
    invoke-direct {p0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v7, 0x4f

    aput-boolean v12, v5, v7

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v4, 0x50

    aput-boolean v12, v5, v4

    .line 193
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    const/16 v4, 0x58

    aput-boolean v12, v5, v4

    return-object v6

    .line 184
    :cond_0
    const/16 v7, 0x51

    aput-boolean v12, v5, v7

    move v1, v4

    .line 186
    :goto_1
    new-instance v7, Lluankevinferreira/expenses/domain/Type;

    invoke-direct {v7}, Lluankevinferreira/expenses/domain/Type;-><init>()V

    const/16 v8, 0x52

    aput-boolean v12, v5, v8

    .line 187
    add-int/lit8 v1, v1, 0x1

    .local v1, "index":I
    invoke-virtual {v7, v1}, Lluankevinferreira/expenses/domain/Type;->setId(I)V

    const/16 v8, 0x53

    aput-boolean v12, v5, v8

    .line 188
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lluankevinferreira/expenses/domain/Type;->setName(Ljava/lang/String;)V

    const/16 v8, 0x54

    aput-boolean v12, v5, v8

    .line 190
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x55

    aput-boolean v12, v5, v7

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x56

    aput-boolean v12, v5, v7

    goto :goto_1

    :cond_1
    const/16 v4, 0x57

    aput-boolean v12, v5, v4

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    check-cast p1, Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {p0, p1}, Lluankevinferreira/expenses/dao/ExpenseDAO;->update(Lluankevinferreira/expenses/domain/Expense;)Z

    move-result v1

    const/16 v2, 0x5d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public update(Lluankevinferreira/expenses/domain/Expense;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lluankevinferreira/expenses/dao/ExpenseDAO;->$jacocoInit()[Z

    move-result-object v2

    .line 80
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0x16

    aput-boolean v1, v2, v4

    .line 81
    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v5, 0x17

    aput-boolean v1, v2, v5

    .line 83
    const-string v5, "value"

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const/16 v5, 0x18

    aput-boolean v1, v2, v5

    .line 84
    const-string v5, "expense_date"

    iget-object v6, p0, Lluankevinferreira/expenses/dao/ExpenseDAO;->dateUtils:Lluankevinferreira/expenses/util/DateUtils;

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Lluankevinferreira/expenses/util/DateUtils;->getStringDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x19

    aput-boolean v1, v2, v5

    .line 85
    const-string v5, "description"

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1a

    aput-boolean v1, v2, v5

    .line 86
    const-string v5, "expense_type"

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1b

    aput-boolean v1, v2, v5

    .line 88
    invoke-direct {p0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->getSqLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "expense"

    const-string v7, "_id = ?"

    invoke-virtual {v5, v6, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/16 v0, 0x1c

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x1e

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/16 v3, 0x1d

    aput-boolean v1, v2, v3

    goto :goto_0
.end method
