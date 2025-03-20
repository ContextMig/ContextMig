.class public final enum Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;
.super Ljava/lang/Enum;
.source "RecurringExpenseDeleteType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum ALL:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

.field public static final enum FROM:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

.field public static final enum ONE:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

.field public static final enum TO:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x774ab68675ee87fL

    const-string v2, "com/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    const-string v2, "FROM"

    invoke-direct {v1, v2, v4, v4}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->FROM:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 36
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    const-string v2, "TO"

    invoke-direct {v1, v2, v3, v3}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->TO:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 41
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    const-string v2, "ALL"

    invoke-direct {v1, v2, v5, v5}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->ALL:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 46
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    const-string v2, "ONE"

    invoke-direct {v1, v2, v6, v6}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->ONE:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    .line 26
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->FROM:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->TO:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->ALL:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->ONE:Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    aput-object v2, v1, v6

    sput-object v1, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$VALUES:[Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->value:I

    .line 63
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static fromValue(I)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$jacocoInit()[Z

    move-result-object v2

    .line 88
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->values()[Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    const/4 v5, 0x5

    aput-boolean v6, v2, v5

    .line 90
    invoke-virtual {v0}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->getValue()I

    move-result v5

    if-ne p0, v5, :cond_0

    .line 92
    const/4 v1, 0x6

    aput-boolean v6, v2, v1

    .line 96
    :goto_1
    return-object v0

    .line 88
    :cond_0
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x7

    aput-boolean v6, v2, v1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x8

    aput-boolean v6, v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$jacocoInit()[Z

    move-result-object v1

    .line 26
    const-class v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$jacocoInit()[Z

    move-result-object v1

    .line 26
    sget-object v0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$VALUES:[Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    invoke-virtual {v0}, [Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget v1, p0, Lcom/benoitletondor/easybudgetapp/model/RecurringExpenseDeleteType;->value:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
