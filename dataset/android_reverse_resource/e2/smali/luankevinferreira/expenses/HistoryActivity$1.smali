.class Lluankevinferreira/expenses/HistoryActivity$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lluankevinferreira/expenses/HistoryActivity;->readExpensesMoth(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lluankevinferreira/expenses/domain/Expense;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lluankevinferreira/expenses/HistoryActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/HistoryActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x37143271f85f828aL    # -1.9375827162823393E43

    const-string v2, "luankevinferreira/expenses/HistoryActivity$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/HistoryActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lluankevinferreira/expenses/HistoryActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/HistoryActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    iput-object p1, p0, Lluankevinferreira/expenses/HistoryActivity$1;->this$0:Lluankevinferreira/expenses/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/HistoryActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    check-cast p1, Lluankevinferreira/expenses/domain/Expense;

    check-cast p2, Lluankevinferreira/expenses/domain/Expense;

    invoke-virtual {p0, p1, p2}, Lluankevinferreira/expenses/HistoryActivity$1;->compare(Lluankevinferreira/expenses/domain/Expense;Lluankevinferreira/expenses/domain/Expense;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public compare(Lluankevinferreira/expenses/domain/Expense;Lluankevinferreira/expenses/domain/Expense;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lluankevinferreira/expenses/HistoryActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    invoke-virtual {p2}, Lluankevinferreira/expenses/domain/Expense;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lluankevinferreira/expenses/domain/Expense;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    aput-boolean v3, v0, v3

    return v1
.end method
