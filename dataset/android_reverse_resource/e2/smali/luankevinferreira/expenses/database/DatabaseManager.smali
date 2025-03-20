.class public Lluankevinferreira/expenses/database/DatabaseManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lluankevinferreira/expenses/database/DatabaseManager$Expense;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final DATA_BASE_NAME:Ljava/lang/String; = "expenses"

.field private static final VERSION:I = 0x1


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/database/DatabaseManager;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6bb992e2f6853df4L    # -5.329288239802192E-211

    const-string v2, "luankevinferreira/expenses/database/DatabaseManager"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/database/DatabaseManager;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lluankevinferreira/expenses/database/DatabaseManager;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    const-string v1, "expenses"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lluankevinferreira/expenses/database/DatabaseManager;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    const-string v1, "CREATE TABLE expense (_id INTEGER PRIMARY KEY, description TEXT, value DOUBLE,expense_date DATETIME DEFAULT CURRENT_TIMESTAMP, expense_type TEXT DEFAULT \"Undefined\");"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    aput-boolean v2, v0, v2

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/database/DatabaseManager;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
