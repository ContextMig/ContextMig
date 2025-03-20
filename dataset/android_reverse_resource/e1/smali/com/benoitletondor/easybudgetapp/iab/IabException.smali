.class public Lcom/benoitletondor/easybudgetapp/iab/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mResult:Lcom/benoitletondor/easybudgetapp/iab/IabResult;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabException;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5669c08cb7313803L

    const-string v2, "com/benoitletondor/easybudgetapp/iab/IabException"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabException;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabException;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    invoke-direct {v1, p1, p2}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(Lcom/benoitletondor/easybudgetapp/iab/IabResult;)V

    .line 32
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabException;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    invoke-direct {v1, p1, p2}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1, p3}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Ljava/lang/Exception;)V

    .line 39
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/benoitletondor/easybudgetapp/iab/IabResult;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabException;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Ljava/lang/Exception;)V

    .line 29
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabException;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabException;->mResult:Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    .line 36
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getResult()Lcom/benoitletondor/easybudgetapp/iab/IabResult;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabException;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabException;->mResult:Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
