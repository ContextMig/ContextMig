.class final Lcom/appflood/c/e$10;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/e;->a(ZLorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lorg/json/JSONObject;

.field private synthetic c:Lcom/appflood/c/e;


# direct methods
.method constructor <init>(Lcom/appflood/c/e;ZLorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/e$10;->c:Lcom/appflood/c/e;

    iput-boolean p2, p0, Lcom/appflood/c/e$10;->a:Z

    iput-object p3, p0, Lcom/appflood/c/e$10;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/appflood/c/e$10;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/e$10;->c:Lcom/appflood/c/e;

    iget-object v0, v0, Lcom/appflood/c/e;->a:Lcom/appflood/AppFlood$AFEventDelegate;

    iget-object v1, p0, Lcom/appflood/c/e$10;->b:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/appflood/AppFlood$AFEventDelegate;->onClick(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appflood/c/e$10;->c:Lcom/appflood/c/e;

    iget-object v0, v0, Lcom/appflood/c/e;->a:Lcom/appflood/AppFlood$AFEventDelegate;

    iget-object v1, p0, Lcom/appflood/c/e$10;->b:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/appflood/AppFlood$AFEventDelegate;->onClose(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
