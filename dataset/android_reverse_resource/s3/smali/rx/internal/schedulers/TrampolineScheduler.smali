.class public final Lrx/internal/schedulers/TrampolineScheduler;
.super Lrx/Scheduler;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/TrampolineScheduler$TimedAction;,
        Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lrx/internal/schedulers/TrampolineScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lrx/internal/schedulers/TrampolineScheduler;

    invoke-direct {v0}, Lrx/internal/schedulers/TrampolineScheduler;-><init>()V

    sput-object v0, Lrx/internal/schedulers/TrampolineScheduler;->INSTANCE:Lrx/internal/schedulers/TrampolineScheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 41
    return-void
.end method

.method static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 128
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    invoke-direct {v0}, Lrx/internal/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;-><init>()V

    return-object v0
.end method
