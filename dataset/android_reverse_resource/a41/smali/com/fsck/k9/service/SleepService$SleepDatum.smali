.class Lcom/fsck/k9/service/SleepService$SleepDatum;
.super Ljava/lang/Object;
.source "SleepService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/service/SleepService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SleepDatum"
.end annotation


# instance fields
.field latch:Ljava/util/concurrent/CountDownLatch;

.field reacquireLatch:Ljava/util/concurrent/CountDownLatch;

.field timeout:J

.field wakeLock:Lcom/fsck/k9/mail/power/TracingPowerManager$TracingWakeLock;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/service/SleepService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/service/SleepService$1;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/fsck/k9/service/SleepService$SleepDatum;-><init>()V

    return-void
.end method
