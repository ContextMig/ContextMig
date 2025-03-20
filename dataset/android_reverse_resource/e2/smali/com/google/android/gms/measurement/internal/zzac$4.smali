.class Lcom/google/android/gms/measurement/internal/zzac$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzaWo:Ljava/lang/String;

.field final synthetic zzbfm:Lcom/google/android/gms/measurement/internal/zzac;

.field final synthetic zzbfo:Ljava/lang/String;

.field final synthetic zzbfp:J

.field final synthetic zzbfq:Landroid/os/Bundle;

.field final synthetic zzbfr:Z

.field final synthetic zzbfs:Z

.field final synthetic zzbft:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzac;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfm:Lcom/google/android/gms/measurement/internal/zzac;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfp:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfq:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfr:Z

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfs:Z

    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbft:Z

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzaWo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfm:Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->val$name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfp:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfq:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfr:Z

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbfs:Z

    iget-boolean v9, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzbft:Z

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/zzac$4;->zzaWo:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
