.class Lcom/batch/android/d/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/d/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/d/c;


# direct methods
.method constructor <init>(Lcom/batch/android/d/c;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->c(Lcom/batch/android/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->g(Lcom/batch/android/d/c;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/batch/android/d/c$2$1;

    invoke-direct {v1, p0}, Lcom/batch/android/d/c$2$1;-><init>(Lcom/batch/android/d/c$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 240
    :cond_0
    return-void
.end method
