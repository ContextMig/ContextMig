.class public final Lcom/google/android/gms/internal/ads/zzahx;
.super Lcom/google/android/gms/internal/ads/zzajx;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzbze:Lcom/google/android/gms/internal/ads/zzaji;

.field private final zzclp:J

.field private final zzcmd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzahn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcme:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzahq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcmf:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcmg:Lcom/google/android/gms/internal/ads/zzago;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzago;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaye:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzahx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzago;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzago;J)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajx;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmd:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmf:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzclp:J

    return-void
.end method

.method private final zza(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwx;)Lcom/google/android/gms/internal/ads/zzajh;
    .locals 67
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzwx;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    new-instance v45, Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsn:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbso:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzces:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzaej;->orientation:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsu:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzccy:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzceq:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcod:Lcom/google/android/gms/internal/ads/zzwy;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcer:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    move-wide/from16 v47, v13

    move-object/from16 v46, v15

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcep:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    move-wide/from16 v49, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcoh:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    move-wide/from16 v51, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzceu:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcev:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcob:Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfe:Lcom/google/android/gms/internal/ads/zzaig;

    move-object/from16 v53, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcff:Ljava/util/List;

    move-object/from16 v54, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfg:Ljava/util/List;

    move-object/from16 v55, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfh:Z

    move/from16 v56, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfi:Lcom/google/android/gms/internal/ads/zzael;

    move-object/from16 v57, v1

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v58, v3

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v1

    move-object/from16 v59, v5

    move/from16 v64, v12

    move-object/from16 v61, v13

    move-wide/from16 v62, v14

    goto/16 :goto_3

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v59, v5

    if-eqz v16, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/google/android/gms/internal/ads/zzahq;

    if-eqz v5, :cond_2

    move-object/from16 v60, v3

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzahq;->zzbru:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzahq;->zzbru:Ljava/lang/String;

    move-object/from16 v61, v13

    iget v13, v5, Lcom/google/android/gms/internal/ads/zzahq;->errorCode:I

    packed-switch v13, :pswitch_data_0

    const/16 v17, 0x6

    :goto_1
    :pswitch_0
    move-wide/from16 v62, v14

    move/from16 v13, v17

    goto :goto_2

    :pswitch_1
    const/16 v17, 0x3

    goto :goto_1

    :pswitch_2
    move-wide/from16 v62, v14

    const/4 v13, 0x0

    goto :goto_2

    :pswitch_3
    const/16 v17, 0x4

    goto :goto_1

    :pswitch_4
    const/16 v17, 0x2

    goto :goto_1

    :goto_2
    iget-wide v14, v5, Lcom/google/android/gms/internal/ads/zzahq;->zzbub:J

    const/16 v5, 0x21

    move/from16 v64, v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v5, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v59

    move-object/from16 v3, v60

    move-object/from16 v13, v61

    move-wide/from16 v14, v62

    move/from16 v12, v64

    goto :goto_0

    :cond_1
    move-object/from16 v5, v59

    move-object/from16 v3, v60

    goto/16 :goto_0

    :cond_2
    move-object/from16 v5, v59

    goto/16 :goto_0

    :cond_3
    move/from16 v64, v12

    move-object/from16 v61, v13

    move-wide/from16 v62, v14

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v1

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsr:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfl:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcoq:Lcom/google/android/gms/internal/ads/zzhs;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzzl:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcor:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfp:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzbsp:Ljava/util/List;

    move-object/from16 v65, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzzm:Z

    move/from16 v66, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfq:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v29, 0x0

    move-object/from16 v44, v1

    move-object/from16 v30, v53

    move-object/from16 v31, v54

    move-object/from16 v32, v55

    move/from16 v33, v56

    move-object/from16 v34, v57

    move-object/from16 v42, v65

    move/from16 v43, v66

    move-object/from16 v1, v45

    move/from16 v41, v3

    move-object/from16 v28, v58

    move-object/from16 v3, v16

    move/from16 v40, v5

    move-object/from16 v20, v59

    move/from16 v5, p1

    move/from16 v39, v12

    move/from16 v12, v64

    move-object/from16 v38, v13

    move-wide/from16 v21, v47

    move-object/from16 v27, v61

    move-object/from16 v13, p3

    move-object/from16 v47, v14

    move-wide/from16 v23, v49

    move-wide/from16 v25, v51

    move-wide/from16 v36, v62

    move-object/from16 v14, v17

    move-object/from16 v16, v46

    move-object/from16 v46, v15

    move-object/from16 v15, p2

    move-object/from16 v17, v18

    move-wide/from16 v18, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v47

    invoke-direct/range {v1 .. v44}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zzaqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/zzwx;Lcom/google/android/gms/internal/ads/zzxq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwy;Lcom/google/android/gms/internal/ads/zzxa;JLcom/google/android/gms/internal/ads/zzjn;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzpb;Lcom/google/android/gms/internal/ads/zzaig;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzael;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhs;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-object v45

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final onStop()V
    .locals 0

    return-void
.end method

.method public final zza(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final zzcb(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmf:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzdn()V
    .locals 20

    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaji;->zzcod:Lcom/google/android/gms/internal/ads/zzwy;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwy;->zzbsm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/gms/internal/ads/zzwx;

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzwx;->zzbsb:Ljava/lang/String;

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzwx;->zzbrt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v3, v1

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "class_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_3
    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzago;->zzca(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaib;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaib;->zzpf()Lcom/google/android/gms/internal/ads/zzahv;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaib;->zzpe()Lcom/google/android/gms/internal/ads/zzxq;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_5

    :cond_3
    new-instance v10, Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzahx;->mContext:Landroid/content/Context;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzbze:Lcom/google/android/gms/internal/ads/zzaji;

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzclp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v10

    move-wide/from16 v16, v4

    move-object v4, v14

    move-object v5, v13

    move-object v8, v11

    move-object/from16 v18, v9

    move-object/from16 v19, v12

    move-object v12, v10

    move-wide/from16 v9, v16

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzahn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwx;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzaib;Lcom/google/android/gms/internal/ads/zzahw;J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzago;->zzos()Lcom/google/android/gms/ads/internal/gmsg/zzb;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzahn;->zza(Lcom/google/android/gms/ads/internal/gmsg/zzb;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmd:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    monitor-exit v18

    goto :goto_7

    :cond_4
    :goto_5
    move-object/from16 v18, v9

    move-object/from16 v19, v12

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahs;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzahs;-><init>()V

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzwx;->zzbru:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzahs;->zzcd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzahs;->zzcc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzahs;->zzg(J)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzahs;->zzad(I)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahs;->zzpd()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v18, v9

    :goto_6
    move-object v1, v0

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v19, v12

    move-object v1, v0

    const-string v2, "Unable to determine custom event class name, skipping..."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    move-object/from16 v12, v19

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmd:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_6
    :goto_8
    if-ge v5, v3, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzahn;->zzoz()Ljava/util/concurrent/Future;

    goto :goto_8

    :cond_7
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmd:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_9
    if-ge v4, v2, :cond_d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzahn;

    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzahn;->zzoz()Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzahn;->zzpa()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_5
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcmf:Ljava/util/HashSet;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzahn;->zzpb()Lcom/google/android/gms/internal/ads/zzwx;

    move-result-object v2

    const/4 v3, -0x2

    invoke-direct {v11, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzahx;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwx;)Lcom/google/android/gms/internal/ads/zzajh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzamu;->zzsy:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahy;

    invoke-direct {v3, v11, v1}, Lcom/google/android/gms/internal/ads/zzahy;-><init>(Lcom/google/android/gms/internal/ads/zzahx;Lcom/google/android/gms/internal/ads/zzajh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v6

    return-void

    :cond_9
    monitor-exit v6

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v5, v0

    :try_start_7
    const-string v6, "Unable to resolve rewarded adapter."

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_8
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzahn;->zzpa()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    monitor-exit v5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v1, v0

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v1

    :catch_2
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzahn;->zzpa()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    monitor-exit v1

    goto :goto_b

    :catchall_6
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v2

    :goto_a
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzahx;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzahn;->zzbth:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzahx;->zzcme:Ljava/util/List;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzahn;->zzpa()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v1

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v1

    :cond_d
    :goto_b
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v11, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzahx;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwx;)Lcom/google/android/gms/internal/ads/zzajh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzamu;->zzsy:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahz;

    invoke-direct {v3, v11, v1}, Lcom/google/android/gms/internal/ads/zzahz;-><init>(Lcom/google/android/gms/internal/ads/zzahx;Lcom/google/android/gms/internal/ads/zzajh;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzl(Lcom/google/android/gms/internal/ads/zzajh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzago;->zzot()Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zzb(Lcom/google/android/gms/internal/ads/zzajh;)V

    return-void
.end method

.method final synthetic zzm(Lcom/google/android/gms/internal/ads/zzajh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->zzcmg:Lcom/google/android/gms/internal/ads/zzago;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzago;->zzot()Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zzb(Lcom/google/android/gms/internal/ads/zzajh;)V

    return-void
.end method
