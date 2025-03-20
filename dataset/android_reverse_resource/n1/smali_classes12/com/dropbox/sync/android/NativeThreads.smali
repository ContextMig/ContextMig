.class Lcom/dropbox/sync/android/NativeThreads;
.super Ljava/lang/Object;
.source "NativeThreads.java"


# static fields
.field public static BACKGROUND_THREAD_PRIORITY:I

.field public static HIGH_THREAD_PRIORITY:I

.field public static NORMAL_THREAD_PRIORITY:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private final mThreadCount:I

.field private final mThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsStarted:Z

.field private mThreadsStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/sync/android/NativeThreads;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/NativeThreads;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x4

    sput v0, Lcom/dropbox/sync/android/NativeThreads;->BACKGROUND_THREAD_PRIORITY:I

    .line 23
    const/4 v0, 0x5

    sput v0, Lcom/dropbox/sync/android/NativeThreads;->NORMAL_THREAD_PRIORITY:I

    .line 24
    const/4 v0, 0x6

    sput v0, Lcom/dropbox/sync/android/NativeThreads;->HIGH_THREAD_PRIORITY:I

    return-void
.end method

.method constructor <init>(JJLcom/dropbox/sync/android/CoreLogger;)V
    .locals 1
    .param p1, "nativeRunFuncHandle"    # J
    .param p3, "nativeObjHandle"    # J
    .param p5, "logger"    # Lcom/dropbox/sync/android/CoreLogger;

    .prologue
    .line 39
    invoke-static {p5, p1, p2, p3, p4}, Lcom/dropbox/sync/android/NativeThreads;->createNativeThreads(Lcom/dropbox/sync/android/CoreLogger;JJ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/dropbox/sync/android/NativeThreads;-><init>(Ljava/util/List;Lcom/dropbox/sync/android/CoreLogger;)V

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/dropbox/sync/android/CoreLogger;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "logger"    # Lcom/dropbox/sync/android/CoreLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/dropbox/sync/android/CoreLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "runProcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-static {p3, p1, p2}, Lcom/dropbox/sync/android/NativeThreads;->createNativeThreads(Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/dropbox/sync/android/NativeThreads;-><init>(Ljava/util/List;Lcom/dropbox/sync/android/CoreLogger;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/dropbox/sync/android/CoreLogger;)V
    .locals 2
    .param p2, "logger"    # Lcom/dropbox/sync/android/CoreLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;",
            "Lcom/dropbox/sync/android/CoreLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Thread;>;"
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreadsStarted:Z

    .line 33
    iput-boolean v0, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreadsStopped:Z

    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v1, "Expected at least 1 native thread."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p2, p0, Lcom/dropbox/sync/android/NativeThreads;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 60
    iget-object v0, p0, Lcom/dropbox/sync/android/NativeThreads;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    if-nez v0, :cond_1

    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    const-string v1, "logger shouldn\'t be null."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreadCount:I

    .line 62
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreads:Ljava/util/List;

    .line 63
    return-void
.end method

.method static synthetic access$000(JJI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1, p2, p3, p4}, Lcom/dropbox/sync/android/NativeThreads;->nativeRunThread(JJI)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/dropbox/sync/android/NativeThreads;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static createNativeThreads(Lcom/dropbox/sync/android/CoreLogger;JJ)Ljava/util/List;
    .locals 11
    .param p0, "logger"    # Lcom/dropbox/sync/android/CoreLogger;
    .param p1, "nativeRunFuncHandle"    # J
    .param p3, "nativeObjHandle"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/sync/android/CoreLogger;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p1, p2}, Lcom/dropbox/sync/android/NativeThreads;->nativeGetThreadCount(J)I

    move-result v8

    .line 136
    .local v8, "threadCount":I
    if-gtz v8, :cond_0

    .line 137
    sget-object v1, Lcom/dropbox/sync/android/NativeThreads;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid native thread count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 140
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v9, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Thread;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 142
    move v6, v0

    .line 143
    .local v6, "threadIndex":I
    new-instance v7, Ljava/lang/Thread;

    new-instance v1, Lcom/dropbox/sync/android/NativeThreads$1;

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/sync/android/NativeThreads$1;-><init>(JJI)V

    invoke-static {p1, p2, v6}, Lcom/dropbox/sync/android/NativeThreads;->getNativeThreadName(JI)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 155
    .local v7, "thread":Ljava/lang/Thread;
    invoke-static {p1, p2, v6}, Lcom/dropbox/sync/android/NativeThreads;->getNativeThreadPriority(JI)I

    move-result v1

    invoke-static {v1}, Lcom/dropbox/sync/android/NativeThreads;->nativeToJavaThreadPriority(I)I

    move-result v1

    invoke-static {v7, v1}, Lcom/dropbox/sync/android/NativeThreads;->setupThread(Ljava/lang/Thread;I)V

    .line 158
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v6    # "threadIndex":I
    .end local v7    # "thread":Ljava/lang/Thread;
    :cond_1
    return-object v9
.end method

.method private static createNativeThreads(Lcom/dropbox/sync/android/CoreLogger;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p0, "logger"    # Lcom/dropbox/sync/android/CoreLogger;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/sync/android/CoreLogger;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "runProcs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    .local v3, "threadCount":I
    if-gtz v3, :cond_0

    .line 120
    sget-object v5, Lcom/dropbox/sync/android/NativeThreads;->TAG:Ljava/lang/String;

    new-instance v6, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid native thread count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 123
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v4, "threads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Thread;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 125
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 126
    .local v1, "runProc":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 127
    .local v2, "thread":Ljava/lang/Thread;
    sget v5, Lcom/dropbox/sync/android/NativeThreads;->BACKGROUND_THREAD_PRIORITY:I

    invoke-static {v2, v5}, Lcom/dropbox/sync/android/NativeThreads;->setupThread(Ljava/lang/Thread;I)V

    .line 128
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "runProc":Ljava/lang/Runnable;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_1
    return-object v4
.end method

.method private static native getNativeThreadName(JI)Ljava/lang/String;
.end method

.method private static native getNativeThreadPriority(JI)I
.end method

.method private static native nativeGetThreadCount(J)I
.end method

.method private static native nativeRunThread(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method private static nativeToJavaThreadPriority(I)I
    .locals 1
    .param p0, "nativePrio"    # I

    .prologue
    .line 176
    if-gez p0, :cond_0

    .line 177
    sget v0, Lcom/dropbox/sync/android/NativeThreads;->BACKGROUND_THREAD_PRIORITY:I

    .line 181
    :goto_0
    return v0

    .line 178
    :cond_0
    if-nez p0, :cond_1

    .line 179
    sget v0, Lcom/dropbox/sync/android/NativeThreads;->NORMAL_THREAD_PRIORITY:I

    goto :goto_0

    .line 181
    :cond_1
    sget v0, Lcom/dropbox/sync/android/NativeThreads;->HIGH_THREAD_PRIORITY:I

    goto :goto_0
.end method

.method private static setupThread(Ljava/lang/Thread;I)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "prio"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 165
    new-instance v0, Lcom/dropbox/sync/android/NativeThreads$2;

    invoke-direct {v0}, Lcom/dropbox/sync/android/NativeThreads$2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 171
    return-void
.end method


# virtual methods
.method public declared-synchronized initThreads()V
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreadsStarted:Z

    if-nez v2, :cond_0

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreadsStarted:Z

    .line 72
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 73
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 76
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized interruptThreads()V
    .locals 3

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreadsStarted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreadsStopped:Z

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 88
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 91
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public joinThreads()V
    .locals 4

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v3, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreadsStarted:Z

    if-nez v3, :cond_1

    .line 99
    monitor-exit p0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreadsStopped:Z

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v3, p0, Lcom/dropbox/sync/android/NativeThreads;->mThreads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 106
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 108
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
