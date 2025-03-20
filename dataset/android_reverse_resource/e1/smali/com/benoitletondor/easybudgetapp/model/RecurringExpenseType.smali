.class public final enum Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;
.super Ljava/lang/Enum;
.source "RecurringExpenseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum BI_WEEKLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

.field public static final enum MONTHLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

.field public static final enum WEEKLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

.field public static final enum YEARLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x336479717088c0fdL    # -1.1057988599674394E61

    const-string v2, "com/benoitletondor/easybudgetapp/model/RecurringExpenseType"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const-string v2, "WEEKLY"

    invoke-direct {v1, v2, v5}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->WEEKLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    aput-boolean v3, v0, v4

    .line 20
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const-string v2, "BI_WEEKLY"

    invoke-direct {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->BI_WEEKLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    aput-boolean v3, v0, v7

    .line 25
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const-string v2, "MONTHLY"

    invoke-direct {v1, v2, v6}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->MONTHLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 30
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const-string v2, "YEARLY"

    invoke-direct {v1, v2, v4}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->YEARLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    .line 10
    new-array v1, v7, [Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->WEEKLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->BI_WEEKLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->MONTHLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->YEARLY:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    aput-object v2, v1, v4

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->$VALUES:[Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->$jacocoInit()[Z

    move-result-object v1

    .line 10
    const-class v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->$jacocoInit()[Z

    move-result-object v1

    .line 10
    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->$VALUES:[Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    invoke-virtual {v0}, [Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
