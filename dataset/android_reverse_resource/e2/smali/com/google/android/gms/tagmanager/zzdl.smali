.class public Lcom/google/android/gms/tagmanager/zzdl;
.super Ljava/lang/Object;


# static fields
.field private static final zzbrG:Ljava/lang/Object;

.field private static zzbrH:Ljava/lang/Long;

.field private static zzbrI:Ljava/lang/Double;

.field private static zzbrJ:Lcom/google/android/gms/tagmanager/zzdk;

.field private static zzbrK:Ljava/lang/String;

.field private static zzbrL:Ljava/lang/Boolean;

.field private static zzbrM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbrN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbrO:Lcom/google/android/gms/internal/zzag$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrG:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrH:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrI:Ljava/lang/Double;

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/zzdk;->zzar(J)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrJ:Lcom/google/android/gms/tagmanager/zzdk;

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrK:Ljava/lang/String;

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrL:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrM:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrN:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrK:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrO:Lcom/google/android/gms/internal/zzag$zza;

    return-void
.end method

.method private static getDouble(Ljava/lang/Object;)D
    .locals 2

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "getDouble received non-Number"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static zzKN()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzKO()Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrH:Ljava/lang/Long;

    return-object v0
.end method

.method public static zzKP()Ljava/lang/Double;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrI:Ljava/lang/Double;

    return-object v0
.end method

.method public static zzKQ()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrL:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static zzKR()Lcom/google/android/gms/tagmanager/zzdk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrJ:Lcom/google/android/gms/tagmanager/zzdk;

    return-object v0
.end method

.method public static zzKS()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrK:Ljava/lang/String;

    return-object v0
.end method

.method public static zzKT()Lcom/google/android/gms/internal/zzag$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrO:Lcom/google/android/gms/internal/zzag$zza;

    return-object v0
.end method

.method public static zzL(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrK:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzM(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzdk;
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzdk;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/tagmanager/zzdk;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzT(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzdk;->zzar(J)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzR(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdk;->zza(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzgO(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object p0

    goto :goto_0
.end method

.method public static zzN(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzT(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzgP(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzO(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzR(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzgQ(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzP(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzgR(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0
.end method

.method public static zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    instance-of v0, p0, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/zzag$zza;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iput v3, v4, Lcom/google/android/gms/internal/zzag$zza;->type:I

    check-cast p0, Ljava/lang/String;

    iput-object p0, v4, Lcom/google/android/gms/internal/zzag$zza;->zzjJ:Ljava/lang/String;

    :goto_1
    iput-boolean v2, v4, Lcom/google/android/gms/internal/zzag$zza;->zzjT:Z

    move-object p0, v4

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    iput v0, v4, Lcom/google/android/gms/internal/zzag$zza;->type:I

    check-cast p0, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrO:Lcom/google/android/gms/internal/zzag$zza;

    if-ne v7, v0, :cond_2

    sget-object p0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrO:Lcom/google/android/gms/internal/zzag$zza;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-boolean v0, v7, Lcom/google/android/gms/internal/zzag$zza;->zzjT:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v3

    :goto_3
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    new-array v0, v2, [Lcom/google/android/gms/internal/zzag$zza;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzag$zza;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzag$zza;->zzjK:[Lcom/google/android/gms/internal/zzag$zza;

    move v2, v1

    goto :goto_1

    :cond_6
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    iput v0, v4, Lcom/google/android/gms/internal/zzag$zza;->type:I

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/tagmanager/zzdl;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v9

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrO:Lcom/google/android/gms/internal/zzag$zza;

    if-eq v8, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrO:Lcom/google/android/gms/internal/zzag$zza;

    if-ne v9, v0, :cond_8

    :cond_7
    sget-object p0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrO:Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_0

    :cond_8
    if-nez v1, :cond_9

    iget-boolean v0, v8, Lcom/google/android/gms/internal/zzag$zza;->zzjT:Z

    if-nez v0, :cond_9

    iget-boolean v0, v9, Lcom/google/android/gms/internal/zzag$zza;->zzjT:Z

    if-eqz v0, :cond_a

    :cond_9
    move v0, v3

    :goto_5
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    new-array v0, v2, [Lcom/google/android/gms/internal/zzag$zza;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzag$zza;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzag$zza;->zzjL:[Lcom/google/android/gms/internal/zzag$zza;

    new-array v0, v2, [Lcom/google/android/gms/internal/zzag$zza;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzag$zza;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzag$zza;->zzjM:[Lcom/google/android/gms/internal/zzag$zza;

    move v2, v1

    goto/16 :goto_1

    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzR(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput v3, v4, Lcom/google/android/gms/internal/zzag$zza;->type:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/zzag$zza;->zzjJ:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x6

    iput v0, v4, Lcom/google/android/gms/internal/zzag$zza;->type:I

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzT(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/google/android/gms/internal/zzag$zza;->zzjP:J

    goto/16 :goto_1

    :cond_e
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    iput v0, v4, Lcom/google/android/gms/internal/zzag$zza;->type:I

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v4, Lcom/google/android/gms/internal/zzag$zza;->zzjQ:Z

    goto/16 :goto_1

    :cond_f
    const-string v1, "Converting to Value from unknown object type: "

    if-nez p0, :cond_10

    const-string v0, "null"

    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrO:Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static zzR(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzdk;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzKI()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzS(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/tagmanager/zzdk;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzKJ()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzT(Ljava/lang/Object;)J
    .locals 2

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "getInt64 received non-Number"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzgN(Ljava/lang/String;)Lcom/google/android/gms/internal/zzag$zza;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    iput-object p0, v0, Lcom/google/android/gms/internal/zzag$zza;->zzjO:Ljava/lang/String;

    return-object v0
.end method

.method private static zzgO(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdk;->zzgM(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to convert \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' to a number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrJ:Lcom/google/android/gms/tagmanager/zzdk;

    goto :goto_0
.end method

.method private static zzgP(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzgO(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdl;->zzbrJ:Lcom/google/android/gms/tagmanager/zzdk;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrH:Ljava/lang/Long;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdk;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static zzgQ(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzgO(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdl;->zzbrJ:Lcom/google/android/gms/tagmanager/zzdk;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrI:Ljava/lang/Double;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdk;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method private static zzgR(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdl;->zzbrL:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzag$zza;)Lcom/google/android/gms/tagmanager/zzdk;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzM(Ljava/lang/Object;)Lcom/google/android/gms/tagmanager/zzdk;

    move-result-object v0

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Long;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzN(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static zzj(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Double;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzO(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdl;->zzP(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    packed-switch v2, :pswitch_data_0

    iget v0, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to convert a value of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjJ:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjK:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjK:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjL:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjM:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    if-eq v2, v3, :cond_4

    const-string v2, "Converting an invalid value to object: "

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzag$zza;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjM:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjL:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjL:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjM:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzdl;->zzl(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_6

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "Trying to convert a macro reference to object"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "Trying to convert a function id to object"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjP:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjR:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v4, v3

    :goto_4
    if-ge v0, v4, :cond_9

    aget-object v5, v3, v0

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdl;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/tagmanager/zzdl;->zzbrK:Ljava/lang/String;

    if-ne v5, v6, :cond_8

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjQ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
