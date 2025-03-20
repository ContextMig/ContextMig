.class public abstract Lcom/google/android/gms/internal/zzaae;
.super Lcom/google/android/gms/internal/zzabe;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaae$zza;
    }
.end annotation


# instance fields
.field protected mStarted:Z

.field private zzaAa:Lcom/google/android/gms/common/ConnectionResult;

.field private zzaAb:I

.field private final zzaAc:Landroid/os/Handler;

.field protected zzazZ:Z

.field protected final zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method static synthetic zza(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaae;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget v1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaae;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaae;->zzvD()V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method public zzb(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    iput p2, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzaae$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzaae$zza;-><init>(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaae$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected zzvD()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaae;->zzvx()V

    return-void
.end method

.method protected abstract zzvx()V
.end method
