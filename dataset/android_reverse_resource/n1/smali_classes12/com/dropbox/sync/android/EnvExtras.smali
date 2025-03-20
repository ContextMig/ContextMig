.class abstract Lcom/dropbox/sync/android/EnvExtras;
.super Ljava/lang/Object;
.source "EnvExtras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/EnvExtras$NativeProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public abstract accountInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAccountInfo2;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract accountInfoFromRawJson(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAccountInfo2;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract computeAvailableBytes()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract computeDeviceTotalStorageBytes()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginInfoWStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract forceLedgerLogUpload()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract gandalfInit(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/sync/android/DbxFeatureInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract getGandalfInstance()Lcom/dropbox/sync/android/Gandalf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract getNetworkStatus()Lcom/dropbox/sync/android/DbxNetworkStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract getUpgradePathTracker()Lcom/dropbox/sync/android/DbxUpgradePathTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract init(Lcom/dropbox/sync/android/DbxAvailableBytesComputer;Lcom/dropbox/sync/android/PerfTracer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract initializeLocalizationCallbacks(Lcom/dropbox/sync/android/DbxLocalizationCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract isInternalBuild()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginResultWStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract passwordReset(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract setBatteryChargingState(Lcom/dropbox/sync/android/DbxChargingState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract setBatteryLevel(Lcom/dropbox/sync/android/DbxBatteryLevel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract setIsInternalBuild(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract setNetworkStatus(Lcom/dropbox/sync/android/DbxNetworkStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract twofactorResend(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxHttpStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract twofactorVerify(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginInfoWStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public abstract upgradePathTrackerInit(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method
