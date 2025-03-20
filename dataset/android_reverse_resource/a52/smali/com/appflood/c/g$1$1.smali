.class final Lcom/appflood/c/g$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/g$1;->requestFailed$440c3042(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/g$1;


# direct methods
.method constructor <init>(Lcom/appflood/c/g$1;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/g$1$1;->a:Lcom/appflood/c/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appflood/c/g$1$1;->a:Lcom/appflood/c/g$1;

    iget-object v0, v0, Lcom/appflood/c/g$1;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/g$1$1;->a:Lcom/appflood/c/g$1;

    iget-object v0, v0, Lcom/appflood/c/g$1;->a:Lorg/json/JSONObject;

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appflood/c/g$1$1;->a:Lcom/appflood/c/g$1;

    iget-object v0, v0, Lcom/appflood/c/g$1;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    iget-object v1, p0, Lcom/appflood/c/g$1$1;->a:Lcom/appflood/c/g$1;

    iget-object v1, v1, Lcom/appflood/c/g$1;->a:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
