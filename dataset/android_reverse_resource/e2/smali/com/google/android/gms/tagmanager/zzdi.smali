.class public Lcom/google/android/gms/tagmanager/zzdi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzdi$zza;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzTU:Lcom/google/android/gms/analytics/Tracker;

.field private zzTW:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdi;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized zzgL(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzTW:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzTW:Lcom/google/android/gms/analytics/GoogleAnalytics;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzTW:Lcom/google/android/gms/analytics/GoogleAnalytics;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzdi$zza;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzdi$zza;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzTW:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzTU:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public zzgK(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzgL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdi;->zzTU:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method
