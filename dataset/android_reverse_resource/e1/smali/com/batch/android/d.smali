.class abstract Lcom/batch/android/d;
.super Lcom/batch/android/e;
.source "SourceFile"


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/h/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/batch/android/e;-><init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private a(Lcom/batch/android/h/e;)Lcom/batch/android/h/a/d;
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/batch/android/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/a/d;

    .line 250
    invoke-virtual {v0}, Lcom/batch/android/h/a/d;->c()Lcom/batch/android/h/e;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 256
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/batch/android/h/d;
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/batch/android/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/d;

    .line 269
    invoke-virtual {v0}, Lcom/batch/android/h/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/batch/android/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v0, "queries"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "queries"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Missing queries attribute in response"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    const-string v0, "queries"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of queries and responses mismatch("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/batch/android/d;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " queries / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " responses)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/d;->g:Ljava/util/List;

    .line 171
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 173
    invoke-virtual {v2, v0}, Lcom/batch/android/json/JSONArray;->getJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    .line 178
    const-string v1, "id"

    invoke-virtual {v3, v1}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-direct {p0, v1}, Lcom/batch/android/d;->b(Ljava/lang/String;)Lcom/batch/android/h/d;

    move-result-object v4

    .line 180
    if-nez v4, :cond_3

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find query with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_3
    const/4 v1, 0x0

    .line 189
    sget-object v5, Lcom/batch/android/d$1;->a:[I

    invoke-virtual {v4}, Lcom/batch/android/h/d;->c()Lcom/batch/android/h/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/h/e;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 208
    :goto_1
    iget-object v3, p0, Lcom/batch/android/d;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :pswitch_0
    new-instance v1, Lcom/batch/android/h/a/e;

    iget-object v4, p0, Lcom/batch/android/d;->e:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lcom/batch/android/h/a/e;-><init>(Landroid/content/Context;Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    .line 195
    :pswitch_1
    new-instance v1, Lcom/batch/android/h/a/f;

    iget-object v4, p0, Lcom/batch/android/d;->e:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lcom/batch/android/h/a/f;-><init>(Landroid/content/Context;Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    .line 198
    :pswitch_2
    new-instance v1, Lcom/batch/android/h/a/c;

    iget-object v4, p0, Lcom/batch/android/d;->e:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lcom/batch/android/h/a/c;-><init>(Landroid/content/Context;Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    .line 201
    :pswitch_3
    new-instance v1, Lcom/batch/android/h/a/b;

    iget-object v4, p0, Lcom/batch/android/d;->e:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lcom/batch/android/h/a/b;-><init>(Landroid/content/Context;Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    .line 204
    :pswitch_4
    new-instance v1, Lcom/batch/android/h/a/a;

    iget-object v4, p0, Lcom/batch/android/d;->e:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lcom/batch/android/h/a/a;-><init>(Landroid/content/Context;Lcom/batch/android/json/JSONObject;)V

    goto :goto_1

    .line 210
    :cond_4
    return-void

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected a(Ljava/lang/Class;Lcom/batch/android/h/e;)Lcom/batch/android/h/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/batch/android/h/a/d;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/batch/android/h/e;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/batch/android/d;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You forgot to call parseResponse method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    invoke-direct {p0, p2}, Lcom/batch/android/d;->a(Lcom/batch/android/h/e;)Lcom/batch/android/h/a/d;

    move-result-object v0

    .line 229
    if-nez v0, :cond_1

    .line 231
    const/4 v0, 0x0

    .line 234
    :cond_1
    return-object v0
.end method

.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/h/d;",
            ">;"
        }
    .end annotation
.end method

.method protected a(Lcom/batch/android/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/batch/android/d;->b(Lcom/batch/android/json/JSONObject;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/batch/android/d;->c(Lcom/batch/android/json/JSONObject;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/batch/android/d;->d(Lcom/batch/android/json/JSONObject;)V

    .line 143
    return-void
.end method

.method protected m()Lcom/batch/android/g/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/g/c",
            "<",
            "Lcom/batch/android/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    .line 66
    invoke-super {p0}, Lcom/batch/android/e;->m()Lcom/batch/android/g/c;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/batch/android/d;->f:Ljava/util/List;

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/batch/android/d;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/d;->f:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/batch/android/d;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a WS without any query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    invoke-interface {v0}, Lcom/batch/android/g/c;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/json/JSONObject;

    move-object v1, v0

    goto :goto_0

    .line 93
    :cond_2
    :try_start_0
    new-instance v2, Lcom/batch/android/json/JSONArray;

    invoke-direct {v2}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/batch/android/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/d;

    .line 97
    invoke-virtual {v0}, Lcom/batch/android/h/d;->a()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 104
    const-string v2, "Error while adding queries to WS body"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :goto_2
    new-instance v0, Lcom/batch/android/g/a;

    invoke-direct {v0, v1}, Lcom/batch/android/g/a;-><init>(Lcom/batch/android/json/JSONObject;)V

    return-object v0

    .line 100
    :cond_3
    :try_start_1
    const-string v0, "queries"

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
