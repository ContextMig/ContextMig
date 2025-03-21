.class public Lcom/adjust/sdk/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/ResponseData$1;
    }
.end annotation


# instance fields
.field public activityKind:Lcom/adjust/sdk/ActivityKind;

.field public adid:Ljava/lang/String;

.field public attribution:Lcom/adjust/sdk/AdjustAttribution;

.field public jsonResponse:Lorg/json/JSONObject;

.field public message:Ljava/lang/String;

.field public success:Z

.field public timestamp:Ljava/lang/String;

.field public willRetry:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;
    .locals 4
    .param p0, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityPackage;->getActivityKind()Lcom/adjust/sdk/ActivityKind;

    move-result-object v0

    .line 25
    .local v0, "activityKind":Lcom/adjust/sdk/ActivityKind;
    sget-object v2, Lcom/adjust/sdk/ResponseData$1;->$SwitchMap$com$adjust$sdk$ActivityKind:[I

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 39
    new-instance v1, Lcom/adjust/sdk/ResponseData;

    invoke-direct {v1}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 43
    .local v1, "responseData":Lcom/adjust/sdk/ResponseData;
    :goto_0
    iput-object v0, v1, Lcom/adjust/sdk/ResponseData;->activityKind:Lcom/adjust/sdk/ActivityKind;

    .line 45
    return-object v1

    .line 27
    .end local v1    # "responseData":Lcom/adjust/sdk/ResponseData;
    :pswitch_0
    new-instance v1, Lcom/adjust/sdk/SessionResponseData;

    invoke-direct {v1}, Lcom/adjust/sdk/SessionResponseData;-><init>()V

    .line 28
    .restart local v1    # "responseData":Lcom/adjust/sdk/ResponseData;
    goto :goto_0

    .line 30
    .end local v1    # "responseData":Lcom/adjust/sdk/ResponseData;
    :pswitch_1
    new-instance v1, Lcom/adjust/sdk/SdkClickResponseData;

    invoke-direct {v1}, Lcom/adjust/sdk/SdkClickResponseData;-><init>()V

    .line 31
    .restart local v1    # "responseData":Lcom/adjust/sdk/ResponseData;
    goto :goto_0

    .line 33
    .end local v1    # "responseData":Lcom/adjust/sdk/ResponseData;
    :pswitch_2
    new-instance v1, Lcom/adjust/sdk/AttributionResponseData;

    invoke-direct {v1}, Lcom/adjust/sdk/AttributionResponseData;-><init>()V

    .line 34
    .restart local v1    # "responseData":Lcom/adjust/sdk/ResponseData;
    goto :goto_0

    .line 36
    .end local v1    # "responseData":Lcom/adjust/sdk/ResponseData;
    :pswitch_3
    new-instance v1, Lcom/adjust/sdk/EventResponseData;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/EventResponseData;-><init>(Lcom/adjust/sdk/ActivityPackage;)V

    .line 37
    .restart local v1    # "responseData":Lcom/adjust/sdk/ResponseData;
    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 50
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "message:%s timestamp:%s json:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->timestamp:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
