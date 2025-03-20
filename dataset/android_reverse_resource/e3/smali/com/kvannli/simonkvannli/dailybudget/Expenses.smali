.class public Lcom/kvannli/simonkvannli/dailybudget/Expenses;
.super Ljava/lang/Object;
.source "Expenses.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private _expenseName:Ljava/lang/String;

.field private _id:I

.field private _interval:Ljava/lang/String;

.field private _value:D


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x106efd78c9f4b777L

    const-string v2, "com/kvannli/simonkvannli/dailybudget/Expenses"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_expenseName:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_value:D

    .line 17
    iput-object p4, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_interval:Ljava/lang/String;

    .line 18
    aput-boolean v1, v0, v1

    return-void
.end method


# virtual methods
.method public get_expenseName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_expenseName:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public get_id()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget v1, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_id:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public get_interval()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_interval:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public get_value()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iget-wide v2, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_value:D

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public set_expenseName(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_expenseName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_expenseName:Ljava/lang/String;

    .line 34
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public set_id(I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iput p1, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_id:I

    .line 26
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public set_interval(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_interval:Ljava/lang/String;

    .line 45
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public set_value(D)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iput-wide p1, p0, Lcom/kvannli/simonkvannli/dailybudget/Expenses;->_value:D

    .line 42
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
