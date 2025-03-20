.class Lcom/batch/android/f/e$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/e$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/batch/android/f/e$4;


# direct methods
.method constructor <init>(Lcom/batch/android/f/e$4;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/batch/android/f/e$4$1;->b:Lcom/batch/android/f/e$4;

    iput-object p2, p0, Lcom/batch/android/f/e$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 624
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-eq p1, v0, :cond_1

    .line 626
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "push.token"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "push.appversion"

    iget-object v3, p0, Lcom/batch/android/f/e$4$1;->b:Lcom/batch/android/f/e$4;

    iget-object v3, v3, Lcom/batch/android/f/e$4;->b:Lcom/batch/android/f/e;

    invoke-static {v3}, Lcom/batch/android/f/e;->c(Lcom/batch/android/f/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 630
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "push.token"

    iget-object v3, p0, Lcom/batch/android/f/e$4$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 633
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Batch.Push: Registration id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/f/e$4$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/batch/android/c/o;->c(ZLjava/lang/String;)V

    .line 636
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/batch/android/f/e$4$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    :cond_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/f/e$4$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/batch/android/p;->a(Lcom/batch/android/i/c;Ljava/lang/String;)Z

    .line 641
    :cond_1
    return-void
.end method
