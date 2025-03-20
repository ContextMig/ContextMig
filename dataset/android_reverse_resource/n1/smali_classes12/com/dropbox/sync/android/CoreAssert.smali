.class Lcom/dropbox/sync/android/CoreAssert;
.super Ljava/lang/Object;
.source "CoreAssert.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/dropbox/sync/android/CoreAssert;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreAssert;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTrue(Z)V
    .locals 4
    .param p0, "check"    # Z

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    const-string v1, "Assertion failed."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "e":Lcom/dropbox/sync/android/DbxRuntimeException$Internal;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/CoreAssert;->TAG:Ljava/lang/String;

    const-string v3, "Assertion failed."

    invoke-virtual {v1, v2, v3, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw v0

    .line 21
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxRuntimeException$Internal;
    :cond_0
    return-void
.end method

.method public static uncaughtExceptionInCallback(Ljava/lang/Throwable;Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "logger"    # Lcom/dropbox/sync/android/CoreLogger;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "Uncaught exception in API callback."

    .line 90
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p1, p2, v0, p0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/dropbox/sync/android/CoreAndroidUtil;->exitOnFatalError(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 95
    return-void
.end method

.method public static uncaughtExceptionOnApiThread(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uncaught exception on Sync API thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p1}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/dropbox/sync/android/CoreAndroidUtil;->exitOnFatalError(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 76
    return-void
.end method

.method static unimplemented(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxRuntimeException$Internal;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unimplemented feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "s":Ljava/lang/String;
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "e":Lcom/dropbox/sync/android/DbxRuntimeException$Internal;
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v2

    sget-object v3, Lcom/dropbox/sync/android/CoreAssert;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    throw v0
.end method

.method public static unrecoverable(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/dropbox/sync/android/DbxRuntimeException$Internal;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;

    invoke-direct {v0, p0}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "e":Lcom/dropbox/sync/android/DbxRuntimeException$Internal;
    invoke-virtual {v0, p1}, Lcom/dropbox/sync/android/DbxRuntimeException$Internal;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->getGlobal()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v1

    sget-object v2, Lcom/dropbox/sync/android/CoreAssert;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
