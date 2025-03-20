.class public Lcom/batch/android/h/a;
.super Lcom/batch/android/h/d;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/batch/android/h/e;->e:Lcom/batch/android/h/e;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/h/d;-><init>(Landroid/content/Context;Lcom/batch/android/h/e;)V

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "version <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    if-nez p4, :cond_1

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transactionID==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput-wide p2, p0, Lcom/batch/android/h/a;->a:J

    .line 42
    iput-object p4, p0, Lcom/batch/android/h/a;->b:Ljava/lang/String;

    .line 43
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
    .line 50
    invoke-super {p0}, Lcom/batch/android/h/d;->a()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 52
    const-string v1, "ver"

    iget-wide v2, p0, Lcom/batch/android/h/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    .line 53
    const-string v1, "trid"

    iget-object v2, p0, Lcom/batch/android/h/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 55
    return-object v0
.end method
