.class Lcom/google/android/gms/tagmanager/zzbf;
.super Lcom/google/android/gms/tagmanager/zzal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzbf$zza;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final zzbpb:Ljava/lang/String;

.field private static final zzbpt:Ljava/lang/String;

.field private static final zzbpu:Ljava/lang/String;

.field private static final zzbpv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzcf:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbf;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzeb:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbf;->zzbpb:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzgc:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbf;->zzbpt:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzgg:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbf;->zzbpu:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzfx:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbf;->zzbpv:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbf;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzbf;->zzbpb:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzal;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzbf$zza;Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbf$zza;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbf$1;->zzbpw:[I

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/zzbf$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdp;->zzgU(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Joiner: unsupported encoding"

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object p1, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzbf$zza;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbf$zza;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzbf$zza;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private zza(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public zzJf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzV(Ljava/util/Map;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 11
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

    const/4 v6, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbf;->zzbpb:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKT()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/tagmanager/zzbf;->zzbpt:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    sget-object v1, Lcom/google/android/gms/tagmanager/zzbf;->zzbpu:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_2
    sget-object v5, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpx:Lcom/google/android/gms/tagmanager/zzbf$zza;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbf;->zzbpv:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzag$zza;

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "url"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpy:Lcom/google/android/gms/tagmanager/zzbf$zza;

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    packed-switch v5, :pswitch_data_0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0, v4, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzbf$zza;Ljava/util/Set;)V

    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, ""

    move-object v2, v1

    goto :goto_1

    :cond_3
    const-string v1, "="

    move-object v3, v1

    goto :goto_2

    :cond_4
    const-string v4, "backslash"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/google/android/gms/tagmanager/zzbf$zza;->zzbpz:Lcom/google/android/gms/tagmanager/zzbf$zza;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Ljava/util/Set;Ljava/lang/String;)V

    const/16 v5, 0x5c

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string v2, "Joiner: unsupported escape type: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdl;->zzKT()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_0
    const/4 v3, 0x1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzag$zza;->zzjK:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v8, v5

    move v0, v6

    :goto_5
    if-ge v0, v8, :cond_1

    aget-object v9, v5, v0

    if-nez v3, :cond_7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {v9}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3, v4, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzbf$zza;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    move v3, v6

    goto :goto_5

    :pswitch_1
    move v5, v6

    :goto_6
    iget-object v6, v0, Lcom/google/android/gms/internal/zzag$zza;->zzjL:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    if-lez v5, :cond_8

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v6, v0, Lcom/google/android/gms/internal/zzag$zza;->zzjL:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v6, v6, v5

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/zzag$zza;->zzjM:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v8, v8, v5

    invoke-static {v8}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v6, v4, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzbf$zza;Ljava/util/Set;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7, v8, v4, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzbf$zza;Ljava/util/Set;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    move-object v1, v4

    move-object v4, v5

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
