.class public Lcom/google/android/gms/auth/api/signin/internal/zzn;
.super Ljava/lang/Object;


# static fields
.field private static final zzakO:Ljava/util/concurrent/locks/Lock;

.field private static zzakP:Lcom/google/android/gms/auth/api/signin/internal/zzn;


# instance fields
.field private final zzakQ:Ljava/util/concurrent/locks/Lock;

.field private final zzakR:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakO:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakQ:Ljava/util/concurrent/locks/Lock;

    const-string v0, "com.google.android.gms.signin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakR:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static zzas(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzn;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakP:Lcom/google/android/gms/auth/api/signin/internal/zzn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzn;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakP:Lcom/google/android/gms/auth/api/signin/internal/zzn;

    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakP:Lcom/google/android/gms/auth/api/signin/internal/zzn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakO:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ":"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method zzcA(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "googleSignInOptions"

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzcB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzcx(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected zzcB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakQ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakR:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakQ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzakQ:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzcz(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "googleSignInAccount"

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzcB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzcv(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public zzrB()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    const-string v0, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzcB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzcz(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0
.end method

.method public zzrC()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    const-string v0, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzcB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzcA(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    return-object v0
.end method
