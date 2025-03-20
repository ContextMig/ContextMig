.class final Lcom/dropbox/sync/android/Gandalf$NativeProxy;
.super Lcom/dropbox/sync/android/Gandalf;
.source "Gandalf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/Gandalf;
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
    .line 59
    const-class v0, Lcom/dropbox/sync/android/Gandalf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeRef"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dropbox/sync/android/Gandalf;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "nativeRef is zero"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-wide p1, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    .line 69
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_getConstantVariant(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native native_getGandalfFromServer(J)V
.end method

.method private native native_getGandalfFromServerNoAuth(J)V
.end method

.method private native native_getVariant(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native native_hasUser(J)Z
.end method

.method private native native_registerGandalfListener(JLcom/dropbox/sync/android/GandalfListener;)V
.end method

.method private native native_shutdown(J)V
.end method

.method private native native_unregisterGandalfListener(JLcom/dropbox/sync/android/GandalfListener;)V
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 75
    .local v0, "destroyed":Z
    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    invoke-direct {p0, v2, v3}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeDestroy(J)V

    .line 76
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
    .line 79
    invoke-virtual {p0}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroy()V

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    return-void
.end method

.method public getConstantVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 118
    sget-boolean v0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 119
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->native_getConstantVariant(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGandalfFromServer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 86
    sget-boolean v0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 87
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->native_getGandalfFromServer(J)V

    .line 88
    return-void
.end method

.method public getGandalfFromServerNoAuth()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 94
    sget-boolean v0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 95
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->native_getGandalfFromServerNoAuth(J)V

    .line 96
    return-void
.end method

.method public getVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 110
    sget-boolean v0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 111
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->native_getVariant(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasUser()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 102
    sget-boolean v0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 103
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->native_hasUser(J)Z

    move-result v0

    return v0
.end method

.method public registerGandalfListener(Lcom/dropbox/sync/android/GandalfListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/dropbox/sync/android/GandalfListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 126
    sget-boolean v0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 127
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->native_registerGandalfListener(JLcom/dropbox/sync/android/GandalfListener;)V

    .line 128
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
    .line 142
    sget-boolean v0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 143
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->native_shutdown(J)V

    .line 144
    return-void
.end method

.method public unregisterGandalfListener(Lcom/dropbox/sync/android/GandalfListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/dropbox/sync/android/GandalfListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 134
    sget-boolean v0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "trying to use a destroyed object"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 135
    :cond_0
    iget-wide v0, p0, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/dropbox/sync/android/Gandalf$NativeProxy;->native_unregisterGandalfListener(JLcom/dropbox/sync/android/GandalfListener;)V

    .line 136
    return-void
.end method
