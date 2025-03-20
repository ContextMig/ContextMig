.class public Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mItemType:Ljava/lang/String;

.field private final mJson:Ljava/lang/String;

.field private final mPrice:Ljava/lang/String;

.field private final mPriceAmountMicros:J

.field private final mPriceCurrencyCode:Ljava/lang/String;

.field private final mSku:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6723609a44de8f34L    # 6.744997158971789E188

    const-string v2, "com/benoitletondor/easybudgetapp/iab/SkuDetails"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    const-string v1, "inapp"

    invoke-direct {p0, v1, p1}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mItemType:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mJson:Ljava/lang/String;

    aput-boolean v4, v0, v4

    .line 42
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 43
    const-string v2, "productId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mSku:Ljava/lang/String;

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 44
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mType:Ljava/lang/String;

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 45
    const-string v2, "price"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mPrice:Ljava/lang/String;

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 46
    const-string v2, "price_amount_micros"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mPriceAmountMicros:J

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 47
    const-string v2, "price_currency_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    .line 48
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mTitle:Ljava/lang/String;

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 49
    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mDescription:Ljava/lang/String;

    .line 50
    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mDescription:Ljava/lang/String;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPrice()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mPrice:Ljava/lang/String;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPriceAmountMicros()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-wide v2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mPriceAmountMicros:J

    const/16 v1, 0xd

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSku()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mSku:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mTitle:Ljava/lang/String;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mType:Ljava/lang/String;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkuDetails:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
