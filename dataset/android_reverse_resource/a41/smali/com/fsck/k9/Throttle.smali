.class public Lcom/fsck/k9/Throttle;
.super Ljava/lang/Object;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/Throttle$MyTimerTask;
    }
.end annotation


# static fields
.field private static final TIMEOUT_EXTEND_INTERVAL:I = 0x1f4

.field private static TIMER:Ljava/util/Timer;


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private final clock:Lcom/fsck/k9/Clock;

.field private currentTimeout:I

.field private final handler:Landroid/os/Handler;

.field private lastEventTime:J

.field private final maxTimeout:I

.field private final minTimeout:I

.field private final name:Ljava/lang/String;

.field private runningTimerTask:Lcom/fsck/k9/Throttle$MyTimerTask;

.field private final timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/fsck/k9/Throttle;->TIMER:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "minTimeout"    # I
    .param p5, "maxTimeout"    # I

    .prologue
    .line 61
    sget-object v6, Lcom/fsck/k9/Clock;->INSTANCE:Lcom/fsck/k9/Clock;

    sget-object v7, Lcom/fsck/k9/Throttle;->TIMER:Ljava/util/Timer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/fsck/k9/Clock;Ljava/util/Timer;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;IILcom/fsck/k9/Clock;Ljava/util/Timer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "minTimeout"    # I
    .param p5, "maxTimeout"    # I
    .param p6, "clock"    # Lcom/fsck/k9/Clock;
    .param p7, "timer"    # Ljava/util/Timer;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-ge p5, p4, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/Throttle;->name:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/fsck/k9/Throttle;->callback:Ljava/lang/Runnable;

    .line 72
    iput-object p6, p0, Lcom/fsck/k9/Throttle;->clock:Lcom/fsck/k9/Clock;

    .line 73
    iput-object p7, p0, Lcom/fsck/k9/Throttle;->timer:Ljava/util/Timer;

    .line 74
    iput-object p3, p0, Lcom/fsck/k9/Throttle;->handler:Landroid/os/Handler;

    .line 75
    iput p4, p0, Lcom/fsck/k9/Throttle;->minTimeout:I

    .line 76
    iput p5, p0, Lcom/fsck/k9/Throttle;->maxTimeout:I

    .line 77
    iget v0, p0, Lcom/fsck/k9/Throttle;->minTimeout:I

    iput v0, p0, Lcom/fsck/k9/Throttle;->currentTimeout:I

    .line 78
    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/Throttle;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/Throttle;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fsck/k9/Throttle;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fsck/k9/Throttle;Lcom/fsck/k9/Throttle$MyTimerTask;)Lcom/fsck/k9/Throttle$MyTimerTask;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/Throttle;
    .param p1, "x1"    # Lcom/fsck/k9/Throttle$MyTimerTask;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fsck/k9/Throttle;->runningTimerTask:Lcom/fsck/k9/Throttle$MyTimerTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/fsck/k9/Throttle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/Throttle;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fsck/k9/Throttle;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/Throttle;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/Throttle;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fsck/k9/Throttle;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private isCallbackScheduled()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fsck/k9/Throttle;->runningTimerTask:Lcom/fsck/k9/Throttle$MyTimerTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTimeout()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    iget-object v2, p0, Lcom/fsck/k9/Throttle;->clock:Lcom/fsck/k9/Clock;

    invoke-virtual {v2}, Lcom/fsck/k9/Clock;->getTime()J

    move-result-wide v0

    .line 94
    .local v0, "now":J
    iget-wide v2, p0, Lcom/fsck/k9/Throttle;->lastEventTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 95
    iget v2, p0, Lcom/fsck/k9/Throttle;->currentTimeout:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/fsck/k9/Throttle;->currentTimeout:I

    .line 96
    iget v2, p0, Lcom/fsck/k9/Throttle;->currentTimeout:I

    iget v3, p0, Lcom/fsck/k9/Throttle;->maxTimeout:I

    if-lt v2, v3, :cond_0

    .line 97
    iget v2, p0, Lcom/fsck/k9/Throttle;->maxTimeout:I

    iput v2, p0, Lcom/fsck/k9/Throttle;->currentTimeout:I

    .line 99
    :cond_0
    const-string v2, "Throttle: [%s] Timeout extended %d"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/Throttle;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    iget v4, p0, Lcom/fsck/k9/Throttle;->currentTimeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :goto_0
    iput-wide v0, p0, Lcom/fsck/k9/Throttle;->lastEventTime:J

    .line 106
    return-void

    .line 101
    :cond_1
    iget v2, p0, Lcom/fsck/k9/Throttle;->minTimeout:I

    iput v2, p0, Lcom/fsck/k9/Throttle;->currentTimeout:I

    .line 102
    const-string v2, "Throttle: [%s] Timeout reset to %d"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/Throttle;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    iget v4, p0, Lcom/fsck/k9/Throttle;->currentTimeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelScheduledCallback()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fsck/k9/Throttle;->runningTimerTask:Lcom/fsck/k9/Throttle$MyTimerTask;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "Throttle: [%s] Canceling scheduled callback"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/Throttle;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/fsck/k9/Throttle;->runningTimerTask:Lcom/fsck/k9/Throttle$MyTimerTask;

    invoke-virtual {v0}, Lcom/fsck/k9/Throttle$MyTimerTask;->cancel()Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/Throttle;->runningTimerTask:Lcom/fsck/k9/Throttle$MyTimerTask;

    .line 90
    :cond_0
    return-void
.end method

.method public onEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    const-string v0, "Throttle: [%s] onEvent"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fsck/k9/Throttle;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/fsck/k9/Throttle;->updateTimeout()V

    .line 113
    invoke-direct {p0}, Lcom/fsck/k9/Throttle;->isCallbackScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "Throttle: [%s]     callback already scheduled"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fsck/k9/Throttle;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "Throttle: [%s]     scheduling callback"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fsck/k9/Throttle;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v0, Lcom/fsck/k9/Throttle$MyTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/Throttle$MyTimerTask;-><init>(Lcom/fsck/k9/Throttle;Lcom/fsck/k9/Throttle$1;)V

    iput-object v0, p0, Lcom/fsck/k9/Throttle;->runningTimerTask:Lcom/fsck/k9/Throttle$MyTimerTask;

    .line 118
    iget-object v0, p0, Lcom/fsck/k9/Throttle;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/fsck/k9/Throttle;->runningTimerTask:Lcom/fsck/k9/Throttle$MyTimerTask;

    iget v2, p0, Lcom/fsck/k9/Throttle;->currentTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
