.class Lde/cketti/safecontentresolver/Os;
.super Ljava/lang/Object;
.source "Os.java"


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "os-compat"

.field private static context:Landroid/content/Context;

.field private static libraryNeedsLoading:Z

.field private static loadFailedException:Ljava/lang/UnsupportedOperationException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lde/cketti/safecontentresolver/Os;->libraryNeedsLoading:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fstat(I)I
    .locals 3
    .param p0, "fileDescriptor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/cketti/safecontentresolver/ErrnoException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 45
    const-class v1, Lde/cketti/safecontentresolver/Os;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lde/cketti/safecontentresolver/Os;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Call Os.init(Context) before attempting to call Os.fstat()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 50
    :cond_0
    :try_start_1
    sget-boolean v0, Lde/cketti/safecontentresolver/Os;->libraryNeedsLoading:Z

    if-eqz v0, :cond_2

    .line 51
    invoke-static {}, Lde/cketti/safecontentresolver/Os;->loadLibrary()V

    .line 55
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-static {p0}, Lde/cketti/safecontentresolver/Os;->nativeFstat(I)I

    move-result v0

    return v0

    .line 52
    :cond_2
    :try_start_2
    sget-object v0, Lde/cketti/safecontentresolver/Os;->loadFailedException:Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lde/cketti/safecontentresolver/Os;->loadFailedException:Ljava/lang/UnsupportedOperationException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v1, Lde/cketti/safecontentresolver/Os;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 35
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Argument \'context\' must not be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 39
    :cond_0
    :try_start_1
    sget-object v0, Lde/cketti/safecontentresolver/Os;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lde/cketti/safecontentresolver/Os;->context:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_1
    monitor-exit v1

    return-void
.end method

.method private static loadLibrary()V
    .locals 3

    .prologue
    .line 61
    const/4 v1, 0x0

    sput-boolean v1, Lde/cketti/safecontentresolver/Os;->libraryNeedsLoading:Z

    .line 63
    :try_start_0
    sget-object v1, Lde/cketti/safecontentresolver/Os;->context:Landroid/content/Context;

    const-string v2, "os-compat"

    invoke-static {v1, v2}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/getkeepsafe/relinker/MissingLibraryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to load native library os-compat"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lde/cketti/safecontentresolver/Os;->loadFailedException:Ljava/lang/UnsupportedOperationException;

    .line 66
    sget-object v1, Lde/cketti/safecontentresolver/Os;->loadFailedException:Ljava/lang/UnsupportedOperationException;

    throw v1

    .line 64
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static native nativeFstat(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/cketti/safecontentresolver/ErrnoException;
        }
    .end annotation
.end method
