.class Lcom/google/android/gms/tagmanager/zzci;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzci$zza;
    }
.end annotation


# static fields
.field private static zzbqb:Lcom/google/android/gms/tagmanager/zzci;


# instance fields
.field private volatile zzbnR:Ljava/lang/String;

.field private volatile zzbqc:Lcom/google/android/gms/tagmanager/zzci$zza;

.field private volatile zzbqd:Ljava/lang/String;

.field private volatile zzbqe:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzci;->clear()V

    return-void
.end method

.method static zzKh()Lcom/google/android/gms/tagmanager/zzci;
    .locals 2

    const-class v1, Lcom/google/android/gms/tagmanager/zzci;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzci;->zzbqb:Lcom/google/android/gms/tagmanager/zzci;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzci;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzci;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzci;->zzbqb:Lcom/google/android/gms/tagmanager/zzci;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzci;->zzbqb:Lcom/google/android/gms/tagmanager/zzci;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzgE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private zzs(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gtm_debug=x"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/tagmanager/zzci$zza;->zzbqf:Lcom/google/android/gms/tagmanager/zzci$zza;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqc:Lcom/google/android/gms/tagmanager/zzci$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqd:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbnR:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqe:Ljava/lang/String;

    return-void
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbnR:Ljava/lang/String;

    return-object v0
.end method

.method zzKi()Lcom/google/android/gms/tagmanager/zzci$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqc:Lcom/google/android/gms/tagmanager/zzci$zza;

    return-object v0
.end method

.method zzKj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqd:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized zzr(Landroid/net/Uri;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Container preview url: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    const-string v1, ".*?&gtm_debug=x$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/gms/tagmanager/zzci$zza;->zzbqh:Lcom/google/android/gms/tagmanager/zzci$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqc:Lcom/google/android/gms/tagmanager/zzci$zza;

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzci;->zzs(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqe:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqc:Lcom/google/android/gms/tagmanager/zzci$zza;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzci$zza;->zzbqg:Lcom/google/android/gms/tagmanager/zzci$zza;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqc:Lcom/google/android/gms/tagmanager/zzci$zza;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzci$zza;->zzbqh:Lcom/google/android/gms/tagmanager/zzci$zza;

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "/r?"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqe:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqd:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqe:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/zzci;->zzgE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbnR:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_3

    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_3
    sget-object v1, Lcom/google/android/gms/tagmanager/zzci$zza;->zzbqg:Lcom/google/android/gms/tagmanager/zzci$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqc:Lcom/google/android/gms/tagmanager/zzci$zza;

    goto :goto_1

    :cond_4
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/zzci;->zzgE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbnR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Exit preview mode for container: "

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbnR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/zzci$zza;->zzbqf:Lcom/google/android/gms/tagmanager/zzci$zza;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqc:Lcom/google/android/gms/tagmanager/zzci$zza;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzci;->zzbqd:Ljava/lang/String;

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    const-string v3, "Invalid preview uri: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzaW(Ljava/lang/String;)V

    move v0, v1

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
