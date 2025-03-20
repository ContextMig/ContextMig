.class final Lcom/appflood/c/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/AppFlood$AFRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/c;


# direct methods
.method constructor <init>(Lcom/appflood/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/c$2;->a:Lcom/appflood/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "result"

    invoke-static {p1, v0, v4}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "array"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    if-ne v2, v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/appflood/c/c$2;->a:Lcom/appflood/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setArray length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    array-length v2, v0

    if-gtz v2, :cond_1

    iget-object v0, v1, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/appflood/c/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    invoke-interface {v0, v4}, Lcom/appflood/c/c$a;->a(Z)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "json erro "

    invoke-static {v0, v3}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v0, v1, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    array-length v0, v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/appflood/c/c$3;

    invoke-direct {v0, v1}, Lcom/appflood/c/c$3;-><init>(Lcom/appflood/c/c;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/appflood/c/f;->a(Ljava/util/TimerTask;J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appflood/c/c$2;->a:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/c$2;->a:Lcom/appflood/c/c;

    iget-boolean v0, v0, Lcom/appflood/c/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/c$2;->a:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    invoke-interface {v0, v4}, Lcom/appflood/c/c$a;->a(Z)V

    iget-object v0, p0, Lcom/appflood/c/c$2;->a:Lcom/appflood/c/c;

    iput-boolean v4, v0, Lcom/appflood/c/c;->e:Z

    goto :goto_1
.end method
