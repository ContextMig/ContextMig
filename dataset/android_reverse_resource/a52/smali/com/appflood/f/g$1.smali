.class final Lcom/appflood/f/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/appflood/f/g;


# direct methods
.method constructor <init>(Lcom/appflood/f/g;Z)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/f/g$1;->b:Lcom/appflood/f/g;

    iput-boolean p2, p0, Lcom/appflood/f/g$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 3

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/appflood/c/e;->a(ZI)V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 5

    invoke-virtual {p1}, Lcom/appflood/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ret"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "show_cb_url"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/appflood/c/d;->r:Ljava/lang/String;

    const-string v2, "data"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/appflood/e/j;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Lorg/json/JSONObject;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Failed to get a jsonobject from JsonArray"

    invoke-static {v1, v4}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/appflood/f/g$1;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    iput-object v3, v0, Lcom/appflood/c/g;->a:[Lorg/json/JSONObject;

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appflood/f/g$1;->b:Lcom/appflood/f/g;

    invoke-virtual {v0, v3}, Lcom/appflood/f/g;->a([Lorg/json/JSONObject;)V

    goto :goto_2
.end method
