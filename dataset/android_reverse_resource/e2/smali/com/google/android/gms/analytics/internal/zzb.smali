.class public Lcom/google/android/gms/analytics/internal/zzb;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private final zzVY:Lcom/google/android/gms/analytics/internal/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzg;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/zzg;->zzj(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb;->zzVY:Lcom/google/android/gms/analytics/internal/zzl;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/internal/zzb;)Lcom/google/android/gms/analytics/internal/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb;->zzVY:Lcom/google/android/gms/analytics/internal/zzl;

    return-object v0
.end method


# virtual methods
.method onServiceConnected()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzkN()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb;->zzVY:Lcom/google/android/gms/analytics/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzl;->onServiceConnected()V

    return-void
.end method

.method public setLocalDispatchPeriod(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzma()V

    const-string v0, "setLocalDispatchPeriod (sec)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlT()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzb$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/zzb$1;-><init>(Lcom/google/android/gms/analytics/internal/zzb;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb;->zzVY:Lcom/google/android/gms/analytics/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzl;->start()V

    return-void
.end method

.method public zzR(Z)V
    .locals 2

    const-string v0, "Network connectivity status changed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlT()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzb$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/zzb$2;-><init>(Lcom/google/android/gms/analytics/internal/zzb;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzh;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzma()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzkN()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb;->zzVY:Lcom/google/android/gms/analytics/internal/zzl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzl;->zza(Lcom/google/android/gms/analytics/internal/zzh;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzb;->zzVY:Lcom/google/android/gms/analytics/internal/zzl;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/internal/zzl;->zzc(Lcom/google/android/gms/analytics/internal/zzh;)V

    :cond_0
    return-wide v0
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzab;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzma()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlT()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzb$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/zzb$4;-><init>(Lcom/google/android/gms/analytics/internal/zzb;Lcom/google/android/gms/analytics/internal/zzab;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/analytics/internal/zzw;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzma()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlT()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzb$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/zzb$6;-><init>(Lcom/google/android/gms/analytics/internal/zzb;Lcom/google/android/gms/analytics/internal/zzw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzaa;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlT()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzb$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/analytics/internal/zzb$3;-><init>(Lcom/google/android/gms/analytics/internal/zzb;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzkO()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb;->zzVY:Lcom/google/android/gms/analytics/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzl;->initialize()V

    return-void
.end method

.method public zzlI()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzma()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlP()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlT()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzb$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzb$5;-><init>(Lcom/google/android/gms/analytics/internal/zzb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzlJ()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzma()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzaj;->zzU(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzak;->zzV(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzb;->zza(Lcom/google/android/gms/analytics/internal/zzw;)V

    goto :goto_0
.end method

.method public zzlK()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzma()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlT()Lcom/google/android/gms/analytics/zzi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/internal/zzb$7;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/internal/zzb$7;-><init>(Lcom/google/android/gms/analytics/internal/zzb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/zzi;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzb;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzb;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzb;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzlL()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzma()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzi;->zzkN()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb;->zzVY:Lcom/google/android/gms/analytics/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzlL()V

    return-void
.end method

.method public zzlM()V
    .locals 1

    const-string v0, "Radio powered up"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzb;->zzbG(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzlJ()V

    return-void
.end method

.method zzlN()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzb;->zzkN()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzb;->zzVY:Lcom/google/android/gms/analytics/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzl;->zzlN()V

    return-void
.end method
