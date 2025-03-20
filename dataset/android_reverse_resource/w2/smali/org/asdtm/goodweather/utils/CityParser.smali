.class public Lorg/asdtm/goodweather/utils/CityParser;
.super Ljava/lang/Object;
.source "CityParser.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final APPID:Ljava/lang/String; = "1487dd8a93bfd85d278d9ac8dcfee94c"

.field private static final ENDPOINT:Ljava/lang/String; = "http://api.openweathermap.org/data/2.5/find"

.field private static final TAG:Ljava/lang/String; = "CityParser"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/CityParser;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x22235becb8c96095L    # -1.3970273105088532E144

    const-string v2, "org/asdtm/goodweather/utils/CityParser"

    const/16 v3, 0x2e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/CityParser;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/CityParser;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getCity(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/asdtm/goodweather/model/CitySearch;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/CityParser;->$jacocoInit()[Z

    move-result-object v8

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v1, "citySearchList":Ljava/util/List;, "Ljava/util/List<Lorg/asdtm/goodweather/model/CitySearch;>;"
    const/4 v7, 0x1

    const/4 v9, 0x1

    :try_start_0
    aput-boolean v9, v8, v7

    .line 31
    invoke-static {p0}, Lorg/asdtm/goodweather/utils/CityParser;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 32
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x3

    const/4 v9, 0x1

    :try_start_1
    aput-boolean v9, v8, v7

    .line 34
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v9, 0xc8

    if-ne v7, v9, :cond_0

    const/4 v6, 0x4

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 38
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x9

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 39
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 41
    .local v4, "inputStream":Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v7, v7, [B

    const/16 v9, 0xa

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 43
    :goto_0
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    if-lez v0, :cond_2

    const/16 v9, 0xb

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 44
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 v9, 0xc

    const/4 v10, 0x1

    aput-boolean v10, v8, v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 67
    .end local v0    # "bytesRead":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    :goto_1
    const/16 v7, 0x1e

    const/4 v9, 0x1

    :try_start_2
    aput-boolean v9, v8, v7

    .line 68
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    if-nez v2, :cond_5

    const/16 v6, 0x1f

    aput-boolean v13, v8, v6

    .line 75
    :goto_2
    const/16 v6, 0x26

    aput-boolean v13, v8, v6

    .end local v1    # "citySearchList":Ljava/util/List;, "Ljava/util/List<Lorg/asdtm/goodweather/model/CitySearch;>;"
    :goto_3
    return-object v1

    .line 70
    .restart local v1    # "citySearchList":Ljava/util/List;, "Ljava/util/List<Lorg/asdtm/goodweather/model/CitySearch;>;"
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    if-nez v2, :cond_1

    const/4 v7, 0x5

    aput-boolean v13, v8, v7

    .line 35
    :goto_4
    const/16 v7, 0x8

    aput-boolean v13, v8, v7

    move-object v1, v6

    goto :goto_3

    .line 70
    :cond_1
    const/4 v7, 0x6

    aput-boolean v13, v8, v7

    .line 71
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v7, 0x7

    aput-boolean v13, v8, v7

    goto :goto_4

    .line 46
    .restart local v0    # "bytesRead":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    const/16 v7, 0xd

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 48
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v9, 0x1

    aput-boolean v9, v8, v6

    .line 49
    const-string v6, "list"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/16 v7, 0xf

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 51
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 53
    .local v5, "listArrayCount":I
    const/16 v7, 0x10

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    :goto_5
    if-eq v3, v5, :cond_3

    const/16 v7, 0x11

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 54
    new-instance v7, Lorg/asdtm/goodweather/model/CitySearch;

    invoke-direct {v7}, Lorg/asdtm/goodweather/model/CitySearch;-><init>()V

    const/16 v9, 0x12

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 55
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const/16 v10, 0x13

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 56
    const-string v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/asdtm/goodweather/model/CitySearch;->setCityName(Ljava/lang/String;)V

    const/16 v10, 0x14

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 58
    const-string v10, "coord"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const/16 v11, 0x15

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 59
    const-string v11, "lon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/asdtm/goodweather/model/CitySearch;->setLongitude(Ljava/lang/String;)V

    const/16 v11, 0x16

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 60
    const-string v11, "lat"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/asdtm/goodweather/model/CitySearch;->setLatitude(Ljava/lang/String;)V

    const/16 v10, 0x17

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 62
    const-string v10, "sys"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const/16 v10, 0x18

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 63
    const-string v10, "country"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/asdtm/goodweather/model/CitySearch;->setCountryCode(Ljava/lang/String;)V

    const/16 v9, 0x19

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 64
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v3, v3, 0x1

    .local v3, "i":I
    const/16 v7, 0x1a

    const/4 v9, 0x1

    aput-boolean v9, v8, v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 67
    .end local v0    # "bytesRead":I
    .end local v3    # "i":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "listArrayCount":I
    :catch_1
    move-exception v6

    goto/16 :goto_1

    .line 70
    .restart local v0    # "bytesRead":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "listArrayCount":I
    :cond_3
    if-nez v2, :cond_4

    const/16 v6, 0x1b

    aput-boolean v13, v8, v6

    goto/16 :goto_2

    :cond_4
    const/16 v6, 0x1c

    aput-boolean v13, v8, v6

    .line 71
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v6, 0x1d

    aput-boolean v13, v8, v6

    goto/16 :goto_2

    .line 70
    .end local v0    # "bytesRead":I
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "listArrayCount":I
    :cond_5
    const/16 v6, 0x20

    aput-boolean v13, v8, v6

    .line 71
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v6, 0x21

    aput-boolean v13, v8, v6

    goto/16 :goto_2

    .line 70
    :catchall_0
    move-exception v7

    move-object v2, v6

    move-object v6, v7

    :goto_6
    if-nez v2, :cond_6

    const/16 v7, 0x22

    aput-boolean v13, v8, v7

    .line 73
    :goto_7
    const/16 v7, 0x25

    aput-boolean v13, v8, v7

    throw v6

    .line 70
    :cond_6
    const/16 v7, 0x23

    aput-boolean v13, v8, v7

    .line 71
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v7, 0x24

    aput-boolean v13, v8, v7

    goto :goto_7

    .line 70
    :catchall_1
    move-exception v6

    goto :goto_6

    .line 67
    :catch_2
    move-exception v7

    move-object v2, v6

    move-object v6, v7

    goto/16 :goto_1

    :catch_3
    move-exception v7

    move-object v2, v6

    move-object v6, v7

    goto/16 :goto_1
.end method

.method private static getUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/CityParser;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    const-string v1, "http://api.openweathermap.org/data/2.5/find"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    const/16 v3, 0x27

    aput-boolean v5, v0, v3

    .line 80
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "like"

    const/16 v4, 0x28

    aput-boolean v5, v0, v4

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "cnt"

    const-string v3, "15"

    const/16 v4, 0x29

    aput-boolean v5, v0, v4

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "APPID"

    const-string v3, "1487dd8a93bfd85d278d9ac8dcfee94c"

    const/16 v4, 0x2a

    aput-boolean v5, v0, v4

    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/16 v2, 0x2b

    aput-boolean v5, v0, v2

    .line 84
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-boolean v5, v0, v2

    .line 85
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2d

    aput-boolean v5, v0, v1

    return-object v2
.end method
