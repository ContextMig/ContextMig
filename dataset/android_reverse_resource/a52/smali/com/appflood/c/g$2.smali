.class final Lcom/appflood/c/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/g;->a(ILcom/appflood/AppFlood$AFRequestDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/appflood/AppFlood$AFRequestDelegate;

.field private synthetic c:Lcom/appflood/c/g;


# direct methods
.method constructor <init>(Lcom/appflood/c/g;ILcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iput p2, p0, Lcom/appflood/c/g$2;->a:I

    iput-object p3, p0, Lcom/appflood/c/g$2;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/c/g$2;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v1, 0x1

    const/4 v8, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/appflood/b/b;->a()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/appflood/e/j;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ret"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aaaaaaaaa TYPE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/appflood/c/g$2;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/appflood/b/b;->a:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    const-string v4, "use_default"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, v3, Lcom/appflood/c/g;->g:Z

    const-string v1, ""

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-boolean v3, v3, Lcom/appflood/c/g;->g:Z

    if-nez v3, :cond_1

    const-string v1, "bg_url"

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget v3, p0, Lcom/appflood/c/g$2;->a:I

    if-ge v3, v9, :cond_2

    iget v3, p0, Lcom/appflood/c/g$2;->a:I

    if-ne v3, v8, :cond_b

    :cond_2
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    :goto_0
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    :goto_1
    iget v3, p0, Lcom/appflood/c/g$2;->a:I

    if-ne v3, v8, :cond_3

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->d:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/appflood/c/g;->d:Ljava/util/ArrayList;

    :cond_3
    :goto_2
    const-string v3, "data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appflood/e/j;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_11

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "name"

    const-string v6, "name"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "des"

    const-string v6, "desc"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "click_url"

    const-string v6, "click_url"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "show_cb_url"

    const-string v6, "show_cb_url"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "back_url"

    const-string v6, "back_url"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "icon_url"

    const-string v6, "icon_url"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, p0, Lcom/appflood/c/g$2;->a:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/appflood/c/g$2;->a:I

    if-eq v5, v9, :cond_4

    iget v5, p0, Lcom/appflood/c/g$2;->a:I

    if-ne v5, v8, :cond_10

    :cond_4
    const-string v5, "app_type"

    const-string v6, "game"

    invoke-static {v3, v5, v6}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "game"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    iget v3, p0, Lcom/appflood/c/g$2;->a:I

    if-ne v3, v8, :cond_6

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get a JsonArray"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8
    :goto_6
    return-void

    :cond_9
    :try_start_1
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    :cond_b
    iget v3, p0, Lcom/appflood/c/g$2;->a:I

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    goto/16 :goto_2

    :cond_c
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    :cond_d
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    goto/16 :goto_2

    :cond_e
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    :cond_f
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget-object v3, v3, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    iget-object v3, p0, Lcom/appflood/c/g$2;->c:Lcom/appflood/c/g;

    iget v5, p0, Lcom/appflood/c/g$2;->a:I

    invoke-virtual {v3, v5}, Lcom/appflood/c/g;->a(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/appflood/c/g$2;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appflood/c/g$2;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    const-string v2, "result"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "listbgurl"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V

    goto/16 :goto_6

    :cond_12
    iget-object v0, p0, Lcom/appflood/c/g$2;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appflood/c/g$2;->b:Lcom/appflood/AppFlood$AFRequestDelegate;

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method
