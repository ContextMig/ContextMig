.class Lcom/batch/android/d/c$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/l/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/d/c$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/d/c$2$1;


# direct methods
.method constructor <init>(Lcom/batch/android/d/c$2$1;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->c(Lcom/batch/android/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    iget-object v0, p0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    iget-object v0, v0, Lcom/batch/android/d/c;->a:Lcom/batch/android/i/c;

    new-instance v1, Lcom/batch/android/d/c$2$1$1$3;

    invoke-direct {v1, p0}, Lcom/batch/android/d/c$2$1$1$3;-><init>(Lcom/batch/android/d/c$2$1$1;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 235
    return-void
.end method

.method public a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/FailReason;",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->f(Lcom/batch/android/d/c;)Lcom/batch/android/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/batch/android/d/d;->a(Lcom/batch/android/FailReason;)V

    .line 203
    iget-object v0, p0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    iget-object v0, v0, Lcom/batch/android/d/c;->a:Lcom/batch/android/i/c;

    new-instance v1, Lcom/batch/android/d/c$2$1$1$2;

    invoke-direct {v1, p0, p2}, Lcom/batch/android/d/c$2$1$1$2;-><init>(Lcom/batch/android/d/c$2$1$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 215
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->f(Lcom/batch/android/d/c;)Lcom/batch/android/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/d/d;->b()V

    .line 182
    iget-object v0, p0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    iget-object v0, v0, Lcom/batch/android/d/c;->a:Lcom/batch/android/i/c;

    new-instance v1, Lcom/batch/android/d/c$2$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/batch/android/d/c$2$1$1$1;-><init>(Lcom/batch/android/d/c$2$1$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 194
    return-void
.end method
