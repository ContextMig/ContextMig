.class Lcom/google/android/gms/measurement/internal/zzad$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzad$zza;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbfI:Lcom/google/android/gms/measurement/internal/zzm;

.field final synthetic zzbfJ:Lcom/google/android/gms/measurement/internal/zzad$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzad$zza;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$1;->zzbfJ:Lcom/google/android/gms/measurement/internal/zzad$zza;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$1;->zzbfI:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$1;->zzbfJ:Lcom/google/android/gms/measurement/internal/zzad$zza;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$1;->zzbfJ:Lcom/google/android/gms/measurement/internal/zzad$zza;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzad$zza;->zza(Lcom/google/android/gms/measurement/internal/zzad$zza;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$1;->zzbfJ:Lcom/google/android/gms/measurement/internal/zzad$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzad$zza;->zzbfE:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$1;->zzbfJ:Lcom/google/android/gms/measurement/internal/zzad$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzad$zza;->zzbfE:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zzFm()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzFL()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string v2, "Connected to service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$1;->zzbfJ:Lcom/google/android/gms/measurement/internal/zzad$zza;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzad$zza;->zzbfE:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzad$zza$1;->zzbfI:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
