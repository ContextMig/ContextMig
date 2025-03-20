.class public abstract Lcom/batch/android/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/d/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/d/c$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/batch/android/i/c;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Lcom/batch/android/d/c$a;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/batch/android/d/d;


# direct methods
.method public constructor <init>(Lcom/batch/android/i/c;Lcom/batch/android/d/c$a;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Lcom/batch/android/c/p;

    invoke-direct {v0}, Lcom/batch/android/c/p;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/d/c;->f:Ljava/util/concurrent/ExecutorService;

    .line 71
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "runtimeManager==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    if-nez p2, :cond_1

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iput-object p1, p0, Lcom/batch/android/d/c;->a:Lcom/batch/android/i/c;

    .line 82
    iput-object p2, p0, Lcom/batch/android/d/c;->c:Lcom/batch/android/d/c$a;

    .line 83
    new-instance v0, Lcom/batch/android/d/d;

    invoke-virtual {p1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/batch/android/d/d;-><init>(Landroid/content/Context;Lcom/batch/android/d/d$a;)V

    iput-object v0, p0, Lcom/batch/android/d/c;->g:Lcom/batch/android/d/d;

    .line 85
    new-instance v0, Lcom/batch/android/d/c$1;

    invoke-direct {v0, p0}, Lcom/batch/android/d/c$1;-><init>(Lcom/batch/android/d/c;)V

    iput-object v0, p0, Lcom/batch/android/d/c;->b:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/batch/android/d/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "ba_ws_succeed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "ba_network_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/d/c;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/b/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/batch/android/d/c;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/batch/android/d/c;->e()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/batch/android/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/batch/android/d/c;->g:Lcom/batch/android/d/d;

    invoke-virtual {v0}, Lcom/batch/android/d/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/batch/android/d/c;->a:Lcom/batch/android/i/c;

    new-instance v1, Lcom/batch/android/d/c$2;

    invoke-direct {v1, p0}, Lcom/batch/android/d/c$2;-><init>(Lcom/batch/android/d/c;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/batch/android/d/c;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/batch/android/d/c;->f()V

    return-void
.end method

.method static synthetic c(Lcom/batch/android/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/batch/android/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/batch/android/d/c;)Lcom/batch/android/d/c$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/batch/android/d/c;->c:Lcom/batch/android/d/c$a;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/d/c;->a(Z)V

    .line 125
    return-void
.end method

.method static synthetic e(Lcom/batch/android/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/batch/android/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/batch/android/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/batch/android/d/c;->d()V

    .line 263
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/batch/android/d/c;)Lcom/batch/android/d/d;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/batch/android/d/c;->g:Lcom/batch/android/d/d;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/batch/android/d/c;->g:Lcom/batch/android/d/d;

    invoke-virtual {v0}, Lcom/batch/android/d/d;->c()V

    .line 272
    iget-object v0, p0, Lcom/batch/android/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/batch/android/d/c;->d()V

    .line 276
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/batch/android/d/c;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/batch/android/d/c;->f:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/util/List;Lcom/batch/android/l/a/e;)Lcom/batch/android/c/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;",
            "Lcom/batch/android/l/a/e;",
            ")",
            "Lcom/batch/android/c/ac;"
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/batch/android/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    invoke-direct {p0}, Lcom/batch/android/d/c;->d()V

    .line 252
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/batch/android/d/c;->a(Z)V

    .line 284
    return-void
.end method

.method protected abstract c()Ljava/lang/String;
.end method
