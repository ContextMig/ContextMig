.class public Lorg/asdtm/goodweather/WeatherRequest;
.super Ljava/lang/Object;
.source "WeatherRequest.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "WeatherRequest"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/WeatherRequest;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xb002e5379f09037L

    const-string v2, "org/asdtm/goodweather/WeatherRequest"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/WeatherRequest;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherRequest;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherRequest;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    const-string v1, "http://api.openweathermap.org/data/2.5/weather"

    invoke-static {v1, p1, p2, p3, p4}, Lorg/asdtm/goodweather/utils/Utils;->getWeatherForecastUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/asdtm/goodweather/WeatherRequest;->getResultAsString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getResultAsString(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/WeatherRequest;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/asdtm/goodweather/WeatherRequest;->getWeatherByte(Ljava/net/URL;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method getWeatherByte(Ljava/net/URL;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/WeatherRequest;->$jacocoInit()[Z

    move-result-object v3

    .line 18
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v3, v2

    .line 21
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 22
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 24
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    const/4 v5, 0x4

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "bytesRead":I
    const/16 v5, 0x400

    new-array v5, v5, [B

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 31
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_1

    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 32
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 v6, 0x9

    const/4 v7, 0x1

    aput-boolean v7, v3, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 39
    const/16 v1, 0xd

    aput-boolean v8, v3, v1

    throw v2

    .line 25
    .end local v0    # "bytesRead":I
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 25
    const/4 v1, 0x6

    aput-boolean v8, v3, v1

    move-object v1, v2

    .line 36
    .restart local v0    # "bytesRead":I
    :goto_1
    return-object v1

    .line 34
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    const/16 v4, 0xa

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 36
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/16 v4, 0xb

    const/4 v5, 0x1

    aput-boolean v5, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 36
    const/16 v1, 0xc

    aput-boolean v8, v3, v1

    move-object v1, v2

    goto :goto_1
.end method
