.class public Lorg/mozilla/focus/observer/AverageLoadTimeObserver;
.super Lorg/mozilla/focus/architecture/NonNullObserver;
.source "AverageLoadTimeObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/focus/architecture/NonNullObserver",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private loadStarted:Z

.field private final session:Lorg/mozilla/focus/session/Session;

.field private startLoadTime:J


# direct methods
.method public constructor <init>(Lorg/mozilla/focus/session/Session;)V
    .locals 2
    .param p1, "session"    # Lorg/mozilla/focus/session/Session;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/mozilla/focus/architecture/NonNullObserver;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->startLoadTime:J

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->loadStarted:Z

    .line 24
    iput-object p1, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->session:Lorg/mozilla/focus/session/Session;

    .line 25
    return-void
.end method


# virtual methods
.method protected onValueChanged(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "loading"    # Ljava/lang/Boolean;

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    iget-boolean v2, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->loadStarted:Z

    if-nez v2, :cond_0

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->startLoadTime:J

    .line 32
    const-string v2, "AverageLoadTimeObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zerdatime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->startLoadTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - page load start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->loadStarted:Z

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-boolean v2, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->loadStarted:Z

    if-eqz v2, :cond_0

    .line 39
    const-string v3, "AverageLoadTimeObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded page at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->session:Lorg/mozilla/focus/session/Session;

    invoke-virtual {v2}, Lorg/mozilla/focus/session/Session;->getUrl()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 41
    .local v0, "endTime":J
    const-string v2, "AverageLoadTimeObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zerdatime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - page load stop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v2, "AverageLoadTimeObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->startLoadTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - elapsed load"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-wide v2, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->startLoadTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->addLoadToAverage(J)V

    .line 45
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->loadStarted:Z

    goto :goto_0
.end method

.method protected bridge synthetic onValueChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/observer/AverageLoadTimeObserver;->onValueChanged(Ljava/lang/Boolean;)V

    return-void
.end method
