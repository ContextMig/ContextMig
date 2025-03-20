.class public Lcom/benoitletondor/easybudgetapp/iab/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnConsumeFinishedListener;,
        Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;,
        Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE:I = 0x2

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE:I = -0x3f3

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionUpdateSupported:Z

.field mSubscriptionsSupported:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xb12debb46e6b44dL

    const-string v2, "com/benoitletondor/easybudgetapp/iab/IabHelper"

    const/16 v3, 0xd6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDebugLog:Z

    .line 73
    const-string v1, "IabHelper"

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSetupDone:Z

    .line 79
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDisposed:Z

    .line 82
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSubscriptionsSupported:Z

    .line 85
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 89
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mAsyncInProgress:Z

    .line 93
    const-string v1, ""

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    aput-boolean v3, v0, v2

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    aput-boolean v3, v0, v3

    .line 169
    const-string v1, "IAB helper created."

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method private checkNotDisposed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 323
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDisposed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-boolean v3, v0, v2

    throw v1

    .line 324
    :cond_0
    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v4

    .line 788
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v5, "/"

    const/16 v6, 0x94

    aput-boolean v7, v4, v6

    .line 791
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v5, "/"

    const/16 v6, 0x95

    aput-boolean v7, v4, v6

    .line 801
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_2

    .line 804
    rsub-int v2, p0, -0x3e8

    .line 805
    .local v2, "index":I
    if-gez v2, :cond_0

    const/16 v3, 0x96

    aput-boolean v7, v4, v3

    .line 806
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x99

    aput-boolean v7, v4, v5

    .line 811
    .end local v2    # "index":I
    :goto_1
    return-object v3

    .line 805
    .restart local v2    # "index":I
    :cond_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    const/16 v3, 0x97

    aput-boolean v7, v4, v3

    goto :goto_0

    :cond_1
    aget-object v3, v1, v2

    const/16 v5, 0x98

    aput-boolean v7, v4, v5

    goto :goto_1

    .line 808
    .end local v2    # "index":I
    :cond_2
    if-gez p0, :cond_3

    const/16 v3, 0x9a

    aput-boolean v7, v4, v3

    .line 809
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":Unknown"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x9c

    aput-boolean v7, v4, v5

    goto :goto_1

    .line 808
    :cond_3
    array-length v3, v0

    if-lt p0, v3, :cond_4

    const/16 v3, 0x9b

    aput-boolean v7, v4, v3

    goto :goto_2

    .line 811
    :cond_4
    aget-object v3, v0, p0

    const/16 v5, 0x9d

    aput-boolean v7, v4, v5

    goto :goto_1
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 817
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSetupDone:Z

    if-nez v1, :cond_0

    const/16 v1, 0x9e

    aput-boolean v4, v0, v1

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state for operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): IAB helper is not set up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v1, 0x9f

    aput-boolean v4, v0, v1

    .line 819
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa0

    aput-boolean v4, v0, v2

    throw v1

    .line 821
    :cond_0
    const/16 v1, 0xa1

    aput-boolean v4, v0, v1

    return-void
.end method

.method consume(Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/benoitletondor/easybudgetapp/iab/IabException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 694
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkNotDisposed()V

    const/16 v1, 0x89

    aput-boolean v6, v0, v1

    .line 695
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/16 v1, 0x8a

    aput-boolean v6, v0, v1

    .line 697
    iget-object v1, p1, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mItemType:Ljava/lang/String;

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8b

    aput-boolean v6, v0, v1

    .line 698
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabException;

    const/16 v2, -0x3f2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Items of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' can\'t be consumed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8c

    aput-boolean v6, v0, v2

    throw v1

    .line 703
    :cond_0
    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8d

    aput-boolean v6, v0, v2

    .line 704
    invoke-virtual {p1}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8e

    aput-boolean v6, v0, v3

    .line 705
    if-nez v1, :cond_1

    const/16 v1, 0x8f

    aput-boolean v6, v0, v1

    .line 706
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t consume "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". No token."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v1, 0x91

    aput-boolean v6, v0, v1

    .line 707
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabException;

    const/16 v3, -0x3ef

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x92

    aput-boolean v6, v0, v2

    throw v1

    .line 705
    :cond_1
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v1, 0x90

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 711
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Consuming sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 724
    const/16 v1, 0x93

    aput-boolean v6, v0, v1

    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 182
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkNotDisposed()V

    .line 183
    iput-boolean p1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDebugLog:Z

    .line 184
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method flagEndAsync()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ending async operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 865
    const-string v1, ""

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 866
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mAsyncInProgress:Z

    .line 867
    const/16 v1, 0xac

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 856
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mAsyncInProgress:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") because another async operation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is in progress."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa9

    aput-boolean v4, v0, v2

    throw v1

    .line 858
    :cond_0
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 859
    iput-boolean v4, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mAsyncInProgress:Z

    const/16 v1, 0xaa

    aput-boolean v4, v0, v1

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting async operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 861
    const/16 v1, 0xab

    aput-boolean v4, v0, v1

    return-void
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v2

    .line 841
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 842
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/16 v1, 0xa2

    aput-boolean v6, v2, v1

    .line 843
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 844
    const/4 v1, 0x0

    const/16 v3, 0xa3

    aput-boolean v6, v2, v3

    .line 847
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 846
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xa4

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 847
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v1, v4

    const/16 v3, 0xa5

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 849
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v1, 0xa6

    aput-boolean v6, v2, v1

    .line 850
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v1, 0xa7

    aput-boolean v6, v2, v1

    .line 851
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type for intent response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa8

    aput-boolean v6, v2, v3

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    const/16 v10, -0x3ea

    const/4 v9, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v4

    .line 477
    iget v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mRequestCode:I

    if-eq p1, v5, :cond_0

    const/16 v5, 0x29

    aput-boolean v3, v4, v5

    .line 556
    .local v0, "dataSignature":Ljava/lang/String;
    :goto_0
    return v2

    .line 479
    .end local v0    # "dataSignature":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkNotDisposed()V

    const/16 v5, 0x2a

    aput-boolean v3, v4, v5

    .line 480
    const-string v5, "handleActivityResult"

    invoke-virtual {p0, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/16 v5, 0x2b

    aput-boolean v3, v4, v5

    .line 483
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->flagEndAsync()V

    .line 485
    if-nez p3, :cond_2

    const/16 v2, 0x2c

    aput-boolean v3, v4, v2

    .line 486
    const-string v2, "Null data in IAB activity result."

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v2, 0x2d

    aput-boolean v3, v4, v2

    .line 487
    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const-string v5, "Null data in IAB result"

    invoke-direct {v2, v10, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x2e

    aput-boolean v3, v4, v5

    .line 488
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-nez v5, :cond_1

    const/16 v2, 0x2f

    aput-boolean v3, v4, v2

    .line 489
    :goto_1
    const/16 v2, 0x31

    aput-boolean v3, v4, v2

    move v2, v3

    goto :goto_0

    .line 488
    :cond_1
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v5, v2, v9}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v2, 0x30

    aput-boolean v3, v4, v2

    goto :goto_1

    .line 492
    :cond_2
    invoke-virtual {p0, p3}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    const/16 v6, 0x32

    aput-boolean v3, v4, v6

    .line 493
    const-string v6, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x33

    aput-boolean v3, v4, v7

    .line 494
    const-string v7, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .restart local v0    # "dataSignature":Ljava/lang/String;
    if-eq p2, v8, :cond_3

    const/16 v2, 0x34

    aput-boolean v3, v4, v2

    .line 537
    :goto_2
    if-ne p2, v8, :cond_d

    const/16 v2, 0x58

    aput-boolean v3, v4, v2

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-nez v2, :cond_c

    const/16 v2, 0x59

    aput-boolean v3, v4, v2

    .line 556
    :goto_3
    const/16 v2, 0x68

    aput-boolean v3, v4, v2

    move v2, v3

    goto/16 :goto_0

    .line 496
    :cond_3
    if-eqz v5, :cond_4

    const/16 v2, 0x35

    aput-boolean v3, v4, v2

    goto :goto_2

    :cond_4
    const/16 v5, 0x36

    aput-boolean v3, v4, v5

    .line 497
    const-string v5, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v5, 0x37

    aput-boolean v3, v4, v5

    .line 498
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Purchase data: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v5, 0x38

    aput-boolean v3, v4, v5

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data signature: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v5, 0x39

    aput-boolean v3, v4, v5

    .line 500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extras: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v5, 0x3a

    aput-boolean v3, v4, v5

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected item type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 503
    if-nez v6, :cond_5

    const/16 v2, 0x3b

    aput-boolean v3, v4, v2

    .line 504
    :goto_4
    const-string v2, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v2, 0x3d

    aput-boolean v3, v4, v2

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v2, 0x3e

    aput-boolean v3, v4, v2

    .line 506
    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/16 v5, -0x3f0

    const-string v6, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v2, v5, v6}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x3f

    aput-boolean v3, v4, v5

    .line 507
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-nez v5, :cond_6

    const/16 v2, 0x40

    aput-boolean v3, v4, v2

    .line 508
    :goto_5
    const/16 v2, 0x42

    aput-boolean v3, v4, v2

    move v2, v3

    goto/16 :goto_0

    .line 503
    :cond_5
    if-nez v0, :cond_7

    const/16 v2, 0x3c

    aput-boolean v3, v4, v2

    goto :goto_4

    .line 507
    :cond_6
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v5, v2, v9}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v2, 0x41

    aput-boolean v3, v4, v2

    goto :goto_5

    .line 511
    :cond_7
    const/16 v5, 0x43

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v4, v5

    .line 513
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/Purchase;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v1, v5, v6, v0}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "purchase":Lcom/benoitletondor/easybudgetapp/iab/Purchase;
    const/16 v5, 0x44

    const/4 v7, 0x1

    aput-boolean v7, v4, v5

    .line 514
    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x45

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 517
    iget-object v7, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v7, v6, v0}, Lcom/benoitletondor/easybudgetapp/iab/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v5, 0x46

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 523
    const-string v5, "Purchase signature successfully verified."

    invoke-virtual {p0, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-nez v5, :cond_b

    const/16 v2, 0x54

    aput-boolean v3, v4, v2

    .line 536
    :goto_6
    const/16 v2, 0x57

    aput-boolean v3, v4, v2

    goto/16 :goto_3

    .line 517
    :cond_8
    const/16 v2, 0x47

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v4, v2

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Purchase signature verification FAILED for sku "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v2, 0x48

    const/4 v6, 0x1

    aput-boolean v6, v4, v2

    .line 519
    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/16 v6, -0x3eb

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signature verification failed for sku "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v6, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x49

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 520
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-nez v5, :cond_9

    const/16 v2, 0x4a

    const/4 v5, 0x1

    aput-boolean v5, v4, v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    :goto_7
    const/16 v2, 0x4c

    aput-boolean v3, v4, v2

    move v2, v3

    goto/16 :goto_0

    .line 520
    :cond_9
    :try_start_2
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v5, v2, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v2, 0x4b

    const/4 v5, 0x1

    aput-boolean v5, v4, v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 525
    .end local v1    # "purchase":Lcom/benoitletondor/easybudgetapp/iab/Purchase;
    :catch_0
    move-exception v2

    const/16 v5, 0x4d

    aput-boolean v3, v4, v5

    .line 526
    const-string v5, "Failed to parse purchase data."

    invoke-virtual {p0, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v5, 0x4e

    aput-boolean v3, v4, v5

    .line 527
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v2, 0x4f

    aput-boolean v3, v4, v2

    .line 528
    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const-string v5, "Failed to parse purchase data."

    invoke-direct {v2, v10, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x50

    aput-boolean v3, v4, v5

    .line 529
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-nez v5, :cond_a

    const/16 v2, 0x51

    aput-boolean v3, v4, v2

    .line 530
    :goto_8
    const/16 v2, 0x53

    aput-boolean v3, v4, v2

    move v2, v3

    goto/16 :goto_0

    .line 529
    :cond_a
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v5, v2, v9}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v2, 0x52

    aput-boolean v3, v4, v2

    goto :goto_8

    .line 533
    .restart local v1    # "purchase":Lcom/benoitletondor/easybudgetapp/iab/Purchase;
    :cond_b
    const/16 v5, 0x55

    aput-boolean v3, v4, v5

    .line 534
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v6, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const-string v7, "Success"

    invoke-direct {v6, v2, v7}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v2, 0x56

    aput-boolean v3, v4, v2

    goto/16 :goto_6

    .line 540
    .end local v1    # "purchase":Lcom/benoitletondor/easybudgetapp/iab/Purchase;
    :cond_c
    const/16 v2, 0x5a

    aput-boolean v3, v4, v2

    .line 541
    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const-string v6, "Problem purchashing item."

    invoke-direct {v2, v5, v6}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x5b

    aput-boolean v3, v4, v5

    .line 542
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v5, v2, v9}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v2, 0x5c

    aput-boolean v3, v4, v2

    goto/16 :goto_3

    .line 545
    :cond_d
    if-nez p2, :cond_f

    const/16 v2, 0x5d

    aput-boolean v3, v4, v2

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Purchase canceled - Response: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v2, 0x5e

    aput-boolean v3, v4, v2

    .line 547
    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/16 v5, -0x3ed

    const-string v6, "User canceled."

    invoke-direct {v2, v5, v6}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x5f

    aput-boolean v3, v4, v5

    .line 548
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-nez v5, :cond_e

    const/16 v2, 0x60

    aput-boolean v3, v4, v2

    goto/16 :goto_3

    :cond_e
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v5, v2, v9}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v2, 0x61

    aput-boolean v3, v4, v2

    goto/16 :goto_3

    .line 551
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Purchase failed. Result code: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ". Response: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x62

    aput-boolean v3, v4, v6

    .line 552
    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x63

    aput-boolean v3, v4, v5

    .line 551
    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 v2, 0x64

    aput-boolean v3, v4, v2

    .line 553
    new-instance v2, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/16 v5, -0x3ee

    const-string v6, "Unknown purchase response."

    invoke-direct {v2, v5, v6}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x65

    aput-boolean v3, v4, v5

    .line 554
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-nez v5, :cond_10

    const/16 v2, 0x66

    aput-boolean v3, v4, v2

    goto/16 :goto_3

    :cond_10
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mPurchaseListener:Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v5, v2, v9}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v2, 0x67

    aput-boolean v3, v4, v2

    goto/16 :goto_3
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 9

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v8

    .line 359
    const-string v3, "inapp"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 360
    const/16 v0, 0x12

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 394
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkNotDisposed()V

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    .line 395
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    .line 396
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    .line 399
    const-string v1, "subs"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    .line 408
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v1, 0x1e

    aput-boolean v4, v0, v1

    .line 410
    if-nez p4, :cond_3

    const/16 v1, 0x1f

    aput-boolean v4, v0, v1

    .line 460
    :goto_1
    const/16 v1, 0x28

    aput-boolean v4, v0, v1

    :goto_2
    return-void

    .line 399
    :cond_0
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    aput-boolean v4, v0, v1

    .line 400
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/16 v2, -0x3f1

    const-string v3, "Subscriptions are not available."

    invoke-direct {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x19

    aput-boolean v4, v0, v2

    .line 402
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->flagEndAsync()V

    const/16 v2, 0x1a

    aput-boolean v4, v0, v2

    .line 403
    if-nez p6, :cond_2

    const/16 v1, 0x1b

    aput-boolean v4, v0, v1

    .line 404
    :goto_3
    const/16 v1, 0x1d

    aput-boolean v4, v0, v1

    goto :goto_2

    .line 403
    :cond_2
    invoke-interface {p6, v1, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v1, 0x1c

    aput-boolean v4, v0, v1

    goto :goto_3

    .line 410
    :cond_3
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    aput-boolean v4, v0, v1

    goto :goto_1

    .line 416
    :cond_4
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSubscriptionUpdateSupported:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x21

    aput-boolean v4, v0, v1

    goto :goto_1

    :cond_5
    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    .line 417
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/16 v2, -0x3f3

    const-string v3, "Subscription updates are not available."

    invoke-direct {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x23

    aput-boolean v4, v0, v2

    .line 419
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->flagEndAsync()V

    const/16 v2, 0x24

    aput-boolean v4, v0, v2

    .line 420
    if-nez p6, :cond_6

    const/16 v1, 0x25

    aput-boolean v4, v0, v1

    .line 421
    :goto_4
    const/16 v1, 0x27

    aput-boolean v4, v0, v1

    goto :goto_2

    .line 420
    :cond_6
    invoke-interface {p6, v1, v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;Lcom/benoitletondor/easybudgetapp/iab/Purchase;)V

    const/16 v1, 0x26

    aput-boolean v4, v0, v1

    goto :goto_4
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 1039
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDebugLog:Z

    if-nez v1, :cond_0

    const/16 v1, 0xd2

    aput-boolean v2, v0, v1

    .line 1040
    :goto_0
    const/16 v1, 0xd4

    aput-boolean v2, v0, v1

    return-void

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xd3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method logError(Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 1043
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/16 v1, 0xd5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/benoitletondor/easybudgetapp/iab/Inventory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/benoitletondor/easybudgetapp/iab/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/benoitletondor/easybudgetapp/iab/IabException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 560
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/benoitletondor/easybudgetapp/iab/Inventory;

    move-result-object v1

    const/16 v2, 0x69

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/benoitletondor/easybudgetapp/iab/Inventory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/benoitletondor/easybudgetapp/iab/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/benoitletondor/easybudgetapp/iab/IabException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v2

    .line 578
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkNotDisposed()V

    const/16 v1, 0x6a

    aput-boolean v6, v2, v1

    .line 579
    const-string v1, "queryInventory"

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/16 v1, 0x6b

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v2, v1

    .line 581
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/Inventory;

    invoke-direct {v1}, Lcom/benoitletondor/easybudgetapp/iab/Inventory;-><init>()V

    const/16 v3, 0x6c

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 582
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->queryPurchases(Lcom/benoitletondor/easybudgetapp/iab/Inventory;Ljava/lang/String;)I

    move-result v0

    .line 583
    .local v0, "r":I
    if-eqz v0, :cond_0

    const/16 v1, 0x6d

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 584
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabException;

    const-string v3, "Error refreshing inventory (querying owned items)."

    invoke-direct {v1, v0, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x6e

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 611
    :catch_0
    move-exception v1

    const/16 v3, 0x7e

    aput-boolean v6, v2, v3

    .line 612
    new-instance v3, Lcom/benoitletondor/easybudgetapp/iab/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/16 v1, 0x7f

    aput-boolean v6, v2, v1

    throw v3

    .line 587
    :cond_0
    if-nez p1, :cond_1

    const/16 v3, 0x6f

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v2, v3

    .line 595
    :goto_0
    iget-boolean v3, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSubscriptionsSupported:Z

    if-nez v3, :cond_3

    const/16 v3, 0x74

    const/4 v4, 0x1

    aput-boolean v4, v2, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 609
    :goto_1
    const/16 v3, 0x7d

    aput-boolean v6, v2, v3

    return-object v1

    .line 587
    :cond_1
    const/16 v3, 0x70

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v2, v3

    .line 588
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/benoitletondor/easybudgetapp/iab/Inventory;Ljava/util/List;)I

    move-result v0

    .line 589
    if-nez v0, :cond_2

    const/16 v3, 0x71

    const/4 v4, 0x1

    aput-boolean v4, v2, v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 614
    :catch_1
    move-exception v1

    const/16 v3, 0x80

    aput-boolean v6, v2, v3

    .line 615
    new-instance v3, Lcom/benoitletondor/easybudgetapp/iab/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    const/16 v1, 0x81

    aput-boolean v6, v2, v1

    throw v3

    .line 589
    :cond_2
    const/16 v1, 0x72

    const/4 v3, 0x1

    :try_start_3
    aput-boolean v3, v2, v1

    .line 590
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabException;

    const-string v3, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v1, v0, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x73

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    throw v1

    .line 595
    :cond_3
    const/16 v3, 0x75

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 596
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->queryPurchases(Lcom/benoitletondor/easybudgetapp/iab/Inventory;Ljava/lang/String;)I

    move-result v0

    .line 597
    if-eqz v0, :cond_4

    const/16 v1, 0x76

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 598
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabException;

    const-string v3, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v1, v0, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x77

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    throw v1

    .line 601
    :cond_4
    if-nez p1, :cond_5

    const/16 v3, 0x78

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_1

    :cond_5
    const/16 v3, 0x79

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 602
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/benoitletondor/easybudgetapp/iab/Inventory;Ljava/util/List;)I

    move-result v0

    .line 603
    if-nez v0, :cond_6

    const/16 v3, 0x7a

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_1

    :cond_6
    const/16 v1, 0x7b

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 604
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabException;

    const-string v3, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v1, v0, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabException;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x7c

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public queryInventoryAsync(Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 676
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, p1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;)V

    .line 677
    const/16 v1, 0x88

    aput-boolean v2, v0, v1

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v6

    .line 645
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0x82

    aput-boolean v8, v6, v0

    .line 646
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkNotDisposed()V

    const/16 v0, 0x83

    aput-boolean v8, v6, v0

    .line 647
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/16 v0, 0x84

    aput-boolean v8, v6, v0

    .line 648
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const/16 v0, 0x85

    aput-boolean v8, v6, v0

    .line 649
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$2;-><init>(Lcom/benoitletondor/easybudgetapp/iab/IabHelper;ZLjava/util/List;Lcom/benoitletondor/easybudgetapp/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v0, 0x86

    aput-boolean v8, v6, v0

    .line 672
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 673
    const/16 v0, 0x87

    aput-boolean v8, v6, v0

    return-void
.end method

.method queryPurchases(Lcom/benoitletondor/easybudgetapp/iab/Inventory;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v2

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Querying owned items, item type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v1, 0xad

    aput-boolean v5, v2, v1

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "verificationFailed":Z
    const/4 v1, 0x0

    const/16 v3, 0xae

    aput-boolean v5, v2, v3

    .line 878
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v3, 0xaf

    aput-boolean v5, v2, v3

    .line 928
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xb0

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 930
    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, -0x3eb

    const/16 v3, 0xb1

    aput-boolean v5, v2, v3

    :goto_1
    const/16 v3, 0xb3

    aput-boolean v5, v2, v3

    return v1

    :cond_1
    const/4 v1, 0x0

    const/16 v3, 0xb2

    aput-boolean v5, v2, v3

    goto :goto_1
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/benoitletondor/easybudgetapp/iab/Inventory;Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/benoitletondor/easybudgetapp/iab/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v4

    .line 935
    const-string v2, "Querying SKU details."

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/16 v2, 0xb4

    aput-boolean v11, v4, v2

    .line 936
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xb5

    aput-boolean v11, v4, v2

    .line 937
    invoke-virtual {p2, p1}, Lcom/benoitletondor/easybudgetapp/iab/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 938
    if-nez p3, :cond_0

    const/16 v2, 0xb6

    aput-boolean v11, v4, v2

    .line 946
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xbf

    aput-boolean v11, v4, v2

    .line 947
    const-string v2, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v2}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 948
    const/16 v2, 0xc0

    aput-boolean v11, v4, v2

    .line 998
    .local v1, "mod":I
    :goto_1
    return v3

    .line 938
    .end local v1    # "mod":I
    :cond_0
    const/16 v2, 0xb7

    aput-boolean v11, v4, v2

    .line 939
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v2, 0xb8

    aput-boolean v11, v4, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xb9

    aput-boolean v11, v4, v2

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v7, 0xba

    aput-boolean v11, v4, v7

    .line 940
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v2, 0xbb

    aput-boolean v11, v4, v2

    .line 943
    :goto_3
    const/16 v2, 0xbe

    aput-boolean v11, v4, v2

    goto :goto_2

    .line 940
    :cond_2
    const/16 v7, 0xbc

    aput-boolean v11, v4, v7

    .line 941
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xbd

    aput-boolean v11, v4, v2

    goto :goto_3

    .line 952
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xc1

    aput-boolean v11, v4, v2

    .line 954
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v7, v2, 0x14

    const/16 v2, 0xc2

    aput-boolean v11, v4, v2

    .line 955
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/lit8 v1, v2, 0x14

    .line 956
    .restart local v1    # "mod":I
    const/16 v2, 0xc3

    aput-boolean v11, v4, v2

    move v0, v3

    :goto_4
    if-ge v0, v7, :cond_5

    const/16 v2, 0xc4

    aput-boolean v11, v4, v2

    .line 957
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xc5

    aput-boolean v11, v4, v2

    .line 958
    mul-int/lit8 v2, v0, 0x14

    mul-int/lit8 v9, v0, 0x14

    add-int/lit8 v9, v9, 0x14

    invoke-virtual {v5, v2, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/16 v2, 0xc6

    aput-boolean v11, v4, v2

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v10, 0xc7

    aput-boolean v11, v4, v10

    .line 959
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    const/16 v2, 0xc8

    aput-boolean v11, v4, v2

    goto :goto_5

    .line 961
    :cond_4
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v2, 0xc9

    aput-boolean v11, v4, v2

    goto :goto_4

    .line 963
    .end local v0    # "i":I
    :cond_5
    if-nez v1, :cond_6

    const/16 v2, 0xca

    aput-boolean v11, v4, v2

    .line 998
    :goto_6
    const/16 v2, 0xd1

    aput-boolean v11, v4, v2

    goto/16 :goto_1

    .line 963
    :cond_6
    const/16 v2, 0xcb

    aput-boolean v11, v4, v2

    .line 964
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xcc

    aput-boolean v11, v4, v2

    .line 965
    mul-int/lit8 v2, v7, 0x14

    mul-int/lit8 v7, v7, 0x14

    add-int/2addr v7, v1

    invoke-virtual {v5, v2, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v2, 0xcd

    aput-boolean v11, v4, v2

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v7, 0xce

    aput-boolean v11, v4, v7

    .line 966
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    const/16 v2, 0xcf

    aput-boolean v11, v4, v2

    goto :goto_7

    .line 968
    :cond_7
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xd0

    aput-boolean v11, v4, v2

    goto :goto_6
.end method

.method public startSetup(Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 208
    invoke-direct {p0}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->checkNotDisposed()V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 209
    iget-boolean v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    throw v1

    .line 212
    :cond_0
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 213
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$1;-><init>(Lcom/benoitletondor/easybudgetapp/iab/IabHelper;Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 286
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 287
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    .line 288
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    .line 290
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 300
    :goto_0
    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    return-void

    .line 294
    :cond_1
    if-nez p1, :cond_2

    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    .line 295
    new-instance v1, Lcom/benoitletondor/easybudgetapp/iab/IabResult;

    const/4 v2, 0x3

    const-string v3, "Billing service unavailable on device."

    invoke-direct {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/benoitletondor/easybudgetapp/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/benoitletondor/easybudgetapp/iab/IabResult;)V

    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
