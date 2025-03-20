.class public Lcom/batch/android/h/b;
.super Lcom/batch/android/h/d;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/batch/android/h/e;->d:Lcom/batch/android/h/e;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/h/d;-><init>(Landroid/content/Context;Lcom/batch/android/h/e;)V

    .line 39
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "version <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p4, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    if-nez p5, :cond_2

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tags==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    iput-wide p2, p0, Lcom/batch/android/h/b;->a:J

    .line 55
    iput-object p4, p0, Lcom/batch/android/h/b;->b:Ljava/util/Map;

    .line 56
    iput-object p5, p0, Lcom/batch/android/h/b;->c:Ljava/util/Map;

    .line 57
    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Lcom/batch/android/h/d;->a()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 66
    const-string v1, "ver"

    iget-wide v2, p0, Lcom/batch/android/h/b;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    .line 67
    const-string v1, "tags"

    new-instance v2, Lcom/batch/android/json/JSONObject;

    iget-object v3, p0, Lcom/batch/android/h/b;->c:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 68
    const-string v1, "attrs"

    new-instance v2, Lcom/batch/android/json/JSONObject;

    iget-object v3, p0, Lcom/batch/android/h/b;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 70
    return-object v0
.end method
