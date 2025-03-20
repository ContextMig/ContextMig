.class public Lcom/batch/android/json/JSONHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonArrayToArray(Lcom/batch/android/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "array"    # Lcom/batch/android/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 57
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/json/JSONHelper;->jsonObjectToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-object v1
.end method

.method public static jsonObjectToMap(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .param p0, "object"    # Lcom/batch/android/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 44
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/batch/android/json/JSONHelper;->jsonObjectToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method

.method public static jsonObjectToObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    instance-of v0, p0, Lcom/batch/android/json/JSONObject;

    if-eqz v0, :cond_1

    .line 28
    check-cast p0, Lcom/batch/android/json/JSONObject;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/batch/android/json/JSONHelper;->jsonObjectToMap(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    .line 36
    :cond_0
    :goto_0
    return-object p0

    .line 30
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/batch/android/json/JSONArray;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Lcom/batch/android/json/JSONArray;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/batch/android/json/JSONHelper;->jsonArrayToArray(Lcom/batch/android/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    goto :goto_0
.end method
