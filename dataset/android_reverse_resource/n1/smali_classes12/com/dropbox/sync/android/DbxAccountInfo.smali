.class public Lcom/dropbox/sync/android/DbxAccountInfo;
.super Ljava/lang/Object;
.source "DbxAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;
    }
.end annotation


# static fields
.field static final JSON_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field static final JSON_ORG_NAME:Ljava/lang/String; = "orgName"

.field static final JSON_RAW_JSON:Ljava/lang/String; = "rawJson"

.field static final JSON_USER_ID:Ljava/lang/String; = "userId"

.field static final JSON_USER_NAME:Ljava/lang/String; = "userName"

.field static final PERSONAL:Ljava/lang/String; = "personal"

.field private static final RAW_JSON_CAN_USE_PHOTOS:Ljava/lang/String; = "can_use_photos"

.field private static final RAW_JSON_EMAIL_NAME:Ljava/lang/String; = "email"

.field private static final RAW_JSON_EMAIL_VERIFIED_NAME:Ljava/lang/String; = "email_verified"

.field private static final RAW_JSON_QUOTA_INFO_NAME:Ljava/lang/String; = "quota_info"

.field private static final RAW_JSON_QUOTA_INFO_NORMAL_NAME:Ljava/lang/String; = "normal"

.field private static final RAW_JSON_QUOTA_INFO_SHARED_NAME:Ljava/lang/String; = "shared"

.field private static final RAW_JSON_QUOTA_INFO_TOTAL_NAME:Ljava/lang/String; = "quota"

.field private static final RAW_JSON_ROLE_NAME:Ljava/lang/String; = "role"

.field private static final RAW_JSON_SIBLING:Ljava/lang/String; = "sibling"

.field private static final RAW_JSON_SIBLING_EMAIL:Ljava/lang/String; = "email"

.field private static final RAW_JSON_SIBLING_ROLE:Ljava/lang/String; = "role"

.field private static final RAW_JSON_SIBLING_UID:Ljava/lang/String; = "uid"


# instance fields
.field private canUsePhotos:Ljava/lang/Boolean;

.field public final displayName:Ljava/lang/String;

.field public final orgName:Ljava/lang/String;

.field private primaryEmail:Ljava/lang/String;

.field private primaryEmailVerified:Ljava/lang/Boolean;

.field private quotaInfo:Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;

.field private final rawJson:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private siblingInfo:Lcom/dropbox/sync/android/DbxSiblingInfo;

.field final userId:Ljava/lang/String;

.field public final userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "orgName"    # Ljava/lang/String;
    .param p5, "rawJson"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "userId can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userId:Ljava/lang/String;

    .line 64
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "displayName can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->displayName:Ljava/lang/String;

    .line 66
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "userName can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userName:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->orgName:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxAccountInfo;->maybeParseRawJson()V

    .line 72
    return-void
.end method

.method private equalsAccountInfo(Lcom/dropbox/sync/android/DbxAccountInfo;)Z
    .locals 4
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxAccountInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/sync/android/DbxAccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/sync/android/DbxAccountInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/dropbox/sync/android/DbxAccountInfo;->userName:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/sync/android/DbxAccountInfo;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->orgName:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/dropbox/sync/android/DbxAccountInfo;->orgName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->orgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/sync/android/DbxAccountInfo;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    iget-object v1, p1, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static fromJSON(Lorg/json/JSONObject;)Lcom/dropbox/sync/android/DbxAccountInfo;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 349
    new-instance v0, Lcom/dropbox/sync/android/DbxAccountInfo;

    const-string v1, "userId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "displayName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userName"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "orgName"

    invoke-virtual {p0, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rawJson"

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/DbxAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private maybeParseRawJson()V
    .locals 15

    .prologue
    .line 91
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 94
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v9, "json":Lorg/json/JSONObject;
    const-string v1, "email"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "email"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->primaryEmail:Ljava/lang/String;

    .line 99
    :cond_0
    const-string v1, "role"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "role"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->role:Ljava/lang/String;

    .line 103
    :cond_1
    const-string v1, "email_verified"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string v1, "email_verified"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->primaryEmailVerified:Ljava/lang/Boolean;

    .line 106
    :cond_2
    const-string v1, "can_use_photos"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    const-string v1, "can_use_photos"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->canUsePhotos:Ljava/lang/Boolean;

    .line 110
    :cond_3
    const-string v1, "quota_info"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    const-string v1, "quota_info"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 112
    .local v10, "quotaJson":Lorg/json/JSONObject;
    const-string v1, "normal"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "shared"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "quota"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    const-string v1, "normal"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 116
    .local v2, "quotaNormalBytes":J
    const-string v1, "shared"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 117
    .local v4, "quotaSharedBytes":J
    const-string v1, "quota"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 119
    .local v6, "quotaTotalBytes":J
    new-instance v1, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;-><init>(JJJ)V

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->quotaInfo:Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;

    .line 126
    .end local v2    # "quotaNormalBytes":J
    .end local v4    # "quotaSharedBytes":J
    .end local v6    # "quotaTotalBytes":J
    .end local v10    # "quotaJson":Lorg/json/JSONObject;
    :cond_4
    const-string v1, "sibling"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    const-string v1, "sibling"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 128
    .local v12, "siblingJson":Lorg/json/JSONObject;
    const-string v1, "uid"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "email"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "role"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    const-string v1, "uid"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, "uid":Ljava/lang/String;
    const-string v1, "email"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "email":Ljava/lang/String;
    const-string v1, "role"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, "role":Ljava/lang/String;
    new-instance v1, Lcom/dropbox/sync/android/DbxSiblingInfo;

    invoke-direct {v1, v13, v0, v11}, Lcom/dropbox/sync/android/DbxSiblingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->siblingInfo:Lcom/dropbox/sync/android/DbxSiblingInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "email":Ljava/lang/String;
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v11    # "role":Ljava/lang/String;
    .end local v12    # "siblingJson":Lorg/json/JSONObject;
    .end local v13    # "uid":Ljava/lang/String;
    :cond_5
    return-void

    .line 137
    :catch_0
    move-exception v8

    .line 138
    .local v8, "ex":Lorg/json/JSONException;
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v14, "Couldn\'t parse account info json."

    invoke-direct {v1, v14, v8}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 285
    if-ne p0, p1, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 291
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 288
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/dropbox/sync/android/DbxAccountInfo;

    if-eqz v0, :cond_1

    .line 289
    check-cast p1, Lcom/dropbox/sync/android/DbxAccountInfo;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxAccountInfo;->equalsAccountInfo(Lcom/dropbox/sync/android/DbxAccountInfo;)Z

    move-result v0

    goto :goto_0

    .line 291
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDbxAccountInfo2()Lcom/dropbox/sync/android/DbxAccountInfo2;
    .locals 18

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 256
    const/4 v2, 0x0

    .line 258
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/dropbox/sync/android/DbxAccountInfo2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->quotaInfo:Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->quotaInfo:Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;

    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;->getNormalBytes()J

    move-result-wide v4

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->quotaInfo:Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->quotaInfo:Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;

    invoke-virtual {v6}, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;->getSharedBytes()J

    move-result-wide v6

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->quotaInfo:Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->quotaInfo:Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;

    iget-wide v8, v8, Lcom/dropbox/sync/android/DbxAccountInfo$QuotaInfo;->mTotalBytes:J

    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->userId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->primaryEmail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->role:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->displayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->userName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/sync/android/DbxAccountInfo;->getOrgName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dropbox/sync/android/DbxAccountInfo;->canUsePhotos:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lcom/dropbox/sync/android/DbxAccountInfo2;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxSiblingInfo;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_3
.end method

.method getOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->orgName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 304
    const/16 v0, 0x11

    .line 305
    .local v0, "result":I
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 306
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 307
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 308
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->orgName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 309
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 310
    return v0
.end method

.method toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 325
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 326
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "userId"

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v2, "displayName"

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v2, "userName"

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v2, "orgName"

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v2, "rawJson"

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    return-object v1

    .line 332
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Bug in JSON generation."

    invoke-static {v2, v0}, Lcom/dropbox/sync/android/CoreAssert;->unrecoverable(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    move-result-object v2

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', orgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', rawJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountInfo;->rawJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
