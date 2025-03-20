.class public Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;
.super Landroid/os/AsyncTask;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/martykan/forecastie/AlarmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCityNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "GetCityNameTask"


# instance fields
.field final synthetic this$0:Lcz/martykan/forecastie/AlarmReceiver;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x115579dfb0f65060L

    const-string v2, "cz/martykan/forecastie/AlarmReceiver$GetCityNameTask"

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcz/martykan/forecastie/AlarmReceiver;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->$jacocoInit()[Z

    move-result-object v0

    .line 270
    iput-object p1, p0, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->$jacocoInit()[Z

    move-result-object v0

    .line 270
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    const/16 v2, 0x28

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 15

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->$jacocoInit()[Z

    move-result-object v9

    .line 275
    const/4 v8, 0x0

    aget-object v4, p1, v8

    .line 276
    .local v4, "lat":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, p1, v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    aput-boolean v11, v9, v10

    .line 278
    iget-object v10, p0, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    iget-object v10, v10, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    .line 279
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x3

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    .line 280
    const-string v11, "cs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x4

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    .line 283
    :goto_0
    const-string v11, "apiKey"

    iget-object v12, p0, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    iget-object v12, v12, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07007a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    const/4 v13, 0x1

    :try_start_0
    aput-boolean v13, v9, v12

    .line 286
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://api.openweathermap.org/data/2.5/weather?q=&lat="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&lon="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "&lang="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "&appid="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x7

    const/4 v11, 0x1

    aput-boolean v11, v9, v8

    .line 287
    const-string v8, "GetCityNameTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Request: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x8

    const/4 v11, 0x1

    aput-boolean v11, v9, v8

    .line 289
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    const/16 v11, 0x9

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    .line 291
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_4

    const/16 v11, 0xa

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    .line 292
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 293
    .local v6, "r":Ljava/io/BufferedReader;
    const-string v7, ""

    const/16 v8, 0xb

    const/4 v11, 0x1

    aput-boolean v11, v9, v8

    .line 295
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    const/16 v8, 0xc

    const/4 v11, 0x1

    aput-boolean v11, v9, v8

    .line 296
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "result":Ljava/lang/String;
    const/16 v8, 0xd

    const/4 v11, 0x1

    aput-boolean v11, v9, v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 321
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "r":Ljava/io/BufferedReader;
    .end local v7    # "result":Ljava/lang/String;
    :catch_0
    move-exception v8

    const/16 v10, 0x22

    const/4 v11, 0x1

    aput-boolean v11, v9, v10

    .line 322
    const-string v10, "GetCityNameTask"

    const-string v11, "Connection error"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v8, 0x23

    const/4 v10, 0x1

    aput-boolean v10, v9, v8

    .line 324
    :goto_2
    const/4 v8, 0x0

    const/16 v10, 0x24

    const/4 v11, 0x1

    aput-boolean v11, v9, v10

    return-object v8

    .line 281
    :cond_0
    const-string v3, "cz"

    .local v3, "language":Ljava/lang/String;
    const/4 v11, 0x5

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    goto/16 :goto_0

    .line 298
    .end local v3    # "language":Ljava/lang/String;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "r":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    const-string v8, "GetCityNameTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JSON Result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v8, 0xe

    const/4 v11, 0x1

    :try_start_2
    aput-boolean v11, v9, v8

    .line 300
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v11, 0xf

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    .line 301
    const-string v11, "name"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "city":Ljava/lang/String;
    const-string v1, ""

    const/16 v11, 0x10

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    .line 303
    const-string v11, "sys"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 304
    .local v2, "countryObj":Lorg/json/JSONObject;
    if-nez v2, :cond_2

    const/16 v8, 0x11

    const/4 v11, 0x1

    aput-boolean v11, v9, v8

    .line 307
    :goto_3
    const-string v8, "GetCityNameTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "City: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x14

    const/4 v11, 0x1

    aput-boolean v11, v9, v8

    .line 308
    iget-object v8, p0, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    iget-object v8, v8, Lcz/martykan/forecastie/AlarmReceiver;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v11, "city"

    const-string v12, ""

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x15

    const/4 v12, 0x1

    aput-boolean v12, v9, v11

    .line 309
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x16

    const/4 v13, 0x1

    aput-boolean v13, v9, v12

    .line 310
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const/16 v12, 0x17

    const/4 v13, 0x1

    aput-boolean v13, v9, v12

    .line 311
    const-string v12, "city"

    invoke-interface {v10, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v12, 0x18

    const/4 v13, 0x1

    aput-boolean v13, v9, v12

    .line 312
    const-string v12, "cityChanged"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    const/16 v11, 0x19

    const/4 v13, 0x1

    aput-boolean v13, v9, v11

    :goto_4
    invoke-interface {v10, v12, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v8, 0x1b

    const/4 v11, 0x1

    aput-boolean v11, v9, v8

    .line 313
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 317
    const/16 v8, 0x1c

    const/4 v10, 0x1

    :try_start_3
    aput-boolean v10, v9, v8

    .line 318
    .end local v0    # "city":Ljava/lang/String;
    .end local v2    # "countryObj":Lorg/json/JSONObject;
    :goto_5
    const/16 v8, 0x1f

    const/4 v10, 0x1

    aput-boolean v10, v9, v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 323
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "r":Ljava/io/BufferedReader;
    :goto_6
    const/16 v8, 0x21

    const/4 v10, 0x1

    aput-boolean v10, v9, v8

    goto/16 :goto_2

    .line 304
    .restart local v0    # "city":Ljava/lang/String;
    .restart local v2    # "countryObj":Lorg/json/JSONObject;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "r":Ljava/io/BufferedReader;
    :cond_2
    const/16 v8, 0x12

    const/4 v11, 0x1

    :try_start_4
    aput-boolean v11, v9, v8

    .line 305
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "country"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "country":Ljava/lang/String;
    const/16 v8, 0x13

    const/4 v11, 0x1

    aput-boolean v11, v9, v8
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 315
    .end local v0    # "city":Ljava/lang/String;
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "countryObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    const/16 v10, 0x1d

    const/4 v11, 0x1

    :try_start_5
    aput-boolean v11, v9, v10

    .line 316
    const-string v10, "GetCityNameTask"

    const-string v11, "An error occurred while reading the JSON object"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v8, 0x1e

    const/4 v10, 0x1

    aput-boolean v10, v9, v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 312
    .restart local v0    # "city":Ljava/lang/String;
    .restart local v2    # "countryObj":Lorg/json/JSONObject;
    :cond_3
    const/4 v8, 0x0

    const/16 v11, 0x1a

    const/4 v13, 0x1

    :try_start_6
    aput-boolean v13, v9, v11
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 319
    .end local v0    # "city":Ljava/lang/String;
    .end local v2    # "countryObj":Lorg/json/JSONObject;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "r":Ljava/io/BufferedReader;
    :cond_4
    :try_start_7
    const-string v10, "GetCityNameTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: Response code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x20

    const/4 v10, 0x1

    aput-boolean v10, v9, v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->$jacocoInit()[Z

    move-result-object v0

    .line 270
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->onPostExecute(Ljava/lang/Void;)V

    const/16 v1, 0x27

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->$jacocoInit()[Z

    move-result-object v0

    .line 329
    new-instance v1, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;

    iget-object v2, p0, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {v1, v2}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;-><init>(Lcz/martykan/forecastie/AlarmReceiver;)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcz/martykan/forecastie/AlarmReceiver$GetWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v1, 0x25

    aput-boolean v4, v0, v1

    .line 330
    new-instance v1, Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;

    iget-object v2, p0, Lcz/martykan/forecastie/AlarmReceiver$GetCityNameTask;->this$0:Lcz/martykan/forecastie/AlarmReceiver;

    invoke-direct {v1, v2}, Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;-><init>(Lcz/martykan/forecastie/AlarmReceiver;)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcz/martykan/forecastie/AlarmReceiver$GetLongTermWeatherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    const/16 v1, 0x26

    aput-boolean v4, v0, v1

    return-void
.end method
