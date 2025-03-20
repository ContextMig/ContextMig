.class final Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;
.super Lcom/dropbox/sync/android/DbxUpgradePathTracker;
.source "DbxUpgradePathTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxUpgradePathTracker;
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
    .line 30
    const-class v0, Lcom/dropbox/sync/android/DbxUpgradePathTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeRef"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxUpgradePathTracker;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "nativeRef is zero"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-wide p1, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->nativeRef:J

    .line 40
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_appLaunched(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native native_getGitRevisionHistory(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native native_getVersionHistory(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method


# virtual methods
.method public appLaunched(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "gitRevision"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 57
    sget-boolean v0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 58
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->native_appLaunched(JLjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 46
    .local v0, "destroyed":Z
    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->nativeRef:J

    invoke-direct {p0, v2, v3}, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->nativeDestroy(J)V

    .line 47
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
    .line 50
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->destroy()V

    .line 51
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 52
    return-void
.end method

.method public getGitRevisionHistory()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 73
    sget-boolean v0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 74
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->native_getGitRevisionHistory(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getVersionHistory()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 65
    sget-boolean v0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 66
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/DbxUpgradePathTracker$NativeProxy;->native_getVersionHistory(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
