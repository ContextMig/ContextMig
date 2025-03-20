.class public Lcom/batch/android/c/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ba_network_changed"

.field public static final b:Ljava/lang/String; = "ba_is_connected"


# instance fields
.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c/w;->e:Landroid/content/Context;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/batch/android/c/w;->d()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/c/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Lcom/batch/android/c/w$1;

    invoke-direct {v0, p0}, Lcom/batch/android/c/w$1;-><init>(Lcom/batch/android/c/w;)V

    iput-object v0, p0, Lcom/batch/android/c/w;->d:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/batch/android/c/w;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/c/w;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/b/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/batch/android/c/w;)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/batch/android/c/w;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/batch/android/c/w;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/batch/android/c/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ba_network_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v1, "ba_is_connected"

    invoke-virtual {p0}, Lcom/batch/android/c/w;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/batch/android/c/w;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/b/a;->a(Landroid/content/Intent;)Z

    .line 116
    return-void
.end method

.method static synthetic c(Lcom/batch/android/c/w;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/batch/android/c/w;->c()V

    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/batch/android/c/w;->e:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 129
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/batch/android/c/w;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/c/w;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/batch/android/b/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 95
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/batch/android/c/w;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
