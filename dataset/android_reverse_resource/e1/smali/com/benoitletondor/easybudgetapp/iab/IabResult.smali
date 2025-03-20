.class public Lcom/benoitletondor/easybudgetapp/iab/IabResult;
.super Ljava/lang/Object;
.source "IabResult.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mMessage:Ljava/lang/String;

.field mResponse:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3e1067299ec9f05aL    # -4.24088039368941E9

    const-string v2, "com/benoitletondor/easybudgetapp/iab/IabResult"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->mResponse:I

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 32
    if-nez p2, :cond_0

    aput-boolean v3, v0, v3

    .line 33
    :goto_0
    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->mMessage:Ljava/lang/String;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 38
    :goto_1
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->mMessage:Ljava/lang/String;

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->mMessage:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getResponse()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->mResponse:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isFailure()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->$jacocoInit()[Z

    move-result-object v2

    .line 42
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xb

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xd

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->$jacocoInit()[Z

    move-result-object v2

    .line 41
    iget v0, p0, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->mResponse:I

    if-nez v0, :cond_0

    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IabResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
