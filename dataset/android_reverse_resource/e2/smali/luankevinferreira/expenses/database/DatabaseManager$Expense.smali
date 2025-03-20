.class public Lluankevinferreira/expenses/database/DatabaseManager$Expense;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lluankevinferreira/expenses/database/DatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Expense"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final EXPENSE_DATE:Ljava/lang/String; = "expense_date"

.field public static final TABLE:Ljava/lang/String; = "expense"

.field public static final TYPE:Ljava/lang/String; = "expense_type"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/database/DatabaseManager$Expense;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1f40fb1d4685c540L    # -1.0646986949044313E158

    const-string v2, "luankevinferreira/expenses/database/DatabaseManager$Expense"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/database/DatabaseManager$Expense;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/database/DatabaseManager$Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
