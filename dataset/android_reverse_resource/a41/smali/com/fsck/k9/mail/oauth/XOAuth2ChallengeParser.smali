.class public Lcom/fsck/k9/mail/oauth/XOAuth2ChallengeParser;
.super Ljava/lang/Object;
.source "XOAuth2ChallengeParser.java"


# static fields
.field public static final BAD_RESPONSE:Ljava/lang/String; = "400"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldRetry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    invoke-static {p0}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "decodedResponse":Ljava/lang/String;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 23
    const-string v6, "Challenge response: %s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-static {v6, v7}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "json":Lorg/json/JSONObject;
    const-string v6, "status"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "status":Ljava/lang/String;
    const-string v6, "400"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 36
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "status":Ljava/lang/String;
    :goto_0
    return v4

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "jsonException":Lorg/json/JSONException;
    const-string v6, "Error decoding JSON response from: %s. Response was: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object v0, v7, v5

    invoke-static {v6, v7}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "jsonException":Lorg/json/JSONException;
    :cond_1
    move v4, v5

    .line 36
    goto :goto_0
.end method
