.class public Lluankevinferreira/expenses/domain/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private id:Ljava/lang/Integer;

.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/domain/Type;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x40da636f9e5f9c2dL    # 27021.744041349903

    const-string v2, "luankevinferreira/expenses/domain/Type"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/domain/Type;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Type;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Type;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    iget-object v1, p0, Lluankevinferreira/expenses/domain/Type;->id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lluankevinferreira/expenses/domain/Type;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    iget-object v1, p0, Lluankevinferreira/expenses/domain/Type;->name:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public setId(I)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Type;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lluankevinferreira/expenses/domain/Type;->id:Ljava/lang/Integer;

    .line 22
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/domain/Type;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    iput-object p1, p0, Lluankevinferreira/expenses/domain/Type;->name:Ljava/lang/String;

    .line 14
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
