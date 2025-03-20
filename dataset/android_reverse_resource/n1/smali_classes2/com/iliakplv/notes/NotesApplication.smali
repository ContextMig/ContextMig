.class public Lcom/iliakplv/notes/NotesApplication;
.super Landroid/app/Application;
.source "NotesApplication.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final NON_CORE_THREADS_KEEP_ALIVE_TIME_SECONDS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/NotesApplication;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2889ebb59e3b44f0L    # 2.105130577805009E-113

    const-string v2, "com/iliakplv/notes/NotesApplication"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/NotesApplication;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    const-class v1, Lcom/iliakplv/notes/NotesApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/NotesApplication;->TAG:Ljava/lang/String;

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static executeInBackground(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    sget-object v1, Lcom/iliakplv/notes/NotesApplication;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 60
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    sget-object v1, Lcom/iliakplv/notes/NotesApplication;->context:Landroid/content/Context;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private initStorage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iliakplv/notes/notes/storage/Storage;->init(Lcom/iliakplv/notes/notes/storage/Storage$Type;)V

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 34
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/DropboxHelper;->initSynchronization()V

    .line 35
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    return-void
.end method

.method private initThreadPool()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    const/16 v1, 0x8

    aput-boolean v8, v0, v1

    .line 39
    sget-object v1, Lcom/iliakplv/notes/NotesApplication;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " processors. Creating thread pool..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-boolean v8, v0, v1

    .line 40
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/iliakplv/notes/NotesApplication;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    const/16 v1, 0xa

    aput-boolean v8, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    aput-boolean v3, v0, v3

    .line 25
    sget-object v1, Lcom/iliakplv/notes/NotesApplication;->TAG:Ljava/lang/String;

    const-string v2, "onCreate() call"

    invoke-static {v1, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 27
    invoke-virtual {p0}, Lcom/iliakplv/notes/NotesApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/NotesApplication;->context:Landroid/content/Context;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 28
    invoke-direct {p0}, Lcom/iliakplv/notes/NotesApplication;->initThreadPool()V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 29
    invoke-direct {p0}, Lcom/iliakplv/notes/NotesApplication;->initStorage()V

    .line 30
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onTerminate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/NotesApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    sget-object v1, Lcom/iliakplv/notes/NotesApplication;->TAG:Ljava/lang/String;

    const-string v2, "onTerminate() call"

    invoke-static {v1, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 51
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void
.end method
