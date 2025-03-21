.class public final Lcom/google/android/gms/internal/ads/zzafn;
.super Lcom/google/android/gms/internal/ads/zzaeo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzchh:Lcom/google/android/gms/internal/ads/zzafn;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzchi:Lcom/google/android/gms/internal/ads/zzafm;

.field private final zzchj:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafn;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafm;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaeo;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafn;->zzchj:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafn;->zzchi:Lcom/google/android/gms/internal/ads/zzafm;

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafm;Lcom/google/android/gms/internal/ads/zzaef;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzaej;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "Starting ad request from service using: google.afma.request.getAdDictionary"

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zznx;

    sget-object v3, Lcom/google/android/gms/internal/ads/zznk;->zzawh:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "load_ad"

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    invoke-direct {v9, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zznx;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdl:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdl:J

    invoke-virtual {v9, v3, v4}, Lcom/google/android/gms/internal/ads/zznx;->zzd(J)Lcom/google/android/gms/internal/ads/zznv;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "cts"

    aput-object v5, v4, v11

    invoke-virtual {v9, v3, v4}, Lcom/google/android/gms/internal/ads/zznx;->zza(Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zznx;->zzjj()Lcom/google/android/gms/internal/ads/zznv;

    move-result-object v12

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzche:Lcom/google/android/gms/internal/ads/zzaav;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzaav;->zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zznk;->zzbdf:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzano;->zza(Lcom/google/android/gms/internal/ads/zzanz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v3

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzchd:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzagj;->zzr(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zznk;->zzbah:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzano;->zza(Lcom/google/android/gms/internal/ads/zzanz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzcgy:Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzccw:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzajc;->zzcl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v5

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzcgy:Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzccw:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/zzajc;->zzcm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v6

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzchf:Lcom/google/android/gms/internal/ads/zzajg;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzccx:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzccw:Landroid/content/pm/PackageInfo;

    invoke-interface {v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzajg;->zza(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzev()Lcom/google/android/gms/internal/ads/zzagc;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzagc;->zzq(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzano;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v15

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    const-string v11, "_ad"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdr:Z

    if-eqz v11, :cond_2

    if-nez v10, :cond_2

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzchb:Lcom/google/android/gms/internal/ads/zzwu;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaef;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v10, v11}, Lcom/google/android/gms/internal/ads/zzwu;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v15

    :cond_2
    sget-object v10, Lcom/google/android/gms/internal/ads/zznk;->zzbco:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v16, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v15, v10, v11, v9, v2}, Lcom/google/android/gms/internal/ads/zzano;->zza(Lcom/google/android/gms/internal/ads/zzanz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v9

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzano;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/ads/zznk;->zzayj:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v15

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzchf:Lcom/google/android/gms/internal/ads/zzajg;

    invoke-interface {v10, v1}, Lcom/google/android/gms/internal/ads/zzajg;->zzae(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/ads/zznk;->zzayk:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v15

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v10, v14, v15, v11, v2}, Lcom/google/android/gms/internal/ads/zzano;->zza(Lcom/google/android/gms/internal/ads/zzanz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v10

    :cond_3
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/4 v14, 0x4

    if-lt v11, v14, :cond_4

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdc:Landroid/os/Bundle;

    if-eqz v11, :cond_4

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdc:Landroid/os/Bundle;

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    :goto_1
    sget-object v11, Lcom/google/android/gms/internal/ads/zznk;->zzawx:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v15

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v11, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzakk;->zzl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "connectivity"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    if-nez v11, :cond_5

    const-string v11, "Device is offline."

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    :cond_5
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/4 v15, 0x7

    if-lt v11, v15, :cond_6

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdi:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    new-instance v15, Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v15, v1, v11, v2}, Lcom/google/android/gms/internal/ads/zzaft;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    const-string v15, "_ad"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaef;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzcgz:Lcom/google/android/gms/internal/ads/zzmz;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzcdj:Ljava/util/List;

    invoke-interface {v2, v15}, Lcom/google/android/gms/internal/ads/zzmz;->zzf(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sget-object v15, Lcom/google/android/gms/internal/ads/zznk;->zzbdf:Lcom/google/android/gms/internal/ads/zzna;

    move-object/from16 v17, v12

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v12

    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object/from16 v18, v11

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x0

    invoke-static {v3, v1, v11, v12, v15}, Lcom/google/android/gms/internal/ads/zzano;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzano;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzagk;

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzano;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Location;

    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/zzano;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzano;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzano;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzano;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v13, v1}, Lcom/google/android/gms/internal/ads/zzano;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzaga;

    if-nez v11, :cond_8

    const-string v0, "Error fetching device info. This is not recoverable."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    return-object v0

    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzafl;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgt:Lcom/google/android/gms/internal/ads/zzaga;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgo:Lcom/google/android/gms/internal/ads/zzagk;

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzaqe:Landroid/location/Location;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgn:Landroid/os/Bundle;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzccx:Ljava/lang/String;

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgr:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v2, :cond_9

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcdj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_9
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcdj:Ljava/util/List;

    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcdc:Landroid/os/Bundle;

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgp:Ljava/lang/String;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgq:Ljava/lang/String;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzcgx:Lcom/google/android/gms/internal/ads/zzhn;

    move-object/from16 v3, p0

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzhn;->zze(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgu:Lorg/json/JSONObject;

    iget-boolean v2, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzcgv:Z

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzafl;->zzcgv:Z

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafl;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    return-object v0

    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaef;->versionCode:I

    const/4 v4, 0x7

    if-ge v2, v4, :cond_b

    :try_start_0
    const-string v2, "request_id"

    move-object/from16 v11, v18

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_b
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "arc"

    const/4 v7, 0x0

    aput-object v2, v4, v7

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    invoke-virtual {v9, v10, v4}, Lcom/google/android/gms/internal/ads/zznx;->zza(Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zznx;->zzjj()Lcom/google/android/gms/internal/ads/zznv;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzchg:Lcom/google/android/gms/internal/ads/zzafr;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzafr;->zzof()Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzwf;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzafo;->zzxn:Lcom/google/android/gms/internal/ads/zzanj;

    move-object/from16 v4, p3

    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzano;->zza(Lcom/google/android/gms/internal/ads/zzanz;Lcom/google/android/gms/internal/ads/zzanj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v1

    const-wide/16 v11, 0xa

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v11, v12, v2, v4}, Lcom/google/android/gms/internal/ads/zzano;->zza(Lcom/google/android/gms/internal/ads/zzanz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzafm;->zzcha:Lcom/google/android/gms/internal/ads/zzagh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzop()Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v4, "AdRequestServiceImpl.loadAd.flags"

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzanm;->zza(Lcom/google/android/gms/internal/ads/zzanz;Ljava/lang/String;)V

    :cond_c
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzano;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzafz;

    if-nez v7, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    return-object v0

    :cond_d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzafz;->getErrorCode()I

    move-result v1

    const/4 v4, -0x2

    if-eq v1, v4, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzafz;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    return-object v0

    :cond_e
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zznx;->zzjm()Lcom/google/android/gms/internal/ads/zznv;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzafz;->zzom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzafz;->zzom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaef;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v14

    goto :goto_3

    :cond_f
    move-object v14, v2

    :goto_3
    if-nez v14, :cond_10

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzafz;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzafz;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Lcom/google/android/gms/internal/ads/zzaef;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzafm;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v14

    :cond_10
    if-nez v14, :cond_11

    new-instance v14, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    goto :goto_4

    :cond_11
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "tts"

    aput-object v2, v1, v0

    invoke-virtual {v9, v10, v1}, Lcom/google/android/gms/internal/ads/zznx;->zza(Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zznx;->zzjk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/google/android/gms/internal/ads/zzaej;->zzcfd:Ljava/lang/String;

    return-object v14
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzaef;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzafm;)Lcom/google/android/gms/internal/ads/zzaej;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    if-eqz v2, :cond_0

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/zznx;->zzjj()Lcom/google/android/gms/internal/ads/zznv;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    :try_start_0
    new-instance v6, Lcom/google/android/gms/internal/ads/zzafx;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/zzafz;->zzoi()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(Lcom/google/android/gms/internal/ads/zzaef;Ljava/lang/String;)V

    const-string v7, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_1
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    new-instance v7, Ljava/net/URL;

    move-object/from16 v8, p3

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-eqz v3, :cond_2

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzafm;->zzchc:Lcom/google/android/gms/internal/ads/zzagi;

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzagi;->zzoq()V

    :cond_2
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v13

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-virtual {v13, v14, v15, v10, v12}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/zzafz;->zzok()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "x-afma-drt-cookie"

    move-object/from16 v4, p4

    invoke-virtual {v12, v13, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "x-afma-drt-v2-cookie"

    move-object/from16 v10, p5

    invoke-virtual {v12, v13, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object/from16 v4, p4

    :cond_5
    move-object/from16 v10, p5

    :goto_4
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzcds:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v4, "Sending webview cookie in ad request header."

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    const-string v4, "Cookie"

    invoke-virtual {v12, v4, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/zzafz;->zzoj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/zzafz;->zzoj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v10, v4

    invoke-virtual {v12, v10}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v10, v4}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v10}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    :goto_5
    invoke-static {v10}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_7
    const/4 v4, 0x0

    :goto_6
    new-instance v10, Lcom/google/android/gms/internal/ads/zzamy;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzcdi:Ljava/lang/String;

    invoke-direct {v10, v14}, Lcom/google/android/gms/internal/ads/zzamy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v4}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v10, v12, v4}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v1, 0xc8

    const/16 v15, 0x12c

    if-lt v4, v1, :cond_a

    if-ge v4, v15, :cond_a

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v7}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzamy;->zzdg(Ljava/lang/String;)V

    invoke-static {v1, v14, v11, v4}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v6, v1, v14, v11}, Lcom/google/android/gms/internal/ads/zzafx;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "ufe"

    const/4 v7, 0x0

    aput-object v4, v1, v7

    invoke-virtual {v2, v5, v1}, Lcom/google/android/gms/internal/ads/zznx;->zza(Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    :cond_8
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/zzafz;->zzon()Z

    move-result v1

    invoke-virtual {v6, v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzafx;->zza(JZ)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_9

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzafm;->zzchc:Lcom/google/android/gms/internal/ads/zzagi;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzagi;->zzor()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_9
    return-object v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    :goto_7
    :try_start_9
    invoke-static {v7}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_a
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v1, v14, v7, v4}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v4, v15, :cond_10

    const/16 v1, 0x190

    if-ge v4, v1, :cond_10

    const-string v1, "Location"

    invoke-virtual {v12, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v1, "No location header to follow redirect."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_b

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzafm;->zzchc:Lcom/google/android/gms/internal/ads/zzagi;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzagi;->zzor()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :cond_b
    return-object v1

    :cond_c
    :try_start_b
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    add-int/2addr v11, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbes:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v11, v1, :cond_e

    const-string v1, "Too many redirects."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_d

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzafm;->zzchc:Lcom/google/android/gms/internal/ads/zzagi;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzagi;->zzor()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :cond_d
    return-object v1

    :cond_e
    :try_start_d
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzafx;->zzl(Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_f

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzafm;->zzchc:Lcom/google/android/gms/internal/ads/zzagi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagi;->zzor()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :cond_f
    move-object v7, v4

    move-object/from16 v1, p0

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_10
    const/16 v1, 0x2e

    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received error HTTP response code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_11

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzafm;->zzchc:Lcom/google/android/gms/internal/ads/zzagi;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzagi;->zzor()V

    :cond_11
    return-object v1

    :catchall_4
    move-exception v0

    move-object v1, v0

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_12

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzafm;->zzchc:Lcom/google/android/gms/internal/ads/zzagi;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzagi;->zzor()V

    :cond_12
    throw v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "Error while connecting to ad server: "

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    return-object v1
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafm;)Lcom/google/android/gms/internal/ads/zzafn;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzafn;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzafn;->zzchh:Lcom/google/android/gms/internal/ads/zzafn;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zznk;->initialize(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzafn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafm;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzafn;->zzchh:Lcom/google/android/gms/internal/ads/zzafn;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzakk;->zzal(Landroid/content/Context;)Z

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzajz;->zzai(Landroid/content/Context;)V

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzafn;->zzchh:Lcom/google/android/gms/internal/ads/zzafn;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Http Response: {\n  URL:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  Headers:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "      "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "  Body:"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x186a0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p0, p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit16 v0, p0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    move p0, v0

    goto :goto_2

    :cond_3
    const-string p0, "    null"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    :cond_4
    const/16 p0, 0x22

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "  Response Code:\n    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static final synthetic zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzanz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzano;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzany;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/zzaeq;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafn;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaef;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzajm;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafp;-><init>(Lcom/google/android/gms/internal/ads/zzafn;Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/zzaeq;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaki;->zzb(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzez()Lcom/google/android/gms/internal/ads/zzamg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzamg;->zzsa()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzez()Lcom/google/android/gms/internal/ads/zzamg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzamg;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzafq;-><init>(Lcom/google/android/gms/internal/ads/zzafn;Ljava/util/concurrent/Future;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaey;Lcom/google/android/gms/internal/ads/zzaet;)V
    .locals 0

    const-string p1, "Nonagon code path entered in octagon"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaef;)Lcom/google/android/gms/internal/ads/zzaej;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafn;->zzchi:Lcom/google/android/gms/internal/ads/zzafm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafn;->zzchj:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafm;Lcom/google/android/gms/internal/ads/zzaef;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaey;Lcom/google/android/gms/internal/ads/zzaet;)V
    .locals 0

    const-string p1, "Nonagon code path entered in octagon"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
