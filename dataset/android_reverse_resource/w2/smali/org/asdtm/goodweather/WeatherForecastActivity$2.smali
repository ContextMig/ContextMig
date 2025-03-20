.class Lorg/asdtm/goodweather/WeatherForecastActivity$2;
.super Ljava/lang/Object;
.source "WeatherForecastActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/asdtm/goodweather/WeatherForecastActivity;->getWeather()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x427b511b579b1d99L    # 1.8771978141938499E12

    const-string v2, "org/asdtm/goodweather/WeatherForecastActivity$2"

    const/16 v3, 0x1e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/asdtm/goodweather/WeatherForecastActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    iput-object p1, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->$jacocoInit()[Z

    move-result-object v7

    .line 153
    iget-object v5, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    const-string v6, "config"

    invoke-virtual {v5, v6, v8}, Lorg/asdtm/goodweather/WeatherForecastActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    aput-boolean v12, v7, v12

    .line 154
    const-string v6, "latitude"

    const-string v8, "51.51"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aput-boolean v12, v7, v8

    .line 155
    const-string v8, "longitude"

    const-string v9, "-0.13"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x3

    aput-boolean v12, v7, v5

    .line 156
    iget-object v5, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v5}, Lorg/asdtm/goodweather/utils/PreferenceUtil;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/asdtm/goodweather/utils/LanguageUtil;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x4

    aput-boolean v12, v7, v5

    .line 157
    iget-object v5, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v5}, Lorg/asdtm/goodweather/utils/AppPreference;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "units":Ljava/lang/String;
    const-string v3, ""

    .line 160
    .local v3, "requestResult":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x1

    :try_start_0
    aput-boolean v11, v7, v10

    .line 162
    const-string v10, "http://api.openweathermap.org/data/2.5/forecast/daily"

    invoke-static {v10, v6, v8, v4, v9}, Lorg/asdtm/goodweather/utils/Utils;->getWeatherForecastUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    const/4 v8, 0x6

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 163
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x7

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v7, v5

    .line 165
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    const/16 v5, 0x8

    const/4 v6, 0x1

    aput-boolean v6, v7, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :goto_0
    if-nez v1, :cond_2

    const/16 v5, 0x11

    aput-boolean v12, v7, v5

    .line 186
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :goto_1
    iget-object v5, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v5, v3}, Lorg/asdtm/goodweather/WeatherForecastActivity;->access$400(Lorg/asdtm/goodweather/WeatherForecastActivity;Ljava/lang/String;)V

    .line 187
    const/16 v5, 0x1d

    aput-boolean v12, v7, v5

    return-void

    .line 165
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    const/16 v5, 0x9

    const/4 v6, 0x1

    :try_start_2
    aput-boolean v6, v7, v5

    .line 166
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0xa

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 167
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 170
    .local v2, "inputStream":Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    const/16 v8, 0xb

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 171
    :goto_2
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    if-lez v0, :cond_1

    const/16 v8, 0xc

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 172
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 v8, 0xd

    const/4 v9, 0x1

    aput-boolean v9, v7, v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 178
    .end local v0    # "bytesRead":I
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :goto_3
    const/16 v5, 0x14

    const/4 v6, 0x1

    :try_start_3
    aput-boolean v6, v7, v5

    .line 179
    invoke-static {}, Lorg/asdtm/goodweather/WeatherForecastActivity;->access$300()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 v5, 0x15

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 180
    const-string v5, "WeatherForecastActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    if-nez v1, :cond_3

    const/16 v5, 0x16

    aput-boolean v12, v7, v5

    goto :goto_1

    .line 174
    .restart local v0    # "bytesRead":I
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    const/16 v6, 0xe

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 175
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 176
    iget-object v5, p0, Lorg/asdtm/goodweather/WeatherForecastActivity$2;->this$0:Lorg/asdtm/goodweather/WeatherForecastActivity;

    invoke-static {v5}, Lorg/asdtm/goodweather/utils/AppPreference;->saveLastUpdateTimeMillis(Landroid/content/Context;)J

    const/16 v5, 0x10

    const/4 v6, 0x1

    aput-boolean v6, v7, v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 182
    .end local v0    # "bytesRead":I
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    :goto_4
    if-nez v1, :cond_4

    const/16 v6, 0x19

    aput-boolean v12, v7, v6

    .line 185
    :goto_5
    const/16 v6, 0x1c

    aput-boolean v12, v7, v6

    throw v5

    .line 182
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_2
    const/16 v5, 0x12

    aput-boolean v12, v7, v5

    .line 183
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v5, 0x13

    aput-boolean v12, v7, v5

    goto/16 :goto_1

    .line 182
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_3
    const/16 v5, 0x17

    aput-boolean v12, v7, v5

    .line 183
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v5, 0x18

    aput-boolean v12, v7, v5

    goto/16 :goto_1

    .line 182
    :cond_4
    const/16 v6, 0x1a

    aput-boolean v12, v7, v6

    .line 183
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v6, 0x1b

    aput-boolean v12, v7, v6

    goto :goto_5

    .line 182
    :catchall_1
    move-exception v6

    move-object v1, v5

    move-object v5, v6

    goto :goto_4

    .line 178
    :catch_1
    move-exception v6

    move-object v1, v5

    goto/16 :goto_3
.end method
