.class public final Lcom/google/android/gms/internal/ads/zzayx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatz;


# instance fields
.field private final zzdnv:Lcom/google/android/gms/internal/ads/zzazi;

.field private final zzdnw:Lcom/google/android/gms/internal/ads/zzauk;

.field private final zzdnx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazi;Lcom/google/android/gms/internal/ads/zzauk;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnv:Lcom/google/android/gms/internal/ads/zzazi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnw:Lcom/google/android/gms/internal/ads/zzauk;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnx:I

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnv:Lcom/google/android/gms/internal/ads/zzazi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzazi;->zzk([B)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [B

    :cond_0
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x1

    array-length v7, p2

    int-to-long v7, v7

    mul-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnw:Lcom/google/android/gms/internal/ads/zzauk;

    const/4 v3, 0x3

    new-array v3, v3, [[B

    aput-object p2, v3, v0

    aput-object p1, v3, v6

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayk;->zza([[B)[B

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzauk;->zzg([B)[B

    move-result-object p2

    new-array v1, v5, [[B

    aput-object p1, v1, v0

    aput-object p2, v1, v6

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayk;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
