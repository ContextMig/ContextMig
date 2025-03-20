.class final Lcom/dropbox/sync/android/EnvExtras$NativeProxy;
.super Lcom/dropbox/sync/android/EnvExtras;
.source "EnvExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/EnvExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeProxy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nativeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/dropbox/sync/android/EnvExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeRef"    # J

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/dropbox/sync/android/EnvExtras;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "nativeRef is zero"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iput-wide p1, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    .line 104
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_accountInfo(JLjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAccountInfo2;
.end method

.method private native native_accountInfoFromRawJson(JLjava/lang/String;)Lcom/dropbox/sync/android/DbxAccountInfo2;
.end method

.method private native native_computeAvailableBytes(J)J
.end method

.method private native native_computeDeviceTotalStorageBytes(J)J
.end method

.method private native native_createAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginInfoWStatus;
.end method

.method private native native_forceLedgerLogUpload(J)V
.end method

.method private native native_gandalfInit(JLjava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/sync/android/DbxFeatureInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method private native native_getGandalfInstance(J)Lcom/dropbox/sync/android/Gandalf;
.end method

.method private native native_getNetworkStatus(J)Lcom/dropbox/sync/android/DbxNetworkStatus;
.end method

.method private native native_getUpgradePathTracker(J)Lcom/dropbox/sync/android/DbxUpgradePathTracker;
.end method

.method private native native_init(JLcom/dropbox/sync/android/DbxAvailableBytesComputer;Lcom/dropbox/sync/android/PerfTracer;)V
.end method

.method private native native_initializeLocalizationCallbacks(JLcom/dropbox/sync/android/DbxLocalizationCallbacks;)V
.end method

.method private native native_isInternalBuild(J)Z
.end method

.method private native native_login(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginResultWStatus;
.end method

.method private native native_passwordReset(JLjava/lang/String;)V
.end method

.method private native native_setBatteryChargingState(JLcom/dropbox/sync/android/DbxChargingState;)V
.end method

.method private native native_setBatteryLevel(JLcom/dropbox/sync/android/DbxBatteryLevel;)V
.end method

.method private native native_setIsInternalBuild(JZ)V
.end method

.method private native native_setNetworkStatus(JLcom/dropbox/sync/android/DbxNetworkStatus;)V
.end method

.method private native native_shutdown(J)V
.end method

.method private native native_twofactorResend(JLjava/lang/String;)Lcom/dropbox/sync/android/DbxHttpStatus;
.end method

.method private native native_twofactorVerify(JLjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginInfoWStatus;
.end method

.method private native native_upgradePathTrackerInit(JLjava/lang/String;)V
.end method


# virtual methods
.method public accountInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAccountInfo2;
    .locals 2
    .param p1, "tokenKey"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 217
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 218
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_accountInfo(JLjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAccountInfo2;

    move-result-object v0

    return-object v0
.end method

.method public accountInfoFromRawJson(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAccountInfo2;
    .locals 2
    .param p1, "rawJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 225
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 226
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_accountInfoFromRawJson(JLjava/lang/String;)Lcom/dropbox/sync/android/DbxAccountInfo2;

    move-result-object v0

    return-object v0
.end method

.method public computeAvailableBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 129
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_computeAvailableBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeDeviceTotalStorageBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 137
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 138
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_computeDeviceTotalStorageBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginInfoWStatus;
    .locals 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 209
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 210
    :cond_0
    iget-wide v2, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_createAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginInfoWStatus;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 110
    .local v0, "destroyed":Z
    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v2, v3}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeDestroy(J)V

    .line 111
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroy()V

    .line 115
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void
.end method

.method public forceLedgerLogUpload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 273
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 274
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_forceLedgerLogUpload(J)V

    .line 275
    return-void
.end method

.method public gandalfInit(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "cachePath"    # Ljava/lang/String;
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

    .prologue
    .line 233
    .local p2, "defaults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dropbox/sync/android/DbxFeatureInfo;>;"
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 234
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_gandalfInit(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 235
    return-void
.end method

.method public getGandalfInstance()Lcom/dropbox/sync/android/Gandalf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 241
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 242
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_getGandalfInstance(J)Lcom/dropbox/sync/android/Gandalf;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkStatus()Lcom/dropbox/sync/android/DbxNetworkStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 169
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 170
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_getNetworkStatus(J)Lcom/dropbox/sync/android/DbxNetworkStatus;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradePathTracker()Lcom/dropbox/sync/android/DbxUpgradePathTracker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 289
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 290
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_getUpgradePathTracker(J)Lcom/dropbox/sync/android/DbxUpgradePathTracker;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/dropbox/sync/android/DbxAvailableBytesComputer;Lcom/dropbox/sync/android/PerfTracer;)V
    .locals 2
    .param p1, "sizeCb"    # Lcom/dropbox/sync/android/DbxAvailableBytesComputer;
    .param p2, "pt"    # Lcom/dropbox/sync/android/PerfTracer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 121
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 122
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_init(JLcom/dropbox/sync/android/DbxAvailableBytesComputer;Lcom/dropbox/sync/android/PerfTracer;)V

    .line 123
    return-void
.end method

.method public initializeLocalizationCallbacks(Lcom/dropbox/sync/android/DbxLocalizationCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/dropbox/sync/android/DbxLocalizationCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 249
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 250
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_initializeLocalizationCallbacks(JLcom/dropbox/sync/android/DbxLocalizationCallbacks;)V

    .line 251
    return-void
.end method

.method public isInternalBuild()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 265
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 266
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_isInternalBuild(J)Z

    move-result v0

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginResultWStatus;
    .locals 7
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "requireRole"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 177
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 178
    :cond_0
    iget-wide v2, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_login(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginResultWStatus;

    move-result-object v0

    return-object v0
.end method

.method public passwordReset(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 201
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 202
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_passwordReset(JLjava/lang/String;)V

    .line 203
    return-void
.end method

.method public setBatteryChargingState(Lcom/dropbox/sync/android/DbxChargingState;)V
    .locals 2
    .param p1, "state"    # Lcom/dropbox/sync/android/DbxChargingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 145
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 146
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_setBatteryChargingState(JLcom/dropbox/sync/android/DbxChargingState;)V

    .line 147
    return-void
.end method

.method public setBatteryLevel(Lcom/dropbox/sync/android/DbxBatteryLevel;)V
    .locals 2
    .param p1, "level"    # Lcom/dropbox/sync/android/DbxBatteryLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 153
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 154
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_setBatteryLevel(JLcom/dropbox/sync/android/DbxBatteryLevel;)V

    .line 155
    return-void
.end method

.method public setIsInternalBuild(Z)V
    .locals 2
    .param p1, "isInternal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 257
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 258
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_setIsInternalBuild(JZ)V

    .line 259
    return-void
.end method

.method public setNetworkStatus(Lcom/dropbox/sync/android/DbxNetworkStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/dropbox/sync/android/DbxNetworkStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 161
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 162
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_setNetworkStatus(JLcom/dropbox/sync/android/DbxNetworkStatus;)V

    .line 163
    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 297
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 298
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_shutdown(J)V

    .line 299
    return-void
.end method

.method public twofactorResend(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxHttpStatus;
    .locals 2
    .param p1, "checkpointToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 185
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 186
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_twofactorResend(JLjava/lang/String;)Lcom/dropbox/sync/android/DbxHttpStatus;

    move-result-object v0

    return-object v0
.end method

.method public twofactorVerify(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginInfoWStatus;
    .locals 2
    .param p1, "checkpointToken"    # Ljava/lang/String;
    .param p2, "twofactorCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 193
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 194
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_twofactorVerify(JLjava/lang/String;Ljava/lang/String;)Lcom/dropbox/sync/android/DbxLoginInfoWStatus;

    move-result-object v0

    return-object v0
.end method

.method public upgradePathTrackerInit(Ljava/lang/String;)V
    .locals 2
    .param p1, "cachePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 281
    sget-boolean v0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 282
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/EnvExtras$NativeProxy;->native_upgradePathTrackerInit(JLjava/lang/String;)V

    .line 283
    return-void
.end method
