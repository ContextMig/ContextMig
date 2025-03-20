.class Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;
.super Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;
.source "WorkerFragmentToRetrieveJsonString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetrieveWeatherInformationJsonStringTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar",
        "<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        "Landroid/support/v4/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final CURRENT_TIME_SQL:Ljava/lang/Long;

.field private final CURRENT_TIME_WEB:Ljava/lang/Long;

.field final synthetic this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x66cd1c9c1e6397a6L    # -2.713152860580081E-187

    const-string v2, "com/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask"

    const/16 v3, 0x38

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-direct {p0}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;-><init>()V

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 140
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->CURRENT_TIME_SQL:Ljava/lang/Long;

    aput-boolean v4, v0, v4

    .line 141
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->CURRENT_TIME_WEB:Ljava/lang/Long;

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;-><init>(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)V

    const/16 v1, 0x37

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getJsonStringFromWebService(Ljava/net/URL;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v2

    .line 211
    :try_start_0
    new-instance v1, Lcom/haringeymobile/ukweather/data/JsonFetcher;

    invoke-direct {v1}, Lcom/haringeymobile/ukweather/data/JsonFetcher;-><init>()V

    invoke-virtual {v1, p1}, Lcom/haringeymobile/ukweather/data/JsonFetcher;->getJsonString(Ljava/net/URL;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/16 v3, 0x18

    aput-boolean v4, v2, v3

    .line 213
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 213
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    const/16 v3, 0x19

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method private getWeatherDataCachePeriod()J
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v2}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$100(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "data_cache_period"

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    const/16 v5, 0x15

    aput-boolean v6, v1, v5

    .line 196
    invoke-virtual {v4}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060130

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16

    aput-boolean v6, v1, v3

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, "minutes":I
    mul-int/lit8 v2, v0, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const/16 v4, 0x17

    aput-boolean v6, v1, v4

    return-wide v2
.end method

.method private isWeatherDataAvailable(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v4

    .line 252
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2e

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 253
    const-string v6, "cod"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v5, 0x2f

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v1, "httpStatusCode":I
    :goto_0
    const/16 v2, 0x34

    aput-boolean v3, v4, v2

    move v2, v3

    :goto_1
    return v2

    .line 253
    .end local v1    # "httpStatusCode":I
    :cond_0
    const/16 v6, 0x30

    const/4 v7, 0x1

    :try_start_1
    aput-boolean v7, v4, v6

    .line 254
    const-string v6, "cod"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 255
    .restart local v1    # "httpStatusCode":I
    const/16 v5, 0xc8

    if-ne v5, v1, :cond_1

    const/16 v5, 0x31

    const/4 v6, 0x1

    aput-boolean v6, v4, v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Lorg/json/JSONException;
    const/16 v5, 0x33

    aput-boolean v3, v4, v5

    goto :goto_1

    .line 256
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/16 v5, 0x32

    aput-boolean v3, v4, v5

    goto :goto_1
.end method

.method private recordNeedsToBeUpdatedForWeatherInfo(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v2

    .line 180
    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    .line 181
    const/16 v0, 0x10

    aput-boolean v1, v2, v0

    .line 184
    :goto_0
    return v1

    .line 183
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v0, 0x11

    aput-boolean v1, v2, v0

    .line 184
    sub-long/2addr v4, p1

    invoke-direct {p0}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->getWeatherDataCachePeriod()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/16 v0, 0x12

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_1
    const/16 v3, 0x14

    aput-boolean v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v3, 0x13

    aput-boolean v1, v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URL;)Landroid/support/v4/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/net/URL;",
            ")",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v5

    .line 145
    new-instance v1, Lcom/haringeymobile/ukweather/database/SqlOperation;

    iget-object v6, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v6}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$100(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v7}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$200(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/haringeymobile/ukweather/database/SqlOperation;-><init>(Landroid/content/Context;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;)V

    const/4 v6, 0x3

    aput-boolean v8, v5, v6

    .line 146
    iget-object v6, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v6}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$300(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/haringeymobile/ukweather/database/SqlOperation;->getJsonStringForWeatherInfo(I)Landroid/support/v4/util/Pair;

    move-result-object v6

    const/4 v1, 0x4

    aput-boolean v8, v5, v1

    .line 147
    iget-object v1, v6, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 149
    .local v2, "lastQueryTime":J
    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    const/4 v1, 0x5

    aput-boolean v8, v5, v1

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xa

    aput-boolean v8, v5, v1

    .line 154
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->getJsonStringFromWebService(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "jsonDataObtainedFromWebService":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 157
    cmp-long v1, v2, v10

    if-nez v1, :cond_2

    const/16 v1, 0xb

    aput-boolean v8, v5, v1

    .line 159
    invoke-static {v4, v4}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v1

    const/16 v4, 0xc

    aput-boolean v8, v5, v4

    .line 169
    .end local v0    # "jsonDataObtainedFromWebService":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 149
    :cond_0
    const/4 v1, 0x6

    aput-boolean v8, v5, v1

    .line 150
    invoke-direct {p0, v2, v3}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->recordNeedsToBeUpdatedForWeatherInfo(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    aput-boolean v8, v5, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    aput-boolean v8, v5, v1

    .line 152
    iget-object v1, v6, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->CURRENT_TIME_SQL:Ljava/lang/Long;

    invoke-static {v1, v4}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v1

    const/16 v4, 0x9

    aput-boolean v8, v5, v4

    goto :goto_1

    .line 162
    .restart local v0    # "jsonDataObtainedFromWebService":Ljava/lang/String;
    :cond_2
    iget-object v1, v6, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v1

    const/16 v4, 0xd

    aput-boolean v8, v5, v4

    goto :goto_1

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->CURRENT_TIME_WEB:Ljava/lang/Long;

    invoke-static {v0, v1}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v1

    const/16 v4, 0xe

    aput-boolean v8, v5, v4

    goto :goto_1

    .line 169
    .end local v0    # "jsonDataObtainedFromWebService":Ljava/lang/String;
    :cond_4
    const/16 v1, 0xf

    aput-boolean v8, v5, v1

    move-object v1, v4

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->doInBackground([Ljava/net/URL;)Landroid/support/v4/util/Pair;

    move-result-object v1

    const/16 v2, 0x36

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Landroid/support/v4/util/Pair;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v2

    .line 219
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/utils/AsyncTaskWithProgressBar;->onPostExecute(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, "jsonString":Ljava/lang/String;
    if-nez v0, :cond_1

    const/16 v1, 0x1a

    aput-boolean v8, v2, v1

    .line 223
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$100(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x1b

    aput-boolean v8, v2, v1

    .line 240
    :goto_0
    const/16 v1, 0x2d

    aput-boolean v8, v2, v1

    return-void

    .line 223
    :cond_0
    const/16 v1, 0x1c

    aput-boolean v8, v2, v1

    .line 224
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$100(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f060057

    invoke-static {v1, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v3, 0x1d

    aput-boolean v8, v2, v3

    .line 225
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x1e

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$400(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;

    move-result-object v1

    if-nez v1, :cond_2

    const/16 v1, 0x1f

    aput-boolean v8, v2, v1

    .line 236
    :goto_1
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$100(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_6

    const/16 v1, 0x29

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 227
    :cond_2
    invoke-direct {p0, v0}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->isWeatherDataAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x20

    aput-boolean v8, v2, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x21

    aput-boolean v8, v2, v1

    .line 228
    iget-object v1, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v1, 0x22

    aput-boolean v8, v2, v1

    .line 229
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->CURRENT_TIME_WEB:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-nez v1, :cond_4

    const/16 v1, 0x23

    aput-boolean v8, v2, v1

    .line 230
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$400(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;

    move-result-object v1

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v3}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$200(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v3

    invoke-interface {v1, v0, v3, v8}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;->onRecentJsonStringRetrieved(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Z)V

    const/16 v1, 0x24

    aput-boolean v8, v2, v1

    .line 236
    :goto_2
    const/16 v1, 0x28

    aput-boolean v8, v2, v1

    goto :goto_0

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->CURRENT_TIME_SQL:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-nez v1, :cond_5

    const/16 v1, 0x25

    aput-boolean v8, v2, v1

    .line 232
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$400(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;

    move-result-object v1

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v3}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$200(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v3

    invoke-interface {v1, v0, v3, v9}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;->onRecentJsonStringRetrieved(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;Z)V

    const/16 v1, 0x26

    aput-boolean v8, v2, v1

    goto :goto_2

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$400(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;

    move-result-object v1

    iget-object v3, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v3}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$200(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Lcom/haringeymobile/ukweather/weather/WeatherInfoType;

    move-result-object v3

    invoke-interface {v1, v0, v3, v4, v5}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$OnJsonStringRetrievedListener;->onOldJsonStringRetrieved(Ljava/lang/String;Lcom/haringeymobile/ukweather/weather/WeatherInfoType;J)V

    const/16 v1, 0x27

    aput-boolean v8, v2, v1

    goto :goto_2

    .line 236
    :cond_6
    const/16 v1, 0x2a

    aput-boolean v8, v2, v1

    .line 237
    iget-object v1, p0, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->this$0:Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;

    invoke-static {v1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;->access$100(Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString;)Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f060058

    invoke-static {v1, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v3, 0x2b

    aput-boolean v8, v2, v3

    .line 238
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x2c

    aput-boolean v8, v2, v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    check-cast p1, Landroid/support/v4/util/Pair;

    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/weather/WorkerFragmentToRetrieveJsonString$RetrieveWeatherInformationJsonStringTask;->onPostExecute(Landroid/support/v4/util/Pair;)V

    const/16 v1, 0x35

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
