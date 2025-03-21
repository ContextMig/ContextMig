.class public final Lcom/google/android/gms/internal/zzlx;
.super Lcom/google/android/gms/analytics/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzlx;",
        ">;"
    }
.end annotation


# instance fields
.field private zzVG:Ljava/lang/String;

.field private zzVH:I

.field private zzVI:I

.field private zzVJ:Ljava/lang/String;

.field private zzVK:Ljava/lang/String;

.field private zzVL:Z

.field private zzVM:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlx;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzlx;->zzlx()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlx;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzg;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzce(I)I

    iput p2, p0, Lcom/google/android/gms/internal/zzlx;->zzVH:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlx;->zzVM:Z

    return-void
.end method

.method private zzlB()V
    .locals 0

    return-void
.end method

.method static zzlx()I
    .locals 6

    const-wide/32 v4, 0x7fffffff

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v2, v4

    long-to-int v0, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    if-nez v0, :cond_0

    const-string v0, "GAv4"

    const-string v1, "UUID.randomUUID() returned 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    goto :goto_0
.end method


# virtual methods
.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlx;->zzlB()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzVG:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->zzVG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "interstitial"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzlx;->zzVL:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "automatic"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzlx;->zzVM:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzlx;->zzVH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzlx;->zzVI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->zzVJ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlx;->zzVK:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlx;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzP(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlx;->zzlB()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlx;->zzVM:Z

    return-void
.end method

.method public zzQ(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlx;->zzlB()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlx;->zzVL:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlx;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlx;->setScreenName(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVH:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVH:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlx;->zzas(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVI:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVI:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlx;->zzat(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlx;->zzby(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlx;->zzbz(Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVL:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVL:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlx;->zzQ(Z)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVM:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVM:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzlx;->zzP(Z)V

    :cond_6
    return-void
.end method

.method public zzas(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlx;->zzlB()V

    iput p1, p0, Lcom/google/android/gms/internal/zzlx;->zzVH:I

    return-void
.end method

.method public zzat(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlx;->zzlB()V

    iput p1, p0, Lcom/google/android/gms/internal/zzlx;->zzVI:I

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzg;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlx;->zza(Lcom/google/android/gms/internal/zzlx;)V

    return-void
.end method

.method public zzby(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlx;->zzlB()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzVJ:Ljava/lang/String;

    return-void
.end method

.method public zzbz(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlx;->zzlB()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVK:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlx;->zzVK:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzlA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVK:Ljava/lang/String;

    return-object v0
.end method

.method public zzly()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVG:Ljava/lang/String;

    return-object v0
.end method

.method public zzlz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlx;->zzVH:I

    return v0
.end method
