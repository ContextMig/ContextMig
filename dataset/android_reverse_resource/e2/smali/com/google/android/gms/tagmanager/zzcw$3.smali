.class Lcom/google/android/gms/tagmanager/zzcw$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcw$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcw;->zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcv;)Lcom/google/android/gms/tagmanager/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbqM:Lcom/google/android/gms/tagmanager/zzcw;

.field final synthetic zzbqN:Ljava/util/Map;

.field final synthetic zzbqO:Ljava/util/Map;

.field final synthetic zzbqP:Ljava/util/Map;

.field final synthetic zzbqQ:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcw;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcw$3;->zzbqM:Lcom/google/android/gms/tagmanager/zzcw;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcw$3;->zzbqN:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcw$3;->zzbqO:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzcw$3;->zzbqP:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzcw$3;->zzbqQ:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzabt$zze;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabt$zze;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzabt$zza;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzabt$zza;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzcr;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcw$3;->zzbqN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcw$3;->zzbqO:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcr;->zzJW()Lcom/google/android/gms/tagmanager/zzcp;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcw$3;->zzbqP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcw$3;->zzbqQ:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcr;->zzJX()Lcom/google/android/gms/tagmanager/zzcp;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/zzcp;->zzc(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method
