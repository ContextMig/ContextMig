.class Lcom/batch/android/d/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/d/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/d/c$2;


# direct methods
.method constructor <init>(Lcom/batch/android/d/c$2;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->d(Lcom/batch/android/d/c;)Lcom/batch/android/d/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/batch/android/d/c$a;->a()Ljava/util/List;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v1, v1, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v1}, Lcom/batch/android/d/c;->e(Lcom/batch/android/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->c(Lcom/batch/android/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start sending events : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v1, v1, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    new-instance v2, Lcom/batch/android/d/c$2$1$1;

    invoke-direct {v2, p0}, Lcom/batch/android/d/c$2$1$1;-><init>(Lcom/batch/android/d/c$2$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/d/c;->a(Ljava/util/List;Lcom/batch/android/l/a/e;)Lcom/batch/android/c/ac;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Lcom/batch/android/c/ac;->run()V

    goto :goto_0
.end method
