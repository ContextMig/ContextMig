.class public final Lcom/appflood/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appflood/b/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/net/URL;

.field public b:Lcom/appflood/b/b$a;

.field protected c:Z

.field public d:[B

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    iput v1, p0, Lcom/appflood/b/b;->e:I

    iput v1, p0, Lcom/appflood/b/b;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appflood/b/b;->c:Z

    invoke-static {p1}, Lcom/appflood/e/k;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/b/b;->a:Ljava/net/URL;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appflood/b/b;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    iput v1, p0, Lcom/appflood/b/b;->e:I

    iput v1, p0, Lcom/appflood/b/b;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appflood/b/b;->c:Z

    invoke-static {p1}, Lcom/appflood/e/k;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/b/b;->a:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    iput v1, p0, Lcom/appflood/b/b;->e:I

    iput v1, p0, Lcom/appflood/b/b;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appflood/b/b;->c:Z

    invoke-static {p1, p2}, Lcom/appflood/e/k;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/b/b;->a:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "url"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-interface {v0, p1}, Lcom/appflood/b/b$a;->requestFailed$440c3042(I)V

    :cond_0
    invoke-static {}, Lcom/appflood/c/f;->c()Lcom/appflood/b/a;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/appflood/b/b;->a:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/appflood/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/appflood/b/a;->a()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appflood/b/b;->d:[B

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/appflood/b/b$1;

    invoke-direct {v0, p1}, Lcom/appflood/b/b$1;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {p0}, Lcom/appflood/b/b;->e()V

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/appflood/b/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/b/b;->d:[B

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appflood/c/f;->b()Lcom/appflood/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/b/b;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appflood/b/b;->d:[B

    invoke-virtual {v0, v1, v2}, Lcom/appflood/a/a;->a(Ljava/lang/String;[B)Z

    :cond_0
    iget-object v0, p0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-interface {v0, p0}, Lcom/appflood/b/b$a;->requestFinished(Lcom/appflood/b/b;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/appflood/c/f;->c()Lcom/appflood/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appflood/b/a;->a(Lcom/appflood/b/b;)V

    :cond_2
    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appflood/b/b;->d:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/appflood/b/b;->d:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "broken image"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/appflood/c/f;->b()Lcom/appflood/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/b/b;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/appflood/e/a;->a(Ljava/io/File;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/b/b;->d:[B

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    invoke-static {}, Lcom/appflood/c/f;->c()Lcom/appflood/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appflood/b/a;->c(Lcom/appflood/b/b;)V

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-static {}, Lcom/appflood/c/f;->c()Lcom/appflood/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appflood/c/f;->c()Lcom/appflood/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appflood/b/a;->b(Lcom/appflood/b/b;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 10

    const/4 v1, 0x0

    const/16 v6, 0x400

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, -0x1

    new-array v7, v6, [B

    :try_start_0
    iget-object v0, p0, Lcom/appflood/b/b;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget v2, p0, Lcom/appflood/b/b;->e:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/appflood/b/b;->e:I

    :goto_0
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v2, p0, Lcom/appflood/b/b;->f:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/appflood/b/b;->f:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    :try_start_1
    invoke-static {v0}, Lcom/appflood/e/a;->a(Ljava/net/URLConnection;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    if-ne v8, v9, :cond_3

    move v0, v6

    :goto_2
    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    :try_start_3
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v9, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v2, v7, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_4
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get data from  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appflood/b/b;->a:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-static {v2}, Lcom/appflood/e/a;->a(Ljava/io/Closeable;)Z

    invoke-static {v1}, Lcom/appflood/e/a;->a(Ljava/io/Closeable;)Z

    move-object v2, v1

    move v0, v5

    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/b/b;->d:[B

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appflood/b/b;->a(Z)V

    :goto_6
    return-void

    :cond_0
    const v2, 0xafc8

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/appflood/b/b;->c:Z

    if-nez v2, :cond_2

    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v0, -0x1

    :try_start_6
    invoke-direct {p0, v0}, Lcom/appflood/b/b;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    const v2, 0x2bf20

    :try_start_7
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v0

    goto :goto_2

    :cond_4
    :try_start_9
    invoke-static {v3}, Lcom/appflood/e/a;->a(Ljava/io/Closeable;)Z

    invoke-static {v2}, Lcom/appflood/e/a;->a(Ljava/io/Closeable;)Z

    move v0, v4

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_7
    invoke-static {v2}, Lcom/appflood/e/a;->a(Ljava/io/Closeable;)Z

    invoke-static {v1}, Lcom/appflood/e/a;->a(Ljava/io/Closeable;)Z

    throw v0

    :cond_5
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/appflood/b/b;->a(I)V

    goto :goto_6

    :cond_6
    invoke-direct {p0, v2}, Lcom/appflood/b/b;->a(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_4
.end method
