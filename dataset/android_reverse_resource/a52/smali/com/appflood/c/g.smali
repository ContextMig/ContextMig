.class public final Lcom/appflood/c/g;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/appflood/c/g;


# instance fields
.field public a:[Lorg/json/JSONObject;

.field b:[Lorg/json/JSONObject;

.field public c:I

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field g:Z

.field private h:[[Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/appflood/c/g;->c:I

    iput-object v1, p0, Lcom/appflood/c/g;->d:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appflood/c/g;->g:Z

    return-void
.end method

.method public static a()Lcom/appflood/c/g;
    .locals 1

    sget-object v0, Lcom/appflood/c/g;->i:Lcom/appflood/c/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appflood/c/g;

    invoke-direct {v0}, Lcom/appflood/c/g;-><init>()V

    sput-object v0, Lcom/appflood/c/g;->i:Lcom/appflood/c/g;

    :cond_0
    sget-object v0, Lcom/appflood/c/g;->i:Lcom/appflood/c/g;

    return-object v0
.end method

.method static a(Lorg/json/JSONArray;)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [Lorg/json/JSONObject;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "Failed to get a jsonobject from JsonArray"

    invoke-static {v1, v3}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    iput-object v2, v0, Lcom/appflood/c/g;->b:[Lorg/json/JSONObject;

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "show_cb_url"

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->r:Ljava/lang/String;

    const-string v0, "data"

    invoke-static {p0, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/appflood/e/j;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Lorg/json/JSONObject;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "Failed to get a jsonobject from JsonArray"

    invoke-static {v1, v4}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    iput-object v3, v0, Lcom/appflood/c/g;->a:[Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appflood/c/g;->d:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final declared-synchronized a(ILcom/appflood/AppFlood$AFRequestDelegate;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/appflood/c/d;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, ""

    if-nez p1, :cond_2

    const-string v0, "game"

    :cond_1
    :goto_1
    new-instance v1, Lcom/appflood/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appflood/c/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/appflood/c/g$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/appflood/c/g$2;-><init>(Lcom/appflood/c/g;ILcom/appflood/AppFlood$AFRequestDelegate;)V

    iput-object v0, v1, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v1}, Lcom/appflood/b/b;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    :try_start_2
    const-string v0, "app"

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_4
    const-string v0, "mix"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final a(ILcom/appflood/AppFlood$AFRequestDelegate;Z)V
    .locals 9

    const/16 v8, 0xd

    const/16 v7, 0x11

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/appflood/c/g;->h:[[Lorg/json/JSONObject;

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [[Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/appflood/c/g;->h:[[Lorg/json/JSONObject;

    :cond_0
    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v2

    iget-object v4, v2, Lcom/appflood/c/g;->b:[Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v4, :cond_6

    array-length v2, v4

    if-lez v2, :cond_6

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    if-ne p1, v8, :cond_6

    :cond_1
    move v2, v0

    :goto_0
    iget-object v5, p0, Lcom/appflood/c/g;->h:[[Lorg/json/JSONObject;

    if-ne p1, v7, :cond_7

    move v3, v1

    :goto_1
    aget-object v3, v5, v3

    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/appflood/c/g;->h:[[Lorg/json/JSONObject;

    if-ne p1, v7, :cond_8

    move v3, v1

    :goto_2
    aget-object v3, v5, v3

    array-length v3, v3

    if-lez v3, :cond_9

    const/16 v3, 0x10

    if-eq p1, v3, :cond_2

    if-ne p1, v7, :cond_9

    :cond_2
    move v3, v0

    :goto_3
    if-nez v2, :cond_3

    if-eqz v3, :cond_a

    :cond_3
    :try_start_0
    const-string v0, "array"

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    if-eqz p2, :cond_4

    invoke-interface {p2, v6}, Lcom/appflood/AppFlood$AFRequestDelegate;->onFinish(Lorg/json/JSONObject;)V

    :cond_4
    if-eqz p3, :cond_a

    :cond_5
    :goto_5
    return-void

    :cond_6
    move v2, v1

    goto :goto_0

    :cond_7
    move v3, v0

    goto :goto_1

    :cond_8
    move v3, v0

    goto :goto_2

    :cond_9
    move v3, v1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "json error"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    if-ne p1, v8, :cond_b

    if-nez v2, :cond_5

    :cond_b
    sget-object v0, Lcom/appflood/c/d;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v8, Lcom/appflood/b/b;

    sget-object v0, Lcom/appflood/c/d;->k:Ljava/lang/String;

    const-string v1, "{1}"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/appflood/c/g$1;

    move-object v1, p0

    move v4, p1

    move v5, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/appflood/c/g$1;-><init>(Lcom/appflood/c/g;ZZIZLorg/json/JSONObject;Lcom/appflood/AppFlood$AFRequestDelegate;)V

    iput-object v0, v8, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v8}, Lcom/appflood/b/b;->e()V

    goto :goto_5
.end method

.method public final a(Z[Lorg/json/JSONObject;)V
    .locals 2

    iget-object v1, p0, Lcom/appflood/c/g;->h:[[Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object p2, v1, v0

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
