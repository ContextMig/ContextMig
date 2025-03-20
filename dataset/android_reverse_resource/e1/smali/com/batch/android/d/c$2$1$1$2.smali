.class Lcom/batch/android/d/c$2$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/d/c$2$1$1;->a(Lcom/batch/android/FailReason;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/batch/android/d/c$2$1$1;


# direct methods
.method constructor <init>(Lcom/batch/android/d/c$2$1$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/batch/android/d/c$2$1$1$2;->b:Lcom/batch/android/d/c$2$1$1;

    iput-object p2, p0, Lcom/batch/android/d/c$2$1$1$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-eq p1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/batch/android/d/c$2$1$1$2;->b:Lcom/batch/android/d/c$2$1$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->d(Lcom/batch/android/d/c;)Lcom/batch/android/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/d/c$2$1$1$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/batch/android/d/c$a;->b(Ljava/util/List;)V

    .line 211
    iget-object v0, p0, Lcom/batch/android/d/c$2$1$1$2;->b:Lcom/batch/android/d/c$2$1$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1$1;->a:Lcom/batch/android/d/c$2$1;

    iget-object v0, v0, Lcom/batch/android/d/c$2$1;->a:Lcom/batch/android/d/c$2;

    iget-object v0, v0, Lcom/batch/android/d/c$2;->a:Lcom/batch/android/d/c;

    invoke-static {v0}, Lcom/batch/android/d/c;->e(Lcom/batch/android/d/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    :cond_0
    return-void
.end method
