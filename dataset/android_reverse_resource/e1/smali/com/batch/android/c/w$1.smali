.class Lcom/batch/android/c/w$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/c/w;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/c/w;


# direct methods
.method constructor <init>(Lcom/batch/android/c/w;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/batch/android/c/w$1;->a:Lcom/batch/android/c/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/batch/android/c/w$1;->a:Lcom/batch/android/c/w;

    invoke-static {v0}, Lcom/batch/android/c/w;->a(Lcom/batch/android/c/w;)Z

    move-result v1

    .line 78
    iget-object v0, p0, Lcom/batch/android/c/w$1;->a:Lcom/batch/android/c/w;

    invoke-static {v0}, Lcom/batch/android/c/w;->b(Lcom/batch/android/c/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/batch/android/c/w$1;->a:Lcom/batch/android/c/w;

    invoke-static {v0}, Lcom/batch/android/c/w;->c(Lcom/batch/android/c/w;)V

    .line 82
    :cond_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
