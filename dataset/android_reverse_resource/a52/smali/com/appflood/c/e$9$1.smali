.class final Lcom/appflood/c/e$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/e$9;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/e$9;


# direct methods
.method constructor <init>(Lcom/appflood/c/e$9;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/e$9$1;->a:Lcom/appflood/c/e$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/c/e$9$1;->a:Lcom/appflood/c/e$9;

    iget-object v0, v0, Lcom/appflood/c/e$9;->a:Lcom/appflood/AppFlood$AFRequestDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appflood/c/e;->a(Lcom/appflood/AppFlood$AFRequestDelegate;ZLorg/json/JSONArray;)V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/appflood/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ret"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "data"

    invoke-static {v0, v1, v3}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/c/e$9$1;->a:Lcom/appflood/c/e$9;

    iget-object v1, v1, Lcom/appflood/c/e$9;->a:Lcom/appflood/AppFlood$AFRequestDelegate;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/appflood/c/e;->a(Lcom/appflood/AppFlood$AFRequestDelegate;ZLorg/json/JSONArray;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appflood/c/e$9$1;->a:Lcom/appflood/c/e$9;

    iget-object v0, v0, Lcom/appflood/c/e$9;->a:Lcom/appflood/AppFlood$AFRequestDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/appflood/c/e;->a(Lcom/appflood/AppFlood$AFRequestDelegate;ZLorg/json/JSONArray;)V

    goto :goto_0
.end method
