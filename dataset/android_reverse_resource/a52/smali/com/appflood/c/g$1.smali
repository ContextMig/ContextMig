.class final Lcom/appflood/c/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/g;->a(ILcom/appflood/AppFlood$AFRequestDelegate;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/appflood/AppFlood$AFRequestDelegate;

.field private synthetic c:Z

.field private synthetic d:Z

.field private synthetic e:I

.field private synthetic f:Z

.field private synthetic g:Lcom/appflood/c/g;


# direct methods
.method constructor <init>(Lcom/appflood/c/g;ZZIZLorg/json/JSONObject;Lcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/g$1;->g:Lcom/appflood/c/g;

    iput-boolean p2, p0, Lcom/appflood/c/g$1;->c:Z

    iput-boolean p3, p0, Lcom/appflood/c/g$1;->d:Z

    iput p4, p0, Lcom/appflood/c/g$1;->e:I

    iput-boolean p5, p0, Lcom/appflood/c/g$1;->f:Z

    iput-object p6, p0, Lcom/appflood/c/g$1;->a:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/appflood/c/g$1;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/appflood/c/g$1;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appflood/c/g$1;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/appflood/c/g$1$1;

    invoke-direct {v0, p0}, Lcom/appflood/c/g$1$1;-><init>(Lcom/appflood/c/g$1;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 8

    const/16 v7, 0x11

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/appflood/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "ret"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "data"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v3, :cond_7

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v5, v0, [Lorg/json/JSONObject;

    move v0, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    :try_start_0
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v5, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "Failed to get a jsonobject from JsonArray"

    invoke-static {v3, v6}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/appflood/c/g$1;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    iput-object v5, v0, Lcom/appflood/c/g;->b:[Lorg/json/JSONObject;

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/appflood/c/g$1;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appflood/c/g$1;->g:Lcom/appflood/c/g;

    iget v3, p0, Lcom/appflood/c/g$1;->e:I

    if-ne v3, v7, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1, v5}, Lcom/appflood/c/g;->a(Z[Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/appflood/c/g$1;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appflood/c/g$1;->g:Lcom/appflood/c/g;

    iget v3, p0, Lcom/appflood/c/g$1;->e:I

    if-ne v3, v7, :cond_6

    :goto_3
    invoke-virtual {v0, v2, v5}, Lcom/appflood/c/g;->a(Z[Lorg/json/JSONObject;)V

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/appflood/c/g$1;->a:Lorg/json/JSONObject;

    const-string v1, "array"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v0, p0, Lcom/appflood/c/g$1;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/c/g$1;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    iget-object v1, p0, Lcom/appflood/c/g$1;->a:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "json error"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/appflood/c/g$1;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/appflood/c/g$1;->a:Lorg/json/JSONObject;

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appflood/c/g$1;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/c/g$1;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    iget-object v1, p0, Lcom/appflood/c/g$1;->a:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "json error"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2
.end method
