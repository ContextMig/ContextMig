.class public Lcom/haringeymobile/ukweather/data/JsonFetcher;
.super Ljava/lang/Object;
.source "JsonFetcher.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HTTP_STATUS_CODE_OK:I = 0xc8

.field public static final TIMEOUT:I = 0x1194


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/data/JsonFetcher;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2366695910c5fe3dL    # -1.190316901701692E138

    const-string v2, "com/haringeymobile/ukweather/data/JsonFetcher"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/data/JsonFetcher;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/data/JsonFetcher;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/JsonFetcher;->$jacocoInit()[Z

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 56
    const/16 v2, 0x1194

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    .line 57
    const/16 v2, 0x2328

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0xf

    aput-boolean v3, v1, v2

    .line 58
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-boolean v3, v1, v2

    .line 59
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v2, 0x11

    aput-boolean v3, v1, v2

    .line 60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 61
    const/16 v2, 0x12

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method private readData(Ljava/io/InputStream;)Ljava/lang/StringBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/JsonFetcher;->$jacocoInit()[Z

    move-result-object v1

    .line 72
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v3, 0x13

    aput-boolean v6, v1, v3

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x14

    aput-boolean v6, v1, v4

    .line 76
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v4, 0x15

    aput-boolean v6, v1, v4

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x16

    aput-boolean v6, v1, v4

    goto :goto_0

    .line 79
    :cond_0
    const/16 v2, 0x17

    aput-boolean v6, v1, v2

    return-object v3
.end method


# virtual methods
.method public getJsonString(Ljava/net/URL;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/data/JsonFetcher;->$jacocoInit()[Z

    move-result-object v3

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v3, v2

    .line 35
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/data/JsonFetcher;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 37
    invoke-direct {p0, v0}, Lcom/haringeymobile/ukweather/data/JsonFetcher;->readData(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 38
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-nez v0, :cond_0

    const/4 v2, 0x5

    aput-boolean v6, v3, v2

    .line 44
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    aput-boolean v6, v3, v4

    return-object v2

    .line 40
    :cond_0
    const/4 v2, 0x6

    aput-boolean v6, v3, v2

    .line 41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x7

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 40
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    const/16 v4, 0x8

    aput-boolean v6, v3, v4

    .line 43
    :goto_1
    const/16 v4, 0xb

    aput-boolean v6, v3, v4

    throw v2

    .line 40
    :cond_1
    const/16 v4, 0x9

    aput-boolean v6, v3, v4

    .line 41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/16 v4, 0xa

    aput-boolean v6, v3, v4

    goto :goto_1
.end method
