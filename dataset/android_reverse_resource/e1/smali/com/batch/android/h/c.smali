.class public Lcom/batch/android/h/c;
.super Lcom/batch/android/h/d;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/batch/android/h/e;->c:Lcom/batch/android/h/e;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/h/d;-><init>(Landroid/content/Context;Lcom/batch/android/h/e;)V

    .line 38
    if-nez p2, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pushtoken==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p2, p0, Lcom/batch/android/h/c;->a:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private e()I
    .locals 2

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/h/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "push.notiftype"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 71
    const-class v0, Lcom/batch/android/PushNotificationType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/PushNotificationType;->toValue(Ljava/util/EnumSet;)I

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "Error while computing notif type"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const-class v0, Lcom/batch/android/PushNotificationType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/PushNotificationType;->toValue(Ljava/util/EnumSet;)I

    move-result v0

    goto :goto_0
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
    .line 51
    invoke-super {p0}, Lcom/batch/android/h/d;->a()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 53
    const-string v1, "tok"

    iget-object v2, p0, Lcom/batch/android/h/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 54
    const-string v1, "nty"

    invoke-direct {p0}, Lcom/batch/android/h/c;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    .line 56
    return-object v0
.end method
