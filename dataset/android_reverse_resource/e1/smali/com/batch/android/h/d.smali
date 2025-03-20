.class public abstract Lcom/batch/android/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/batch/android/h/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/h/e;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-nez p2, :cond_1

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/h/d;->a:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/batch/android/h/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/h/d;->b:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/batch/android/h/d;->c:Lcom/batch/android/h/e;

    .line 53
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/batch/android/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 100
    const-string v1, "id"

    iget-object v2, p0, Lcom/batch/android/h/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 101
    const-string v1, "type"

    iget-object v2, p0, Lcom/batch/android/h/d;->c:Lcom/batch/android/h/e;

    invoke-virtual {v2}, Lcom/batch/android/h/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 103
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/batch/android/h/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/batch/android/h/e;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/batch/android/h/d;->c:Lcom/batch/android/h/e;

    return-object v0
.end method

.method protected d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/batch/android/h/d;->a:Landroid/content/Context;

    return-object v0
.end method
