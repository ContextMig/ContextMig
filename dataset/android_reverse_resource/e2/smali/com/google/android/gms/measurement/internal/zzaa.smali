.class abstract Lcom/google/android/gms/measurement/internal/zzaa;
.super Lcom/google/android/gms/measurement/internal/zzz;


# instance fields
.field private zzWh:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzx;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzx;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzbbl:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzx;->zzb(Lcom/google/android/gms/measurement/internal/zzaa;)V

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzWh:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaa;->zzkO()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzbbl:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzGp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzWh:Z

    return-void
.end method

.method isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzWh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzGu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzkO()V
.end method

.method protected zzma()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaa;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
