.class public final Lcom/benoitletondor/easybudgetapp/model/db/DB;
.super Ljava/lang/Object;
.source "DB.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final context:Landroid/content/Context;

.field private final database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x9520ee95a68dfd6L    # -4.714150349972949E263

    const-string v2, "com/benoitletondor/easybudgetapp/model/db/DB"

    const/16 v3, 0xe7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v2

    .line 48
    const-class v0, Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xe4

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$assertionsDisabled:Z

    const/16 v0, 0xe6

    aput-boolean v1, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xe5

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    aput-boolean v3, v0, v3

    .line 70
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 71
    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/db/SQLiteDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method private static ExpenseFromCursor(Landroid/database/Cursor;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Lcom/benoitletondor/easybudgetapp/model/Expense;
    .locals 11
    .param p0    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 648
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/Expense;

    const-string v2, "_expense_id"

    const/16 v3, 0xb7

    aput-boolean v10, v0, v3

    .line 650
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "title"

    const/16 v4, 0xb8

    aput-boolean v10, v0, v4

    .line 651
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "amount"

    const/16 v5, 0xb9

    aput-boolean v10, v0, v5

    .line 652
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    new-instance v6, Ljava/util/Date;

    const-string v7, "date"

    const/16 v8, 0xba

    aput-boolean v10, v0, v8

    .line 653
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/benoitletondor/easybudgetapp/model/Expense;-><init>(Ljava/lang/Long;Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)V

    .line 648
    const/16 v2, 0xbb

    aput-boolean v10, v0, v2

    return-object v1
.end method

.method private static generateContentValuesForExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Landroid/content/ContentValues;
    .locals 7
    .param p0    # Lcom/benoitletondor/easybudgetapp/model/Expense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 694
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0xc2

    aput-boolean v6, v0, v2

    .line 696
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getId()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0xc3

    aput-boolean v6, v0, v2

    .line 701
    :goto_0
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc6

    aput-boolean v6, v0, v2

    .line 702
    const-string v2, "date"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0xc7

    aput-boolean v6, v0, v2

    .line 703
    const-string v2, "amount"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getDBValueForDouble(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0xc8

    aput-boolean v6, v0, v2

    .line 705
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->isRecurring()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xc9

    aput-boolean v6, v0, v2

    .line 711
    :goto_1
    const/16 v2, 0xcf

    aput-boolean v6, v0, v2

    return-object v1

    .line 696
    :cond_0
    const/16 v2, 0xc4

    aput-boolean v6, v0, v2

    .line 698
    const-string v2, "_expense_id"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0xc5

    aput-boolean v6, v0, v2

    goto :goto_0

    .line 705
    :cond_1
    const/16 v2, 0xca

    aput-boolean v6, v0, v2

    .line 707
    sget-boolean v2, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$assertionsDisabled:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xcb

    aput-boolean v6, v0, v2

    .line 708
    :goto_2
    const-string v2, "monthly_id"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAssociatedRecurringExpense()Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v3

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0xce

    aput-boolean v6, v0, v2

    goto :goto_1

    .line 707
    :cond_2
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getAssociatedRecurringExpense()Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v2, 0xcc

    aput-boolean v6, v0, v2

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    const/16 v2, 0xcd

    aput-boolean v6, v0, v2

    throw v1
.end method

.method private static generateContentValuesForRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Landroid/content/ContentValues;
    .locals 6
    .param p0    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v2

    .line 745
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v0, 0xd9

    aput-boolean v1, v2, v0

    .line 747
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0xda

    aput-boolean v1, v2, v0

    .line 752
    :goto_0
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xdd

    aput-boolean v1, v2, v0

    .line 753
    const-string v0, "recurringDate"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getRecurringDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v0, 0xde

    aput-boolean v1, v2, v0

    .line 754
    const-string v0, "amount"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getDBValueForDouble(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v0, 0xdf

    aput-boolean v1, v2, v0

    .line 755
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getType()Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xe0

    aput-boolean v1, v2, v0

    .line 756
    const-string v4, "modified"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe1

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    const/16 v0, 0xe3

    aput-boolean v1, v2, v0

    return-object v3

    .line 747
    :cond_0
    const/16 v0, 0xdb

    aput-boolean v1, v2, v0

    .line 749
    const-string v0, "_expense_id"

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v0, 0xdc

    aput-boolean v1, v2, v0

    goto :goto_0

    .line 756
    :cond_1
    const/4 v0, 0x0

    const/16 v5, 0xe2

    aput-boolean v1, v2, v5

    goto :goto_1
.end method

.method private getRecurringExpenseForExpenseCursor(Landroid/database/Cursor;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
    .locals 8
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v4

    .line 667
    const/16 v5, 0xbc

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v4, v5

    .line 670
    const-string v5, "monthly_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 675
    .local v0, "recurringId":J
    const/16 v5, 0xbd

    aput-boolean v7, v4, v5

    .line 677
    .end local v0    # "recurringId":J
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/16 v2, 0xbf

    aput-boolean v7, v4, v2

    .line 679
    invoke-virtual {p0, v0, v1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->findRecurringExpenseForId(J)Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v2

    const/16 v3, 0xc0

    aput-boolean v7, v4, v3

    .line 682
    :goto_1
    return-object v2

    .line 672
    :catch_0
    move-exception v5

    const/16 v5, 0xbe

    aput-boolean v7, v4, v5

    move-wide v0, v2

    goto :goto_0

    .line 682
    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0xc1

    aput-boolean v7, v4, v3

    goto :goto_1
.end method

.method private static recurringExpenseFromCursor(Landroid/database/Cursor;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
    .locals 12
    .param p0    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v9

    .line 724
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    const-string v2, "_expense_id"

    const/16 v3, 0xd0

    aput-boolean v0, v9, v3

    .line 726
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "title"

    const/16 v4, 0xd1

    aput-boolean v0, v9, v4

    .line 727
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "amount"

    const/16 v5, 0xd2

    aput-boolean v0, v9, v5

    .line 728
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    new-instance v6, Ljava/util/Date;

    const-string v7, "recurringDate"

    const/16 v8, 0xd3

    aput-boolean v0, v9, v8

    .line 729
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v10, v7

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    const-string v7, "type"

    const/16 v8, 0xd4

    aput-boolean v0, v9, v8

    .line 730
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->valueOf(Ljava/lang/String;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    move-result-object v7

    const-string v8, "modified"

    const/16 v10, 0xd5

    aput-boolean v0, v9, v10

    .line 731
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v0, :cond_0

    const/16 v8, 0xd6

    aput-boolean v0, v9, v8

    move v8, v0

    :goto_0
    invoke-direct/range {v1 .. v8}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;-><init>(Ljava/lang/Long;Ljava/lang/String;DLjava/util/Date;Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;Z)V

    .line 724
    const/16 v2, 0xd8

    aput-boolean v0, v9, v2

    return-object v1

    .line 731
    :cond_0
    const/4 v8, 0x0

    const/16 v10, 0xd7

    aput-boolean v0, v9, v10

    goto :goto_0
.end method


# virtual methods
.method public addRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Z
    .locals 8
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v4

    .line 357
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "monthlyexpense"

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->generateContentValuesForRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 359
    .local v0, "id":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    const/16 v3, 0x54

    aput-boolean v2, v4, v3

    .line 361
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->setId(Ljava/lang/Long;)V

    .line 362
    const/16 v3, 0x55

    aput-boolean v2, v4, v3

    .line 365
    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    const/16 v5, 0x56

    aput-boolean v2, v4, v5

    move v2, v3

    goto :goto_0
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 87
    :goto_0
    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    return-void

    .line 83
    :catch_0
    move-exception v0

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 85
    const-string v2, "Error while closing SQLite DB"

    invoke-static {v2, v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method public deleteAllExpenseForRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Z
    .locals 7
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v2

    .line 436
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "expense"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "monthly_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x60

    aput-boolean v1, v2, v3

    move v0, v1

    .line 438
    .local v0, "deleted":Z
    :goto_0
    if-nez v0, :cond_1

    const/16 v3, 0x62

    aput-boolean v1, v2, v3

    .line 443
    :goto_1
    const/16 v3, 0x65

    aput-boolean v1, v2, v3

    return v0

    .line 436
    .end local v0    # "deleted":Z
    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x61

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 438
    .restart local v0    # "deleted":Z
    :cond_1
    const/16 v3, 0x63

    aput-boolean v1, v2, v3

    .line 440
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->wipeAll()V

    const/16 v3, 0x64

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public deleteAllExpenseForRecurringExpenseBeforeDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Z
    .locals 8
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v2

    .line 537
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "expense"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "monthly_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x86

    aput-boolean v1, v2, v3

    move v0, v1

    .line 539
    .local v0, "deleted":Z
    :goto_0
    if-nez v0, :cond_1

    const/16 v3, 0x88

    aput-boolean v1, v2, v3

    .line 544
    :goto_1
    const/16 v3, 0x8b

    aput-boolean v1, v2, v3

    return v0

    .line 537
    .end local v0    # "deleted":Z
    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x87

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 539
    .restart local v0    # "deleted":Z
    :cond_1
    const/16 v3, 0x89

    aput-boolean v1, v2, v3

    .line 541
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->wipeAll()V

    const/16 v3, 0x8a

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public deleteAllExpenseForRecurringExpenseFromDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Z
    .locals 8
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v2

    .line 485
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "expense"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "monthly_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x73

    aput-boolean v1, v2, v3

    move v0, v1

    .line 487
    .local v0, "deleted":Z
    :goto_0
    if-nez v0, :cond_1

    const/16 v3, 0x75

    aput-boolean v1, v2, v3

    .line 492
    :goto_1
    const/16 v3, 0x78

    aput-boolean v1, v2, v3

    return v0

    .line 485
    .end local v0    # "deleted":Z
    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x74

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 487
    .restart local v0    # "deleted":Z
    :cond_1
    const/16 v3, 0x76

    aput-boolean v1, v2, v3

    .line 489
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->wipeAll()V

    const/16 v3, 0x77

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public deleteExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z
    .locals 7
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/Expense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v2

    .line 417
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "expense"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_expense_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x5a

    aput-boolean v1, v2, v3

    move v0, v1

    .line 419
    .local v0, "delete":Z
    :goto_0
    if-nez v0, :cond_1

    const/16 v3, 0x5c

    aput-boolean v1, v2, v3

    .line 425
    :goto_1
    const/16 v3, 0x5f

    aput-boolean v1, v2, v3

    return v0

    .line 417
    .end local v0    # "delete":Z
    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x5b

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 419
    .restart local v0    # "delete":Z
    :cond_1
    const/16 v3, 0x5d

    aput-boolean v1, v2, v3

    .line 422
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v3

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->refreshForDay(Lcom/benoitletondor/easybudgetapp/model/db/DB;Ljava/util/Date;)V

    const/16 v3, 0x5e

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public deleteRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Z
    .locals 6
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v2

    .line 406
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "monthlyexpense"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_expense_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x57

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x59

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x58

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public findRecurringExpenseForId(J)Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
    .locals 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v11

    .line 616
    const/16 v0, 0xa7

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v11, v0

    .line 619
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "monthlyexpense"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_expense_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    const/16 v0, 0xa8

    const/4 v1, 0x1

    :try_start_1
    aput-boolean v1, v11, v0

    .line 621
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa9

    const/4 v1, 0x1

    aput-boolean v1, v11, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 630
    if-nez v9, :cond_2

    const/16 v0, 0xaf

    aput-boolean v12, v11, v0

    .line 626
    :goto_0
    const/16 v0, 0xb2

    aput-boolean v12, v11, v0

    move-object v0, v10

    :goto_1
    return-object v0

    .line 621
    :cond_0
    const/16 v0, 0xaa

    const/4 v1, 0x1

    :try_start_2
    aput-boolean v1, v11, v0

    .line 623
    invoke-static {v9}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->recurringExpenseFromCursor(Landroid/database/Cursor;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 630
    if-nez v9, :cond_1

    const/16 v1, 0xab

    aput-boolean v12, v11, v1

    .line 623
    :goto_2
    const/16 v1, 0xae

    aput-boolean v12, v11, v1

    goto :goto_1

    .line 630
    :cond_1
    const/16 v1, 0xac

    aput-boolean v12, v11, v1

    .line 632
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/16 v1, 0xad

    aput-boolean v12, v11, v1

    goto :goto_2

    .line 630
    :cond_2
    const/16 v0, 0xb0

    aput-boolean v12, v11, v0

    .line 632
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/16 v0, 0xb1

    aput-boolean v12, v11, v0

    goto :goto_0

    .line 630
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .restart local v9    # "cursor":Landroid/database/Cursor;
    :goto_3
    if-nez v10, :cond_3

    const/16 v1, 0xb3

    aput-boolean v12, v11, v1

    .line 634
    :goto_4
    const/16 v1, 0xb6

    aput-boolean v12, v11, v1

    throw v0

    .line 630
    :cond_3
    const/16 v1, 0xb4

    aput-boolean v12, v11, v1

    .line 632
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/16 v1, 0xb5

    aput-boolean v12, v11, v1

    goto :goto_4

    .line 630
    :catchall_1
    move-exception v0

    move-object v10, v9

    goto :goto_3
.end method

.method public getAllExpenseForRecurringExpense(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Ljava/util/List;
    .locals 13
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v10

    .line 454
    const/16 v0, 0x66

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v10, v0

    .line 457
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x67

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 459
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "expense"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monthly_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    const/16 v0, 0x68

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 460
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x69

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 462
    invoke-static {v9, p1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->ExpenseFromCursor(Landroid/database/Cursor;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Lcom/benoitletondor/easybudgetapp/model/Expense;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x6a

    const/4 v1, 0x1

    aput-boolean v1, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v0

    if-nez v9, :cond_2

    const/16 v1, 0x6f

    aput-boolean v12, v10, v1

    .line 473
    :goto_1
    const/16 v1, 0x72

    aput-boolean v12, v10, v1

    throw v0

    .line 469
    :cond_0
    if-nez v9, :cond_1

    const/16 v0, 0x6b

    aput-boolean v12, v10, v0

    .line 465
    :goto_2
    const/16 v0, 0x6e

    aput-boolean v12, v10, v0

    return-object v11

    .line 469
    :cond_1
    const/16 v0, 0x6c

    aput-boolean v12, v10, v0

    .line 471
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x6d

    aput-boolean v12, v10, v0

    goto :goto_2

    .line 469
    :cond_2
    const/16 v1, 0x70

    aput-boolean v12, v10, v1

    .line 471
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/16 v1, 0x71

    aput-boolean v12, v10, v1

    goto :goto_1
.end method

.method public getAllExpensesForRecurringExpenseBeforeDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Ljava/util/List;
    .locals 13
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v11

    .line 583
    invoke-static {p2}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v10

    .line 585
    .local v10, "toDate":Ljava/util/Date;
    const/4 v9, 0x0

    const/16 v0, 0x9a

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v11, v0

    .line 588
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x9b

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 590
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "expense"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monthly_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    const/16 v0, 0x9c

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 591
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9d

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 593
    invoke-static {v9, p1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->ExpenseFromCursor(Landroid/database/Cursor;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Lcom/benoitletondor/easybudgetapp/model/Expense;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x9e

    const/4 v1, 0x1

    aput-boolean v1, v11, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 600
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-nez v9, :cond_2

    const/16 v1, 0xa3

    const/4 v2, 0x1

    aput-boolean v2, v11, v1

    .line 604
    :goto_1
    const/16 v1, 0xa6

    const/4 v2, 0x1

    aput-boolean v2, v11, v1

    throw v0

    .line 600
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    if-nez v9, :cond_1

    const/16 v0, 0x9f

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 596
    :goto_2
    const/16 v0, 0xa2

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    return-object v12

    .line 600
    :cond_1
    const/16 v0, 0xa0

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 602
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/16 v0, 0xa1

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    goto :goto_2

    .line 600
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/16 v1, 0xa4

    const/4 v2, 0x1

    aput-boolean v2, v11, v1

    .line 602
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/16 v1, 0xa5

    const/4 v2, 0x1

    aput-boolean v2, v11, v1

    goto :goto_1
.end method

.method public getAllExpensesForRecurringExpenseFromDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Ljava/util/List;
    .locals 13
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v11

    .line 504
    invoke-static {p2}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v10

    .line 506
    .local v10, "fromDate":Ljava/util/Date;
    const/4 v9, 0x0

    const/16 v0, 0x79

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v11, v0

    .line 509
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x7a

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 511
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "expense"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monthly_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    const/16 v0, 0x7b

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 512
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7c

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 514
    invoke-static {v9, p1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->ExpenseFromCursor(Landroid/database/Cursor;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Lcom/benoitletondor/easybudgetapp/model/Expense;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x7d

    const/4 v1, 0x1

    aput-boolean v1, v11, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 521
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-nez v9, :cond_2

    const/16 v1, 0x82

    const/4 v2, 0x1

    aput-boolean v2, v11, v1

    .line 525
    :goto_1
    const/16 v1, 0x85

    const/4 v2, 0x1

    aput-boolean v2, v11, v1

    throw v0

    .line 521
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    if-nez v9, :cond_1

    const/16 v0, 0x7e

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 517
    :goto_2
    const/16 v0, 0x81

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    return-object v12

    .line 521
    :cond_1
    const/16 v0, 0x7f

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 523
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x80

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    goto :goto_2

    .line 521
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/16 v1, 0x83

    const/4 v2, 0x1

    aput-boolean v2, v11, v1

    .line 523
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/16 v1, 0x84

    const/4 v2, 0x1

    aput-boolean v2, v11, v1

    goto :goto_1
.end method

.method public getBalanceForDay(Ljava/util/Date;)D
    .locals 5
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 346
    invoke-virtual {p0, p1, v4}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getBalanceForDay(Ljava/util/Date;Z)D

    move-result-wide v2

    const/16 v1, 0x53

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method protected getBalanceForDay(Ljava/util/Date;Z)D
    .locals 11
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v6

    .line 303
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->getTimestampRangeForDay(Ljava/util/Date;)Landroid/support/v4/util/Pair;

    move-result-object v4

    const/16 v5, 0x3d

    aput-boolean v10, v6, v5

    .line 304
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanGMTDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 307
    .local v2, "gmt":Ljava/util/Date;
    if-nez p2, :cond_0

    const/16 v5, 0x3e

    aput-boolean v10, v6, v5

    .line 316
    :goto_0
    const/16 v5, 0x43

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v6, v5

    .line 319
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT SUM(amount) FROM expense WHERE date <= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v4, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "cursor":Landroid/database/Cursor;
    const/16 v4, 0x44

    const/4 v5, 0x1

    aput-boolean v5, v6, v4

    .line 321
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x45

    const/4 v5, 0x1

    aput-boolean v5, v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    const-wide/16 v4, 0x0

    .line 331
    if-nez v1, :cond_4

    const/16 v7, 0x4b

    aput-boolean v10, v6, v7

    .line 327
    :goto_1
    const/16 v7, 0x4e

    aput-boolean v10, v6, v7

    .end local v1    # "cursor":Landroid/database/Cursor;
    :goto_2
    return-wide v4

    .line 307
    :cond_0
    const/16 v5, 0x3f

    aput-boolean v10, v6, v5

    .line 309
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getBalanceForDay(Ljava/util/Date;)Ljava/lang/Double;

    move-result-object v0

    .line 310
    .local v0, "cachedBalance":Ljava/lang/Double;
    if-nez v0, :cond_1

    const/16 v5, 0x40

    aput-boolean v10, v6, v5

    goto :goto_0

    :cond_1
    const/16 v4, 0x41

    aput-boolean v10, v6, v4

    .line 312
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/16 v7, 0x42

    aput-boolean v10, v6, v7

    goto :goto_2

    .line 321
    .end local v0    # "cachedBalance":Ljava/lang/Double;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/16 v4, 0x46

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v6, v4

    .line 323
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 324
    .local v3, "value":I
    int-to-double v4, v3

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v8

    .line 331
    if-nez v1, :cond_3

    const/16 v7, 0x47

    aput-boolean v10, v6, v7

    .line 324
    :goto_3
    const/16 v7, 0x4a

    aput-boolean v10, v6, v7

    goto :goto_2

    .line 331
    :cond_3
    const/16 v7, 0x48

    aput-boolean v10, v6, v7

    .line 333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v7, 0x49

    aput-boolean v10, v6, v7

    goto :goto_3

    .line 331
    .end local v3    # "value":I
    :cond_4
    const/16 v7, 0x4c

    aput-boolean v10, v6, v7

    .line 333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v7, 0x4d

    aput-boolean v10, v6, v7

    goto :goto_1

    .line 331
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-nez v1, :cond_5

    const/16 v5, 0x4f

    aput-boolean v10, v6, v5

    .line 335
    :goto_4
    const/16 v5, 0x52

    aput-boolean v10, v6, v5

    throw v4

    .line 331
    :cond_5
    const/16 v5, 0x50

    aput-boolean v10, v6, v5

    .line 333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v5, 0x51

    aput-boolean v10, v6, v5

    goto :goto_4
.end method

.method public getExpensesForDay(Ljava/util/Date;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 244
    invoke-virtual {p0, p1, v3}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getExpensesForDay(Ljava/util/Date;Z)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x3c

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected getExpensesForDay(Ljava/util/Date;Z)Ljava/util/List;
    .locals 13
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/benoitletondor/easybudgetapp/model/Expense;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v12

    .line 193
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->getTimestampRangeForDay(Ljava/util/Date;)Landroid/support/v4/util/Pair;

    move-result-object v3

    const/16 v0, 0x28

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    .line 194
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanGMTDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v11

    .line 197
    .local v11, "gmt":Ljava/util/Date;
    if-nez p2, :cond_0

    const/16 v0, 0x29

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    .line 206
    :goto_0
    const/4 v10, 0x0

    const/16 v0, 0x2d

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v12, v0

    .line 209
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x2e

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    .line 211
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "expense"

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, "cursor":Landroid/database/Cursor;
    const/16 v0, 0x2f

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    .line 212
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x30

    const/4 v1, 0x1

    :try_start_1
    aput-boolean v1, v12, v0

    .line 216
    invoke-direct {p0, v10}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getRecurringExpenseForExpenseCursor(Landroid/database/Cursor;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->ExpenseFromCursor(Landroid/database/Cursor;Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;)Lcom/benoitletondor/easybudgetapp/model/Expense;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    const/16 v0, 0x31

    const/4 v1, 0x1

    :try_start_2
    aput-boolean v1, v12, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 228
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-nez v10, :cond_4

    const/16 v1, 0x38

    const/4 v2, 0x1

    aput-boolean v2, v12, v1

    .line 232
    :goto_2
    const/16 v1, 0x3b

    const/4 v2, 0x1

    aput-boolean v2, v12, v1

    throw v0

    .line 197
    :cond_0
    const/16 v0, 0x2a

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    .line 199
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getExpensesForDay(Ljava/util/Date;)Ljava/util/List;

    move-result-object v9

    .line 200
    .local v9, "cachedExpenses":Ljava/util/List;, "Ljava/util/List<Lcom/benoitletondor/easybudgetapp/model/Expense;>;"
    if-nez v9, :cond_1

    const/16 v0, 0x2b

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    goto/16 :goto_0

    .line 202
    :cond_1
    const/16 v0, 0x2c

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    .line 224
    .end local v9    # "cachedExpenses":Ljava/util/List;, "Ljava/util/List<Lcom/benoitletondor/easybudgetapp/model/Expense;>;"
    :goto_3
    return-object v9

    .line 218
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    const/16 v1, 0x32

    const/4 v2, 0x1

    :try_start_3
    aput-boolean v2, v12, v1

    .line 220
    const/4 v1, 0x0

    const-string v2, "Error occurred querying DB for expense for a day"

    invoke-static {v1, v2, v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    const/16 v0, 0x33

    const/4 v1, 0x1

    aput-boolean v1, v12, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 228
    :cond_2
    if-nez v10, :cond_3

    const/16 v0, 0x34

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    .line 224
    :goto_4
    const/16 v0, 0x37

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    goto :goto_3

    .line 228
    :cond_3
    const/16 v0, 0x35

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    .line 230
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x36

    const/4 v1, 0x1

    aput-boolean v1, v12, v0

    goto :goto_4

    .line 228
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/16 v1, 0x39

    const/4 v2, 0x1

    aput-boolean v2, v12, v1

    .line 230
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/16 v1, 0x3a

    const/4 v2, 0x1

    aput-boolean v2, v12, v1

    goto :goto_2
.end method

.method public hasExpensesForDay(Ljava/util/Date;)Z
    .locals 9
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v4

    .line 157
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->getTimestampRangeForDay(Ljava/util/Date;)Landroid/support/v4/util/Pair;

    move-result-object v5

    const/16 v6, 0x16

    aput-boolean v3, v4, v6

    .line 158
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanGMTDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    const/16 v7, 0x17

    aput-boolean v3, v4, v7

    .line 161
    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->hasExpensesForDay(Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v1

    .line 162
    .local v1, "hasExpensesCached":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    const/16 v2, 0x18

    aput-boolean v3, v4, v2

    .line 164
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v5, 0x19

    aput-boolean v3, v4, v5

    .line 172
    :goto_0
    return v2

    .line 167
    :cond_0
    const/16 v6, 0x1a

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v4, v6

    .line 170
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT COUNT(*) FROM expense WHERE date >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "date"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " <= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v5, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v5, 0x1b

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 172
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x1c

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    :goto_1
    const/16 v5, 0x1f

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_2
    if-nez v0, :cond_3

    const/16 v5, 0x20

    aput-boolean v3, v4, v5

    .line 172
    :goto_3
    const/16 v5, 0x23

    aput-boolean v3, v4, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-gtz v5, :cond_2

    const/16 v5, 0x1d

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 176
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-nez v0, :cond_4

    const/16 v5, 0x24

    aput-boolean v3, v4, v5

    .line 180
    :goto_4
    const/16 v5, 0x27

    aput-boolean v3, v4, v5

    throw v2

    .line 172
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/16 v2, 0x1e

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v4, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    goto :goto_2

    .line 176
    :cond_3
    const/16 v5, 0x21

    aput-boolean v3, v4, v5

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/16 v5, 0x22

    aput-boolean v3, v4, v5

    goto :goto_3

    .line 176
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/16 v5, 0x25

    aput-boolean v3, v4, v5

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/16 v5, 0x26

    aput-boolean v3, v4, v5

    goto :goto_4
.end method

.method public hasExpensesForRecurringExpenseBeforeDate(Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;Ljava/util/Date;)Z
    .locals 10
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v4

    .line 556
    invoke-static {p2}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->cleanDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 558
    .local v1, "toDate":Ljava/util/Date;
    const/16 v5, 0x8c

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v4, v5

    .line 561
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT COUNT(*) FROM expense WHERE monthly_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpense;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "date"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIMIT 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/16 v5, 0x8d

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 563
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x8e

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    :goto_0
    const/16 v5, 0x91

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :goto_1
    if-nez v0, :cond_2

    const/16 v5, 0x92

    aput-boolean v3, v4, v5

    .line 563
    :goto_2
    const/16 v5, 0x95

    aput-boolean v3, v4, v5

    return v2

    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-gtz v5, :cond_1

    const/16 v5, 0x8f

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 567
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-nez v0, :cond_3

    const/16 v5, 0x96

    aput-boolean v3, v4, v5

    .line 571
    :goto_3
    const/16 v5, 0x99

    aput-boolean v3, v4, v5

    throw v2

    .line 563
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/16 v2, 0x90

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v4, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    goto :goto_1

    .line 567
    :cond_2
    const/16 v5, 0x93

    aput-boolean v3, v4, v5

    .line 569
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/16 v5, 0x94

    aput-boolean v3, v4, v5

    goto :goto_2

    .line 567
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/16 v5, 0x97

    aput-boolean v3, v4, v5

    .line 569
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/16 v5, 0x98

    aput-boolean v3, v4, v5

    goto :goto_3
.end method

.method public persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Z
    .locals 4
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/Expense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;Z)Z

    move-result v1

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public persistExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;Z)Z
    .locals 12
    .param p1    # Lcom/benoitletondor/easybudgetapp/model/Expense;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->$jacocoInit()[Z

    move-result-object v5

    .line 110
    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getId()Ljava/lang/Long;

    move-result-object v6

    if-nez v6, :cond_0

    const/16 v6, 0x8

    aput-boolean v4, v5, v6

    .line 123
    :goto_0
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "expense"

    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->generateContentValuesForExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v6, v7, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 125
    .local v0, "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    const/16 v3, 0x11

    aput-boolean v4, v5, v3

    .line 128
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v3

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->refreshForDay(Lcom/benoitletondor/easybudgetapp/model/db/DB;Ljava/util/Date;)V

    const/16 v3, 0x12

    aput-boolean v4, v5, v3

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/benoitletondor/easybudgetapp/model/Expense;->setId(Ljava/lang/Long;)V

    .line 131
    const/16 v3, 0x13

    aput-boolean v4, v5, v3

    move v3, v4

    .line 135
    :goto_1
    return v3

    .line 110
    .end local v0    # "id":J
    :cond_0
    if-eqz p2, :cond_1

    const/16 v6, 0x9

    aput-boolean v4, v5, v6

    goto :goto_0

    :cond_1
    const/16 v6, 0xa

    aput-boolean v4, v5, v6

    .line 112
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "expense"

    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->generateContentValuesForExpense(Lcom/benoitletondor/easybudgetapp/model/Expense;)Landroid/content/ContentValues;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_expense_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/model/Expense;->getId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 113
    .local v2, "rowsAffected":I
    if-gtz v2, :cond_2

    const/16 v6, 0xb

    aput-boolean v4, v5, v6

    .line 119
    :goto_2
    if-ne v2, v4, :cond_3

    const/16 v3, 0xe

    aput-boolean v4, v5, v3

    move v3, v4

    :goto_3
    const/16 v6, 0x10

    aput-boolean v4, v5, v6

    goto :goto_1

    .line 113
    :cond_2
    const/16 v6, 0xc

    aput-boolean v4, v5, v6

    .line 116
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/model/db/DB;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/model/db/DBCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/benoitletondor/easybudgetapp/model/db/DBCache;->wipeAll()V

    const/16 v6, 0xd

    aput-boolean v4, v5, v6

    goto :goto_2

    .line 119
    :cond_3
    const/16 v6, 0xf

    aput-boolean v4, v5, v6

    goto :goto_3

    .line 135
    .end local v2    # "rowsAffected":I
    .restart local v0    # "id":J
    :cond_4
    const/16 v6, 0x14

    aput-boolean v4, v5, v6

    goto :goto_1
.end method
