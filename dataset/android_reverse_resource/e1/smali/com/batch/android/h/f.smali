.class public final Lcom/batch/android/h/f;
.super Lcom/batch/android/h/d;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/batch/android/h/e;->a:Lcom/batch/android/h/e;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/h/d;-><init>(Landroid/content/Context;Lcom/batch/android/h/e;)V

    .line 39
    iput-boolean p2, p0, Lcom/batch/android/h/f;->b:Z

    .line 40
    iput-object p3, p0, Lcom/batch/android/h/f;->c:Ljava/lang/String;

    .line 41
    iput-boolean p4, p0, Lcom/batch/android/h/f;->a:Z

    .line 42
    return-void
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
    .line 49
    invoke-super {p0}, Lcom/batch/android/h/d;->a()Lcom/batch/android/json/JSONObject;

    move-result-object v1

    .line 51
    const-string v2, "silent"

    iget-boolean v0, p0, Lcom/batch/android/h/f;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    .line 53
    const-string v0, "push"

    iget-boolean v2, p0, Lcom/batch/android/h/f;->b:Z

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    .line 54
    iget-boolean v0, p0, Lcom/batch/android/h/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/h/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/h/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "pushId"

    iget-object v2, p0, Lcom/batch/android/h/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 59
    :cond_0
    return-object v1

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
