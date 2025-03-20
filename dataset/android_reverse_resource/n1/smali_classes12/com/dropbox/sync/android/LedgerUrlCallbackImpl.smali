.class Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;
.super Ljava/lang/Object;
.source "LedgerUrlCallbackImpl.java"

# interfaces
.implements Lcom/dropbox/ledger/android/LedgerUrlCallback;


# instance fields
.field private final mAppPlatform:Ljava/lang/String;

.field private final mAppVersion:Ljava/lang/String;

.field private final mDeviceId:Ljava/lang/String;

.field private final mLogSessionId:Ljava/lang/String;

.field private final mLogUUID:Ljava/lang/String;

.field private final mManufacturer:Ljava/lang/String;

.field private final mSysModel:Ljava/lang/String;

.field private final mSysVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appPlatform"    # Ljava/lang/String;
    .param p2, "sysModel"    # Ljava/lang/String;
    .param p3, "sysVersion"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "manufacturer"    # Ljava/lang/String;
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "logSessionId"    # Ljava/lang/String;
    .param p8, "logUUID"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mAppPlatform:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mSysModel:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mSysVersion:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mAppVersion:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mManufacturer:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mDeviceId:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mLogSessionId:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mLogUUID:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getUploadUrl(J)Ljava/lang/String;
    .locals 13
    .param p1, "log_file_number"    # J

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 36
    const-string v1, "https://api.dropbox.com/r7/put_mobile_analytics_log"

    .line 37
    .local v1, "base_url":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 39
    .local v6, "url_builder":Landroid/net/Uri$Builder;
    const/16 v7, 0x9

    new-array v5, v7, [[Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "app_platform"

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mAppPlatform:Ljava/lang/String;

    aput-object v8, v7, v11

    aput-object v7, v5, v10

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "sys_model"

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mSysModel:Ljava/lang/String;

    aput-object v8, v7, v11

    aput-object v7, v5, v11

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "sys_version"

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mSysVersion:Ljava/lang/String;

    aput-object v8, v7, v11

    aput-object v7, v5, v12

    const/4 v7, 0x3

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "app_version"

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mAppVersion:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object v8, v5, v7

    const/4 v7, 0x4

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "manufacturer"

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mManufacturer:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object v8, v5, v7

    const/4 v7, 0x5

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "device_id"

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mDeviceId:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object v8, v5, v7

    const/4 v7, 0x6

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "log_file_number"

    aput-object v9, v8, v10

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object v8, v5, v7

    const/4 v7, 0x7

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "log_session_id"

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mLogSessionId:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object v8, v5, v7

    const/16 v7, 0x8

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "log_UUID"

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/dropbox/sync/android/LedgerUrlCallbackImpl;->mLogUUID:Ljava/lang/String;

    aput-object v9, v8, v11

    aput-object v8, v5, v7

    .line 51
    .local v5, "params":[[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 52
    .local v4, "param":[Ljava/lang/String;
    aget-object v7, v4, v10

    aget-object v8, v4, v11

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "param":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
