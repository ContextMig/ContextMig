.class Lcom/dropbox/sync/android/NativeEnv$Config;
.super Ljava/lang/Object;
.source "NativeEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final apiDebugHost:Ljava/lang/String;

.field public final apiHost:Ljava/lang/String;

.field public final appKey:Ljava/lang/String;

.field public final appSecret:Ljava/lang/String;

.field public final contentHost:Ljava/lang/String;

.field public final ledgerContext:J

.field public final ledgerHandles:J

.field public final locale:Ljava/lang/String;

.field public final logAppName:Ljava/lang/String;

.field public final logAppVersion:Ljava/lang/String;

.field public final logDeviceId:Ljava/lang/String;

.field public final logMemoryAvailableMb:Ljava/lang/String;

.field public final logScreenDensity:Ljava/lang/String;

.field public final logScreenSize:Ljava/lang/String;

.field public final logSystemManufacturer:Ljava/lang/String;

.field public final logSystemModel:Ljava/lang/String;

.field public final logSystemVersion:Ljava/lang/String;

.field public final notifyHost:Ljava/lang/String;

.field public final systemName:Ljava/lang/String;

.field public final userAgent:Ljava/lang/String;

.field public final webHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "coreConfig"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p3, "ledger"    # Lcom/dropbox/ledger/android/Ledger;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v2, "android"

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->systemName:Ljava/lang/String;

    .line 57
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "coreConfig"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->hosts:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreConfig$Hosts;->api:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->apiHost:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->apiHost:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "apiHost"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_1
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->hosts:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreConfig$Hosts;->apiDebug:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->apiDebugHost:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->apiDebugHost:Ljava/lang/String;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "apiDebugHost"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_2
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->hosts:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreConfig$Hosts;->content:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->contentHost:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->contentHost:Ljava/lang/String;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "contentHost"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_3
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->hosts:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreConfig$Hosts;->web:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->webHost:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->webHost:Ljava/lang/String;

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "webHost"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_4
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->hosts:Lcom/dropbox/sync/android/CoreConfig$Hosts;

    iget-object v2, v2, Lcom/dropbox/sync/android/CoreConfig$Hosts;->notify:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->notifyHost:Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->notifyHost:Ljava/lang/String;

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "notifyHost"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_5
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v2, v2, Lcom/dropbox/sync/android/DbxConfig;->appKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->appKey:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->appKey:Ljava/lang/String;

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "appKey"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_6
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->publicConfig:Lcom/dropbox/sync/android/DbxConfig;

    iget-object v2, v2, Lcom/dropbox/sync/android/DbxConfig;->appSecret:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->appSecret:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 72
    .local v0, "l":Ljava/util/Locale;
    if-nez v0, :cond_7

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Locale.getDefault()"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->locale:Ljava/lang/String;

    .line 74
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->userAgent:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->userAgent:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->userAgent:Ljava/lang/String;

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "userAgent"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_8
    invoke-static {}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getSystemManufacturer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logSystemManufacturer:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logSystemManufacturer:Ljava/lang/String;

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "logSystemManufacturer"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_9
    invoke-static {}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logSystemModel:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logSystemModel:Ljava/lang/String;

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "logSystemModel"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_a
    invoke-static {}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logSystemVersion:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logSystemVersion:Ljava/lang/String;

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "logSystemVersion"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_b
    invoke-static {p1}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logScreenSize:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logScreenSize:Ljava/lang/String;

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "logScreenSize"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_c
    invoke-static {p1}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getScreenDensity(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logScreenDensity:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logScreenDensity:Ljava/lang/String;

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "logScreenDensity"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_d
    invoke-static {p1}, Lcom/dropbox/sync/android/CoreAndroidUtil;->getLargeMemoryClass(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logMemoryAvailableMb:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logMemoryAvailableMb:Ljava/lang/String;

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "logMemoryAvailableMb"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_e
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->appName:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logAppName:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logAppName:Ljava/lang/String;

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "logAppName"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_f
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->appVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logAppVersion:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logAppVersion:Ljava/lang/String;

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "logAppVersion"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_10
    iget-object v2, p2, Lcom/dropbox/sync/android/CoreConfig;->deviceId:Ljava/lang/String;

    iput-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logDeviceId:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->logDeviceId:Ljava/lang/String;

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "logDeviceId"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_11
    if-eqz p3, :cond_12

    .line 96
    invoke-virtual {p3}, Lcom/dropbox/ledger/android/Ledger;->getHandles()Lcom/dropbox/ledger/android/Ledger$NativeLedgerHandles;

    move-result-object v1

    .line 97
    .local v1, "nativeLedgerHandles":Lcom/dropbox/ledger/android/Ledger$NativeLedgerHandles;
    iget-wide v2, v1, Lcom/dropbox/ledger/android/Ledger$NativeLedgerHandles;->mHandles:J

    iput-wide v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->ledgerHandles:J

    .line 98
    iget-wide v2, v1, Lcom/dropbox/ledger/android/Ledger$NativeLedgerHandles;->mContext:J

    iput-wide v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->ledgerContext:J

    .line 102
    .end local v1    # "nativeLedgerHandles":Lcom/dropbox/ledger/android/Ledger$NativeLedgerHandles;
    :goto_0
    return-void

    .line 100
    :cond_12
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->ledgerContext:J

    iput-wide v2, p0, Lcom/dropbox/sync/android/NativeEnv$Config;->ledgerHandles:J

    goto :goto_0
.end method
