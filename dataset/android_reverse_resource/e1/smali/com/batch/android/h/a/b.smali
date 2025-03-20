.class public Lcom/batch/android/h/a/b;
.super Lcom/batch/android/h/a/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/batch/android/h/e;->d:Lcom/batch/android/h/e;

    invoke-direct {p0, p1, v0, p2}, Lcom/batch/android/h/a/d;-><init>(Landroid/content/Context;Lcom/batch/android/h/e;Lcom/batch/android/json/JSONObject;)V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/batch/android/h/a/b;->b:J

    .line 26
    const-string v0, "trid"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "trid"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "trid"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/h/a/b;->a:Ljava/lang/String;

    .line 31
    :cond_0
    const-string v0, "ver"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ver"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    const-string v0, "ver"

    invoke-virtual {p2, v0}, Lcom/batch/android/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/h/a/b;->b:J

    .line 35
    :cond_1
    return-void
.end method
