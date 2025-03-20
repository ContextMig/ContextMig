.class public Lcom/benoitletondor/easybudgetapp/iab/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mIsAutoRenewing:Z

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3758dffa4025360cL    # -1.0072396272391001E42

    const-string v2, "com/benoitletondor/easybudgetapp/iab/Purchase"

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mItemType:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 40
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-boolean v4, v0, v4

    .line 41
    const-string v2, "orderId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mOrderId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 42
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 43
    const-string v2, "productId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mSku:Ljava/lang/String;

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 44
    const-string v2, "purchaseTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mPurchaseTime:J

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 45
    const-string v2, "purchaseState"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mPurchaseState:I

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 46
    const-string v2, "developerPayload"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mDeveloperPayload:Ljava/lang/String;

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    .line 47
    const-string v2, "token"

    const-string v3, "purchaseToken"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mToken:Ljava/lang/String;

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 48
    const-string v2, "autoRenewing"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mIsAutoRenewing:Z

    .line 49
    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mSignature:Ljava/lang/String;

    .line 50
    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mDeveloperPayload:Ljava/lang/String;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemType()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mItemType:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mOrderId:Ljava/lang/String;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mPackageName:Ljava/lang/String;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPurchaseState()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mPurchaseState:I

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getPurchaseTime()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-wide v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mPurchaseTime:J

    const/16 v1, 0xe

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getSignature()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mSignature:Ljava/lang/String;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSku()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mSku:Ljava/lang/String;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mToken:Ljava/lang/String;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isAutoRenewing()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mIsAutoRenewing:Z

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PurchaseInfo(type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
