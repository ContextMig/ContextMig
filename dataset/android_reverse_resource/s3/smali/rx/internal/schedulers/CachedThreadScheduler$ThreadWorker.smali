.class final Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
.super Lrx/internal/schedulers/NewThreadWorker;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadWorker"
.end annotation


# instance fields
.field private expirationTime:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lrx/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 237
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    return-wide v0
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "expirationTime"    # J

    .prologue
    .line 244
    iput-wide p1, p0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 245
    return-void
.end method
