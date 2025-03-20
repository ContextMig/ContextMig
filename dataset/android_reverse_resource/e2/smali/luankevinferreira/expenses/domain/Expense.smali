.class public Lluankevinferreira/expenses/domain/Expense;
.super Ljava/lang/Object;
.source "Expense.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final serialVersionUID:J = -0x24c55d3eab87e37cL


# instance fields
.field private date:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private id:J

.field private type:Ljava/lang/String;

.field private value:D


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/domain/Expense;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x18e5fcf48bf43a96L

    const-string v2, "luankevinferreira/expenses/domain/Expense"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/domain/Expense;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 17
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lluankevinferreira/expenses/domain/Expense;->date:Ljava/util/Date;

    .line 18
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-object v1, p0, Lluankevinferreira/expenses/domain/Expense;->date:Ljava/util/Date;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lluankevinferreira/expenses/domain/Expense;->description:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getId()J
    .locals 5

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-wide v2, p0, Lluankevinferreira/expenses/domain/Expense;->id:J

    const/4 v1, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lluankevinferreira/expenses/domain/Expense;->type:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getValue()D
    .locals 5

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iget-wide v2, p0, Lluankevinferreira/expenses/domain/Expense;->value:D

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iput-object p1, p0, Lluankevinferreira/expenses/domain/Expense;->date:Ljava/util/Date;

    .line 50
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lluankevinferreira/expenses/domain/Expense;->description:Ljava/lang/String;

    .line 34
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setId(J)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iput-wide p1, p0, Lluankevinferreira/expenses/domain/Expense;->id:J

    .line 26
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iput-object p1, p0, Lluankevinferreira/expenses/domain/Expense;->type:Ljava/lang/String;

    .line 58
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setValue(D)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iput-wide p1, p0, Lluankevinferreira/expenses/domain/Expense;->value:D

    .line 42
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    invoke-static {}, Lluankevinferreira/expenses/domain/Expense;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expense{id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lluankevinferreira/expenses/domain/Expense;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lluankevinferreira/expenses/domain/Expense;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lluankevinferreira/expenses/domain/Expense;->value:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lluankevinferreira/expenses/domain/Expense;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lluankevinferreira/expenses/domain/Expense;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
