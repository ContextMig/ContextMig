.class abstract Lcom/google/android/gms/tagmanager/zzal;
.super Ljava/lang/Object;


# instance fields
.field private final zzbpf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbpg:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzal;->zzbpg:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzal;->zzbpf:Ljava/util/Set;

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzal;->zzbpf:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public zzJO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzal;->zzbpg:Ljava/lang/String;

    return-object v0
.end method

.method public zzJP()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzal;->zzbpf:Ljava/util/Set;

    return-object v0
.end method

.method public abstract zzJf()Z
.end method

.method public abstract zzV(Ljava/util/Map;)Lcom/google/android/gms/internal/zzag$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzag$zza;"
        }
    .end annotation
.end method

.method zze(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzal;->zzbpf:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
