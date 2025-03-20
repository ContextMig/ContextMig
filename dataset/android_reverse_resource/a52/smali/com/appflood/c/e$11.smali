.class final Lcom/appflood/c/e$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private synthetic b:Lcom/appflood/AppFlood$AFRequestDelegate;

.field private synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private synthetic d:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/appflood/AppFlood$AFRequestDelegate;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/e$11;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/appflood/c/e$11;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    iput-object p3, p0, Lcom/appflood/c/e$11;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p4, p0, Lcom/appflood/c/e$11;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/c/e$11;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lcom/appflood/c/e$11;->d:I

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appflood/c/e$11;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    if-eqz v0, :cond_0

    const-string v0, "result"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/appflood/c/e$11;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    invoke-interface {v1, v0}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/appflood/c/e$11;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/appflood/c/e$11;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    if-eqz v0, :cond_0

    const-string v0, "result"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/appflood/c/e$11;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    invoke-interface {v1, v0}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
