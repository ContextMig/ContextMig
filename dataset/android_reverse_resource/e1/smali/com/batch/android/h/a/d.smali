.class public abstract Lcom/batch/android/h/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/batch/android/h/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/h/e;Lcom/batch/android/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    const-string v0, "id"

    invoke-virtual {p3, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/batch/android/h/a/d;-><init>(Landroid/content/Context;Lcom/batch/android/h/e;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/h/e;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p3, :cond_1

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "queryID==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    if-nez p2, :cond_2

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "queryType==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/h/a/d;->b:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/batch/android/h/a/d;->a:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/batch/android/h/a/d;->c:Lcom/batch/android/h/e;

    .line 70
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/batch/android/h/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/batch/android/h/e;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/batch/android/h/a/d;->c:Lcom/batch/android/h/e;

    return-object v0
.end method

.method protected d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/batch/android/h/a/d;->b:Landroid/content/Context;

    return-object v0
.end method
