.class Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;
.super Lcz/martykan/forecastie/tasks/GenericRequestTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvideCityNameTask"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcz/martykan/forecastie/activities/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x20245192ce99cbfbL    # -5.7991605158221216E153

    const-string v2, "cz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcz/martykan/forecastie/activities/MainActivity;Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->$jacocoInit()[Z

    move-result-object v0

    .line 854
    iput-object p1, p0, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 855
    invoke-direct {p0, p2, p3, p4}, Lcz/martykan/forecastie/tasks/GenericRequestTask;-><init>(Landroid/content/Context;Lcz/martykan/forecastie/activities/MainActivity;Landroid/app/ProgressDialog;)V

    .line 856
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method protected getAPIName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->$jacocoInit()[Z

    move-result-object v0

    .line 863
    const-string v1, "weather"

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Lcz/martykan/forecastie/tasks/TaskOutput;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->$jacocoInit()[Z

    move-result-object v0

    .line 899
    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->handleTaskOutput(Lcz/martykan/forecastie/tasks/TaskOutput;)V

    .line 900
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->$jacocoInit()[Z

    move-result-object v0

    .line 852
    check-cast p1, Lcz/martykan/forecastie/tasks/TaskOutput;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->onPostExecute(Lcz/martykan/forecastie/tasks/TaskOutput;)V

    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->$jacocoInit()[Z

    move-result-object v0

    .line 859
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Lcz/martykan/forecastie/tasks/ParseResult;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->$jacocoInit()[Z

    move-result-object v4

    .line 868
    const-string v3, "RESULT"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v4, v3

    .line 870
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 872
    const-string v5, "cod"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 873
    const-string v6, "404"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x7

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 878
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "city":Ljava/lang/String;
    const-string v1, ""

    const/16 v5, 0xa

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 880
    const-string v5, "sys"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 881
    .local v2, "countryObj":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    const/16 v3, 0xb

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 885
    :goto_0
    iget-object v3, p0, Lcz/martykan/forecastie/activities/MainActivity$ProvideCityNameTask;->this$0:Lcz/martykan/forecastie/activities/MainActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcz/martykan/forecastie/activities/MainActivity;->access$000(Lcz/martykan/forecastie/activities/MainActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    sget-object v3, Lcz/martykan/forecastie/tasks/ParseResult;->OK:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v5, 0x11

    aput-boolean v8, v4, v5

    .end local v2    # "countryObj":Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 873
    .end local v0    # "city":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x8

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v4, v3

    .line 874
    const-string v3, "Geolocation"

    const-string v5, "No city found"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    sget-object v3, Lcz/martykan/forecastie/tasks/ParseResult;->CITY_NOT_FOUND:Lcz/martykan/forecastie/tasks/ParseResult;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x9

    aput-boolean v8, v4, v5

    goto :goto_1

    .line 881
    .restart local v0    # "city":Ljava/lang/String;
    .restart local v2    # "countryObj":Lorg/json/JSONObject;
    :cond_1
    const/16 v3, 0xc

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v4, v3

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "country"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "country":Ljava/lang/String;
    const/16 v3, 0xd

    const/4 v5, 0x1

    aput-boolean v5, v4, v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 887
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "countryObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    const/16 v5, 0xe

    aput-boolean v8, v4, v5

    .line 888
    const-string v5, "JSONException Data"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xf

    aput-boolean v8, v4, v5

    .line 889
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 890
    sget-object v3, Lcz/martykan/forecastie/tasks/ParseResult;->JSON_EXCEPTION:Lcz/martykan/forecastie/tasks/ParseResult;

    const/16 v5, 0x10

    aput-boolean v8, v4, v5

    goto :goto_1
.end method
