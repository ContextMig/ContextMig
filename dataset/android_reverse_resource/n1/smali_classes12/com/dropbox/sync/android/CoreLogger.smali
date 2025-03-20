.class Lcom/dropbox/sync/android/CoreLogger;
.super Ljava/lang/Object;
.source "CoreLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreLogger$Uploader;
    }
.end annotation


# static fields
.field private static final ENABLE_DEBUG_LOGS:Z

.field private static final TAG:Ljava/lang/String;

.field private static volatile sGlobalInitialized:Z

.field private static final sGlobalInstance:Lcom/dropbox/sync/android/CoreLogger;

.field private static final sGlobalLock:Ljava/lang/Object;

.field private static sUploader:Lcom/dropbox/sync/android/CoreLogger$Uploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/dropbox/sync/android/CoreLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/CoreLogger;->TAG:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/sync/android/CoreLogger;->sGlobalInitialized:Z

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreLogger;->sGlobalLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    sput-object v0, Lcom/dropbox/sync/android/CoreLogger;->sGlobalInstance:Lcom/dropbox/sync/android/CoreLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/dropbox/sync/android/CoreLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/dropbox/sync/android/CoreLogger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/dropbox/sync/android/CoreLogger;->sGlobalInstance:Lcom/dropbox/sync/android/CoreLogger;

    return-object v0
.end method

.method public static getGlobal()Lcom/dropbox/sync/android/CoreLogger;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/dropbox/sync/android/CoreLogger;->sGlobalInstance:Lcom/dropbox/sync/android/CoreLogger;

    return-object v0
.end method

.method public static globalInitialize(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)Z
    .locals 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p2, "ledger"    # Lcom/dropbox/ledger/android/Ledger;

    .prologue
    const/4 v1, 0x1

    .line 116
    sget-object v2, Lcom/dropbox/sync/android/CoreLogger;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_0
    sget-boolean v3, Lcom/dropbox/sync/android/CoreLogger;->sGlobalInitialized:Z

    if-eqz v3, :cond_0

    .line 118
    monitor-exit v2

    .line 135
    :goto_0
    return v1

    .line 121
    :cond_0
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    new-instance v3, Lcom/dropbox/sync/android/CoreLogger$Uploader;

    invoke-direct {v3, p0, p1, p2}, Lcom/dropbox/sync/android/CoreLogger$Uploader;-><init>(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)V

    sput-object v3, Lcom/dropbox/sync/android/CoreLogger;->sUploader:Lcom/dropbox/sync/android/CoreLogger$Uploader;
    :try_end_1
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    const/4 v3, 0x1

    :try_start_2
    sput-boolean v3, Lcom/dropbox/sync/android/CoreLogger;->sGlobalInitialized:Z

    .line 135
    monitor-exit v2

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    :try_start_3
    sget-object v1, Lcom/dropbox/sync/android/CoreLogger;->sGlobalInstance:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/CoreLogger;->TAG:Ljava/lang/String;

    const-string v4, "Failed to set up global NativeEnv."

    invoke-virtual {v1, v3, v4, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    const/4 v1, 0x0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private libLog(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "androidLevel"    # I
    .param p2, "nativeLevel"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-boolean v0, Lcom/dropbox/sync/android/CoreLogger;->sGlobalInitialized:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p2, p3, p4}, Lcom/dropbox/sync/android/CoreLogger;->nativeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method private libLog(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "androidLevel"    # I
    .param p2, "nativeLevel"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 277
    sget-boolean v0, Lcom/dropbox/sync/android/CoreLogger;->sGlobalInitialized:Z

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/dropbox/sync/android/CoreLogger;->nativeLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method private static native nativeLog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetErrorStatus(IILjava/lang/String;)Z
.end method

.method public static setErrorStatus(IILjava/lang/String;)Z
    .locals 1
    .param p0, "errCode"    # I
    .param p1, "logLevel"    # I
    .param p2, "errMessage"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p0, p1, p2}, Lcom/dropbox/sync/android/CoreLogger;->nativeSetErrorStatus(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setLatestLinkedUser(Ljava/lang/String;)V
    .locals 0
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 188
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 195
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 202
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/CoreLogger;->libLog(IILjava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 210
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const/4 v1, 0x6

    const/4 v2, 0x3

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/CoreLogger;->libLog(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/CoreLogger;->libLog(IILjava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/RuntimeException;

    .prologue
    .line 249
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    throw p2
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 239
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/dropbox/sync/android/CoreLogger;->libLog(IILjava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v1, 0x5

    const/4 v2, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/CoreLogger;->libLog(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    return-void
.end method
