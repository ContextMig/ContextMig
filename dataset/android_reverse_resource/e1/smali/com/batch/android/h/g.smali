.class public Lcom/batch/android/h/g;
.super Lcom/batch/android/h/d;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/batch/android/h/e;->b:Lcom/batch/android/h/e;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/h/d;-><init>(Landroid/content/Context;Lcom/batch/android/h/e;)V

    .line 39
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Empty events"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/batch/android/h/g;->a:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0}, Lcom/batch/android/h/d;->a()Lcom/batch/android/json/JSONObject;

    move-result-object v2

    .line 54
    new-instance v3, Lcom/batch/android/json/JSONObject;

    invoke-direct {v3}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 55
    new-instance v4, Lcom/batch/android/json/JSONArray;

    invoke-direct {v4}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 56
    new-instance v5, Lcom/batch/android/json/JSONArray;

    invoke-direct {v5}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/batch/android/h/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/d/b;

    .line 60
    new-instance v7, Lcom/batch/android/json/JSONObject;

    invoke-direct {v7}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 62
    invoke-virtual {v0}, Lcom/batch/android/d/b;->e()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lcom/batch/android/d/b;->c()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 65
    const-string v8, "id"

    invoke-virtual {v0}, Lcom/batch/android/d/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 66
    const-string v8, "date"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/ae;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 67
    const-string v1, "name"

    invoke-virtual {v0}, Lcom/batch/android/d/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 69
    invoke-virtual {v0}, Lcom/batch/android/d/b;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "sDate"

    invoke-virtual {v0}, Lcom/batch/android/d/b;->d()Ljava/util/Date;

    move-result-object v8

    invoke-static {v8}, Lcom/batch/android/c/ae;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/batch/android/d/b;->f()Ljava/lang/String;

    move-result-object v8

    .line 75
    const-string v9, "params"

    if-nez v8, :cond_2

    sget-object v1, Lcom/batch/android/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v7, v9, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 77
    invoke-virtual {v0}, Lcom/batch/android/d/b;->j()Ljava/lang/String;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    .line 80
    const-string v8, "session"

    invoke-virtual {v7, v8, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/batch/android/d/b;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v5, v7}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    .line 92
    :goto_2
    const-string v1, "ts"

    invoke-virtual {v0}, Lcom/batch/android/d/b;->h()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    goto :goto_0

    .line 75
    :cond_2
    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1, v8}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v4, v7}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;

    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {v4}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 97
    const-string v0, "new"

    invoke-virtual {v3, v0, v4}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 100
    :cond_5
    invoke-virtual {v5}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 102
    const-string v0, "old"

    invoke-virtual {v3, v0, v5}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 105
    :cond_6
    const-string v0, "evts"

    invoke-virtual {v2, v0, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 107
    return-object v2
.end method
