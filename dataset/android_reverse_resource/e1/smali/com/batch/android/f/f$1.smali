.class Lcom/batch/android/f/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/f;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/f/f;


# direct methods
.method constructor <init>(Lcom/batch/android/f/f;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 3

    .prologue
    .line 234
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-eq p1, v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->a(Lcom/batch/android/f/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "Tracker - Starting a new flush executor"

    invoke-static {v0}, Lcom/batch/android/c/o;->d(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/batch/android/f/f$1;->a:Lcom/batch/android/f/f;

    invoke-static {v0}, Lcom/batch/android/f/f;->f(Lcom/batch/android/f/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/batch/android/f/f$1$1;

    invoke-direct {v1, p0}, Lcom/batch/android/f/f$1$1;-><init>(Lcom/batch/android/f/f$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 279
    :cond_0
    return-void
.end method
