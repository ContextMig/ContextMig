.class final Lcom/admob/android/ads/i;
.super Lcom/admob/android/ads/f;
.source "AdMobURLConnector.java"


# instance fields
.field private m:Ljava/net/HttpURLConnection;

.field private n:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/h;ILjava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/admob/android/ads/h;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 56
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/h;ILjava/util/Map;Ljava/lang/String;)V

    .line 59
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admob/android/ads/i;->n:Ljava/net/URL;

    .line 60
    iget-object v0, p0, Lcom/admob/android/ads/i;->n:Ljava/net/URL;

    iput-object v0, p0, Lcom/admob/android/ads/i;->i:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    iput-object v7, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/admob/android/ads/i;->e:I

    .line 69
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    iput-object v7, p0, Lcom/admob/android/ads/i;->n:Ljava/net/URL;

    .line 65
    iput-object v0, p0, Lcom/admob/android/ads/i;->c:Ljava/lang/Exception;

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 77
    .line 79
    iget-object v1, p0, Lcom/admob/android/ads/i;->n:Ljava/net/URL;

    if-nez v1, :cond_14

    .line 86
    iget-object v1, p0, Lcom/admob/android/ads/i;->h:Lcom/admob/android/ads/h;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/admob/android/ads/i;->h:Lcom/admob/android/ads/h;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "url was null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Lcom/admob/android/ads/h;->a(Lcom/admob/android/ads/e;Ljava/lang/Exception;)V

    :cond_0
    move v3, v4

    .line 249
    :cond_1
    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/admob/android/ads/i;->h:Lcom/admob/android/ads/h;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/admob/android/ads/i;->h:Lcom/admob/android/ads/h;

    iget-object v2, p0, Lcom/admob/android/ads/i;->c:Ljava/lang/Exception;

    invoke-interface {v1, p0, v2}, Lcom/admob/android/ads/h;->a(Lcom/admob/android/ads/e;Ljava/lang/Exception;)V

    .line 254
    :cond_2
    return v3

    .line 206
    :cond_3
    const/16 v5, 0x12e

    if-ne v1, v5, :cond_12

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const-string v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v5, "AdMobSDK"

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 210
    const-string v5, "AdMobSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got redirectUrl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_4
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/admob/android/ads/i;->n:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    invoke-direct {p0}, Lcom/admob/android/ads/i;->i()V

    .line 94
    :goto_0
    iget v1, p0, Lcom/admob/android/ads/i;->e:I

    iget v2, p0, Lcom/admob/android/ads/i;->f:I

    if-ge v1, v2, :cond_1

    if-nez v3, :cond_1

    .line 96
    const-string v1, "AdMobSDK"

    invoke-static {v1, v10}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempt "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/admob/android/ads/i;->e:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " to connect to url "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/admob/android/ads/i;->n:Ljava/net/URL;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_5
    const/4 v5, 0x0

    .line 104
    :try_start_1
    invoke-direct {p0}, Lcom/admob/android/ads/i;->i()V

    .line 105
    iget-object v1, p0, Lcom/admob/android/ads/i;->n:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    .line 107
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 110
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 112
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_13

    .line 114
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const-string v2, "User-Agent"

    invoke-static {}, Lcom/admob/android/ads/i;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/admob/android/ads/i;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 117
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const-string v2, "X-ADMOB-ISU"

    iget-object v7, p0, Lcom/admob/android/ads/i;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    iget v2, p0, Lcom/admob/android/ads/i;->b:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 121
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    iget v2, p0, Lcom/admob/android/ads/i;->b:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 124
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 127
    iget-object v1, p0, Lcom/admob/android/ads/i;->d:Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 129
    iget-object v1, p0, Lcom/admob/android/ads/i;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 131
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 133
    if-eqz v2, :cond_7

    .line 135
    iget-object v1, p0, Lcom/admob/android/ads/i;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    if-eqz v1, :cond_7

    .line 138
    iget-object v8, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v8, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v1

    move-object v2, v5

    .line 221
    :goto_2
    :try_start_2
    const-string v3, "AdMobSDK"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 222
    const-string v3, "AdMobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connection attempt "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/admob/android/ads/i;->e:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " failed, url "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/admob/android/ads/i;->n:Ljava/net/URL;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_8
    const-string v3, "AdMobSDK"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 225
    const-string v3, "AdMobSDK"

    const-string v5, "exception: "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    :cond_9
    iput-object v1, p0, Lcom/admob/android/ads/i;->c:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 234
    if-eqz v2, :cond_a

    .line 236
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 243
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/admob/android/ads/i;->i()V

    move v1, v4

    .line 245
    :goto_4
    iget v2, p0, Lcom/admob/android/ads/i;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/admob/android/ads/i;->e:I

    move v3, v1

    .line 246
    goto/16 :goto_0

    .line 147
    :cond_b
    :try_start_4
    iget-object v1, p0, Lcom/admob/android/ads/i;->l:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 149
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 151
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    iget-object v7, p0, Lcom/admob/android/ads/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    iget-object v7, p0, Lcom/admob/android/ads/i;->l:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 155
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x1000

    invoke-direct {v2, v7, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    :try_start_5
    iget-object v1, p0, Lcom/admob/android/ads/i;->l:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 158
    const/4 v2, 0x0

    .line 166
    :goto_5
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 168
    const-string v5, "AdMobSDK"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 170
    iget-object v5, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    const-string v7, "X-AdMob-AdSrc"

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    if-eqz v5, :cond_c

    .line 173
    const-string v7, "AdMobSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ad response came from server "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_c
    const/16 v5, 0xc8

    if-lt v1, v5, :cond_3

    const/16 v5, 0x12c

    if-ge v1, v5, :cond_3

    .line 181
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/admob/android/ads/i;->i:Ljava/net/URL;

    .line 183
    iget-boolean v1, p0, Lcom/admob/android/ads/i;->k:Z

    if-eqz v1, :cond_f

    .line 185
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v5, 0x1000

    invoke-direct {v1, v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 186
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 188
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v5, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 191
    :goto_6
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_e

    .line 193
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 219
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .line 162
    :cond_d
    :try_start_6
    iget-object v1, p0, Lcom/admob/android/ads/i;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v2, v5

    goto :goto_5

    .line 195
    :cond_e
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/admob/android/ads/i;->j:[B

    .line 199
    :cond_f
    iget-object v1, p0, Lcom/admob/android/ads/i;->h:Lcom/admob/android/ads/h;

    if-eqz v1, :cond_10

    .line 201
    iget-object v1, p0, Lcom/admob/android/ads/i;->h:Lcom/admob/android/ads/h;

    invoke-interface {v1, p0}, Lcom/admob/android/ads/h;->a(Lcom/admob/android/ads/e;)V

    :cond_10
    move v1, v6

    .line 217
    :goto_7
    invoke-direct {p0}, Lcom/admob/android/ads/i;->i()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 239
    invoke-direct {p0}, Lcom/admob/android/ads/i;->i()V

    goto/16 :goto_4

    .line 232
    :catchall_0
    move-exception v1

    move-object v2, v5

    .line 234
    :goto_8
    if-eqz v2, :cond_11

    .line 236
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 243
    :cond_11
    :goto_9
    invoke-direct {p0}, Lcom/admob/android/ads/i;->i()V

    throw v1

    :catch_2
    move-exception v1

    goto/16 :goto_3

    :catch_3
    move-exception v2

    goto :goto_9

    .line 232
    :catchall_1
    move-exception v1

    goto :goto_8

    :cond_12
    move v1, v3

    goto :goto_7

    :cond_13
    move-object v2, v5

    move v1, v3

    goto :goto_7

    :cond_14
    move v3, v4

    goto/16 :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/admob/android/ads/i;->i()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/i;->h:Lcom/admob/android/ads/h;

    .line 275
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/admob/android/ads/i;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string v1, "AdMobSDK"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught in AdMobURLConnector.run(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/i;->h:Lcom/admob/android/ads/h;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/admob/android/ads/i;->h:Lcom/admob/android/ads/h;

    iget-object v1, p0, Lcom/admob/android/ads/i;->c:Ljava/lang/Exception;

    invoke-interface {v0, p0, v1}, Lcom/admob/android/ads/h;->a(Lcom/admob/android/ads/e;Ljava/lang/Exception;)V

    goto :goto_0
.end method
