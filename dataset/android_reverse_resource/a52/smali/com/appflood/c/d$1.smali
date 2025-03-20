.class final Lcom/appflood/c/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/d;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login Failed. code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/appflood/c/d;->d()Lcom/appflood/c/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/appflood/c/d;->d()Lcom/appflood/c/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appflood/c/d$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/appflood/c/d;->b(Lcom/appflood/c/d$a;)Lcom/appflood/c/d$a;

    :cond_0
    invoke-static {}, Lcom/appflood/c/d;->e()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/appflood/c/d$1$1;

    invoke-direct {v0}, Lcom/appflood/c/d$1$1;-><init>()V

    sget v1, Lcom/appflood/c/d;->w:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/appflood/c/f;->a(Ljava/util/TimerTask;J)V

    :cond_1
    invoke-static {}, Lcom/appflood/c/d;->g()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/appflood/c/d;->b(Lcom/appflood/c/d$a;)Lcom/appflood/c/d$a;

    invoke-virtual {p1}, Lcom/appflood/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ret"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "msg"

    invoke-static {v1, v3, v4}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1

    const-string v2, "data"

    invoke-static {v1, v2}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/appflood/c/d;->a(Lorg/json/JSONObject;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login Success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/appflood/c/d;->g()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login Failed. Error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
