.class public final Lcom/google/android/gms/internal/zztt;
.super Lcom/google/android/gms/internal/zzle;

# interfaces
.implements Lcom/google/android/gms/plus/model/moments/Moment;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zztu;

.field private static final zzauW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzld$zza",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field zzFA:Ljava/lang/String;

.field final zzFG:I

.field final zzauX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zzavK:Ljava/lang/String;

.field zzavS:Lcom/google/android/gms/internal/zztr;

.field zzavT:Lcom/google/android/gms/internal/zztr;

.field zzxV:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zztu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztt;->CREATOR:Lcom/google/android/gms/internal/zztu;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztt;->zzauW:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/zztt;->zzauW:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzld$zza;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zztt;->zzauW:Ljava/util/HashMap;

    const-string v1, "result"

    const-string v2, "result"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/internal/zztr;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzld$zza;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zztt;->zzauW:Ljava/util/HashMap;

    const-string v1, "startDate"

    const-string v2, "startDate"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzld$zza;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zztt;->zzauW:Ljava/util/HashMap;

    const-string v1, "target"

    const-string v2, "target"

    const/4 v3, 0x6

    const-class v4, Lcom/google/android/gms/internal/zztr;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzld$zza;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zztt;->zzauW:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzld$zza;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzld$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztt;->zzFG:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzauX:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/zztr;Ljava/lang/String;Lcom/google/android/gms/internal/zztr;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zztr;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zztr;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztt;->zzauX:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/zztt;->zzFG:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zztt;->zzFA:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zztt;->zzavS:Lcom/google/android/gms/internal/zztr;

    iput-object p5, p0, Lcom/google/android/gms/internal/zztt;->zzavK:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zztt;->zzavT:Lcom/google/android/gms/internal/zztr;

    iput-object p7, p0, Lcom/google/android/gms/internal/zztt;->zzxV:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Lcom/google/android/gms/internal/zztr;Ljava/lang/String;Lcom/google/android/gms/internal/zztr;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zztr;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zztr;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztt;->zzauX:Ljava/util/Set;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztt;->zzFG:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zztt;->zzFA:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zztt;->zzavS:Lcom/google/android/gms/internal/zztr;

    iput-object p4, p0, Lcom/google/android/gms/internal/zztt;->zzavK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zztt;->zzavT:Lcom/google/android/gms/internal/zztr;

    iput-object p6, p0, Lcom/google/android/gms/internal/zztt;->zzxV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zztt;->CREATOR:Lcom/google/android/gms/internal/zztu;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/zztt;

    if-nez v0, :cond_0

    move v0, v1

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zztt;

    .end local p1    # "obj":Ljava/lang/Object;
    sget-object v0, Lcom/google/android/gms/internal/zztt;->zzauW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzld$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztt;->zza(Lcom/google/android/gms/internal/zzld$zza;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztt;->zza(Lcom/google/android/gms/internal/zzld$zza;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztt;->zzb(Lcom/google/android/gms/internal/zzld$zza;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztt;->zzb(Lcom/google/android/gms/internal/zzld$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztt;->zza(Lcom/google/android/gms/internal/zzld$zza;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztt;->zzsd()Lcom/google/android/gms/internal/zztt;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzFA:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzavS:Lcom/google/android/gms/internal/zztr;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzavK:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzavT:Lcom/google/android/gms/internal/zztr;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzxV:Ljava/lang/String;

    return-object v0
.end method

.method public hasId()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzauX:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasResult()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzauX:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasStartDate()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzauX:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTarget()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzauX:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzauX:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zztt;->zzauW:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzld$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztt;->zza(Lcom/google/android/gms/internal/zzld$zza;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzld$zza;->zzjG()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztt;->zzb(Lcom/google/android/gms/internal/zzld$zza;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/zztt;->CREATOR:Lcom/google/android/gms/internal/zztu;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zztu;->zza(Lcom/google/android/gms/internal/zztt;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzld$zza;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzauX:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzld$zza;->zzjG()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzld$zza;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzld$zza;->zzjG()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzld$zza;->zzjG()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzFA:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzavS:Lcom/google/android/gms/internal/zztr;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzavK:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzavT:Lcom/google/android/gms/internal/zztr;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zztt;->zzxV:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public synthetic zzjz()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztt;->zzsb()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public zzsb()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzld$zza",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zztt;->zzauW:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzsd()Lcom/google/android/gms/internal/zztt;
    .locals 0

    return-object p0
.end method
