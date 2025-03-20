.class public abstract Lcom/batch/android/c/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/c/ae$b;,
        Lcom/batch/android/c/ae$c;,
        Lcom/batch/android/c/ae$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "ba_ws_succeed"


# instance fields
.field private a:Lcom/batch/android/c/ad;

.field private b:Lcom/batch/android/c/ae$a;

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Landroid/content/Context;


# direct methods
.method protected varargs constructor <init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-nez p3, :cond_1

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null urlPattern"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    if-nez p2, :cond_2

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    iput-object p2, p0, Lcom/batch/android/c/ae;->b:Lcom/batch/android/c/ae$a;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/batch/android/c/ad;

    invoke-direct {p0}, Lcom/batch/android/c/ae;->d()Lcom/batch/android/c/ad$a;

    move-result-object v1

    invoke-direct {v0, p3, v1, p4}, Lcom/batch/android/c/ad;-><init>(Ljava/lang/String;Lcom/batch/android/c/ad$a;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batch/android/c/ae;->a:Lcom/batch/android/c/ad;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batch/android/c/ae;->d:Ljava/util/Map;

    .line 95
    return-void
.end method

.method private A()I
    .locals 2

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->j()Ljava/lang/String;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_0

    .line 914
    iget-object v1, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_0

    .line 917
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 921
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "ws.defaultconnectTimeout"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private B()I
    .locals 2

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->k()Ljava/lang/String;

    move-result-object v0

    .line 940
    if-eqz v0, :cond_0

    .line 942
    iget-object v1, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_0

    .line 945
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 949
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "ws.defaultreadTimeout"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private C()I
    .locals 2

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->l()Ljava/lang/String;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_0

    .line 970
    iget-object v1, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    if-eqz v0, :cond_0

    .line 973
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 977
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "ws.defaultRetry"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private a()Lcom/batch/android/c/u;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->e()Ljava/lang/String;

    move-result-object v1

    .line 212
    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_0

    .line 223
    new-instance v0, Lcom/batch/android/c/u;

    invoke-direct {v0, v1}, Lcom/batch/android/c/u;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/batch/android/g/c;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/g/c",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/batch/android/c/ae;->y()Lcom/batch/android/c/af;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0}, Lcom/batch/android/c/af;->a()Ljava/lang/String;

    move-result-object v0

    .line 864
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/batch/android/g/c;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 758
    :catch_0
    move-exception v0

    .line 760
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UTF-8 encoding is not supported, can\'t build URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1140
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1141
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1143
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/batch/android/c/ae$c;)V
    .locals 3

    .prologue
    .line 555
    sget-object v0, Lcom/batch/android/c/ag;->e:Lcom/batch/android/c/ag;

    .line 557
    if-eqz p1, :cond_0

    .line 559
    sget-object v1, Lcom/batch/android/c/ae$1;->a:[I

    invoke-static {p1}, Lcom/batch/android/c/ae$c;->a(Lcom/batch/android/c/ae$c;)Lcom/batch/android/c/ae$c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/c/ae$c$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 588
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending retry signal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 593
    :cond_1
    invoke-virtual {p0, v0}, Lcom/batch/android/c/ae;->a(Lcom/batch/android/c/ag;)V

    .line 594
    return-void

    .line 563
    :pswitch_0
    invoke-virtual {p1}, Lcom/batch/android/c/ae$c;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_2

    .line 565
    sget-object v0, Lcom/batch/android/c/ag;->c:Lcom/batch/android/c/ag;

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p1}, Lcom/batch/android/c/ae$c;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    .line 569
    sget-object v0, Lcom/batch/android/c/ag;->d:Lcom/batch/android/c/ag;

    goto :goto_0

    .line 573
    :cond_3
    sget-object v0, Lcom/batch/android/c/ag;->e:Lcom/batch/android/c/ag;

    goto :goto_0

    .line 578
    :pswitch_1
    sget-object v0, Lcom/batch/android/c/ag;->a:Lcom/batch/android/c/ag;

    goto :goto_0

    .line 581
    :pswitch_2
    sget-object v0, Lcom/batch/android/c/ag;->b:Lcom/batch/android/c/ag;

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 718
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18f

    if-le p0, v0, :cond_1

    .line 720
    :cond_0
    const/4 v0, 0x0

    .line 723
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(I)Lcom/batch/android/c/ae$c$a;
    .locals 1

    .prologue
    .line 733
    invoke-static {p0}, Lcom/batch/android/c/ae;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    sget-object v0, Lcom/batch/android/c/ae$c$a;->f:Lcom/batch/android/c/ae$c$a;

    .line 743
    :goto_0
    return-object v0

    .line 738
    :cond_0
    const/16 v0, 0x194

    if-ne p0, v0, :cond_1

    .line 740
    sget-object v0, Lcom/batch/android/c/ae$c$a;->c:Lcom/batch/android/c/ae$c$a;

    goto :goto_0

    .line 743
    :cond_1
    sget-object v0, Lcom/batch/android/c/ae$c$a;->b:Lcom/batch/android/c/ae$c$a;

    goto :goto_0
.end method

.method private b()Lcom/batch/android/c/d;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->f()Ljava/lang/String;

    move-result-object v1

    .line 243
    if-nez v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/batch/android/c/e;->a(I)Lcom/batch/android/c/d;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/batch/android/g/c;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/g/c",
            "<*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 887
    invoke-interface {p1}, Lcom/batch/android/g/c;->a()[B

    move-result-object v0

    .line 892
    invoke-direct {p0}, Lcom/batch/android/c/ae;->y()Lcom/batch/android/c/af;

    move-result-object v1

    .line 893
    if-eqz v1, :cond_0

    .line 895
    invoke-virtual {v1, v0, p0}, Lcom/batch/android/c/af;->b([BLcom/batch/android/c/ae;)[B

    move-result-object v0

    .line 898
    :cond_0
    return-object v0
.end method

.method private c(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 535
    if-gtz p1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    const/16 v1, 0x1f6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f3

    if-eq p1, v1, :cond_0

    .line 545
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/batch/android/c/ad$a;
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->g()Ljava/lang/String;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/batch/android/c/ad$a;->a(I)Lcom/batch/android/c/ad$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 292
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while getting cryptor mode for key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    :cond_0
    sget-object v0, Lcom/batch/android/c/ad$a;->a:Lcom/batch/android/c/ad$a;

    goto :goto_0
.end method

.method private y()Lcom/batch/android/c/af;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->h()Ljava/lang/String;

    move-result-object v1

    .line 310
    if-nez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_0

    .line 321
    new-instance v0, Lcom/batch/android/c/af;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/batch/android/c/af;-><init>(I)V

    goto :goto_0
.end method

.method private z()Lcom/batch/android/c/af;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->i()Ljava/lang/String;

    move-result-object v1

    .line 340
    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-object v0

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_0

    .line 351
    new-instance v0, Lcom/batch/android/c/af;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/batch/android/c/af;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/batch/android/c/ag;)V
    .locals 2

    .prologue
    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry webservice, cause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/batch/android/c/ae;->a:Lcom/batch/android/c/ad;

    invoke-virtual {v0, p1, p2}, Lcom/batch/android/c/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract c()Lcom/batch/android/c/ae$b;
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/lang/String;
.end method

.method protected abstract h()Ljava/lang/String;
.end method

.method protected abstract i()Ljava/lang/String;
.end method

.method protected abstract j()Ljava/lang/String;
.end method

.method protected abstract k()Ljava/lang/String;
.end method

.method protected abstract l()Ljava/lang/String;
.end method

.method protected abstract m()Lcom/batch/android/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/g/c",
            "<*>;"
        }
    .end annotation
.end method

.method protected n()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/batch/android/c/ae;->d:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected p()V
    .locals 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->q()Ljava/util/Map;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 122
    iget-object v4, p0, Lcom/batch/android/c/ae;->a:Lcom/batch/android/c/ad;

    invoke-virtual {v4, v0, v1}, Lcom/batch/android/c/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method protected q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->s()Ljava/util/Map;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/batch/android/c/ae;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 180
    :cond_0
    return-void
.end method

.method protected s()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/c/ae$c;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 381
    move v8, v0

    move v5, v4

    move-object v9, v6

    move-object v2, v6

    .line 392
    :goto_0
    if-lez v8, :cond_0

    .line 394
    invoke-direct {p0, v9}, Lcom/batch/android/c/ae;->a(Lcom/batch/android/c/ae$c;)V

    .line 397
    :cond_0
    const/4 v7, 0x0

    .line 398
    const/4 v10, 0x0

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->w()Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 404
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    .line 436
    :try_start_3
    invoke-static {v0}, Lcom/batch/android/c/ae;->a(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 439
    const-string v1, "Content-Encoding"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_18

    const-string v5, "gzip"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 442
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 449
    :goto_2
    :try_start_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1d
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 451
    const/16 v1, 0x2000

    :try_start_5
    new-array v1, v1, [B

    .line 453
    :goto_3
    const/4 v7, 0x0

    array-length v10, v1

    invoke-virtual {v5, v1, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-eq v7, v4, :cond_9

    .line 455
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 482
    :catch_0
    move-exception v1

    move-object v7, v5

    move-object v5, v3

    move-object v3, v1

    .line 484
    :goto_4
    :try_start_6
    new-instance v1, Lcom/batch/android/c/ae$c;

    sget-object v10, Lcom/batch/android/c/ae$c$a;->f:Lcom/batch/android/c/ae$c$a;

    invoke-direct {v1, v10, v3}, Lcom/batch/android/c/ae$c;-><init>(Lcom/batch/android/c/ae$c$a;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 488
    if-eqz v5, :cond_1

    .line 492
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_15

    .line 497
    :cond_1
    :goto_5
    if-eqz v7, :cond_2

    .line 501
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_16

    .line 508
    :cond_2
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_17

    .line 513
    :goto_7
    if-nez v1, :cond_3

    .line 516
    iget-object v3, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v7, "ba_ws_succeed"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/batch/android/b/a;->a(Landroid/content/Intent;)Z

    .line 520
    :cond_3
    :goto_8
    add-int/lit8 v3, v8, 0x1

    move v13, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move v0, v13

    .line 522
    :goto_9
    invoke-direct {p0}, Lcom/batch/android/c/ae;->C()I

    move-result v5

    if-gt v0, v5, :cond_4

    invoke-direct {p0, v1}, Lcom/batch/android/c/ae;->c(I)Z

    move-result v5

    if-nez v5, :cond_19

    .line 524
    :cond_4
    throw v2

    .line 406
    :catch_1
    move-exception v0

    .line 408
    :try_start_a
    new-instance v1, Lcom/batch/android/c/ae$c;

    sget-object v3, Lcom/batch/android/c/ae$c$a;->a:Lcom/batch/android/c/ae$c$a;

    invoke-direct {v1, v3, v0}, Lcom/batch/android/c/ae$c;-><init>(Lcom/batch/android/c/ae$c$a;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 410
    add-int/lit8 v0, v8, 0x1

    .line 488
    if-eqz v6, :cond_5

    .line 492
    :try_start_b
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 497
    :cond_5
    :goto_a
    if-eqz v6, :cond_6

    .line 501
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 508
    :cond_6
    :goto_b
    :try_start_d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 513
    :goto_c
    if-nez v1, :cond_1b

    .line 516
    iget-object v3, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v7, "ba_ws_succeed"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/batch/android/b/a;->a(Landroid/content/Intent;)Z

    move-object v3, v2

    move-object v2, v1

    move v1, v4

    goto :goto_9

    .line 413
    :catch_2
    move-exception v0

    .line 415
    :try_start_e
    new-instance v1, Lcom/batch/android/c/ae$c;

    sget-object v3, Lcom/batch/android/c/ae$c$a;->f:Lcom/batch/android/c/ae$c$a;

    invoke-direct {v1, v3, v0}, Lcom/batch/android/c/ae$c;-><init>(Lcom/batch/android/c/ae$c$a;Ljava/lang/Throwable;)V

    throw v1

    .line 482
    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v7, v6

    move v0, v5

    move-object v5, v6

    goto :goto_4

    .line 422
    :catch_4
    move-exception v0

    .line 424
    new-instance v1, Lcom/batch/android/c/ae$c;

    sget-object v3, Lcom/batch/android/c/ae$c$a;->a:Lcom/batch/android/c/ae$c$a;

    invoke-direct {v1, v3, v0}, Lcom/batch/android/c/ae$c;-><init>(Lcom/batch/android/c/ae$c$a;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 426
    add-int/lit8 v0, v8, 0x1

    .line 488
    if-eqz v6, :cond_7

    .line 492
    :try_start_f
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 497
    :cond_7
    :goto_d
    if-eqz v6, :cond_8

    .line 501
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 508
    :cond_8
    :goto_e
    :try_start_11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 513
    :goto_f
    if-nez v1, :cond_1a

    .line 516
    iget-object v3, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v7, "ba_ws_succeed"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/batch/android/b/a;->a(Landroid/content/Intent;)Z

    move-object v3, v2

    move-object v2, v1

    move v1, v4

    goto :goto_9

    .line 429
    :catch_5
    move-exception v0

    move-object v3, v6

    goto/16 :goto_1

    .line 457
    :cond_9
    :try_start_12
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 459
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 462
    invoke-direct {p0}, Lcom/batch/android/c/ae;->z()Lcom/batch/android/c/af;

    move-result-object v7

    .line 463
    if-eqz v7, :cond_11

    .line 465
    invoke-virtual {v7, v1, p0}, Lcom/batch/android/c/af;->a([BLcom/batch/android/c/ae;)[B
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v1

    .line 466
    if-eqz v1, :cond_d

    .line 488
    if-eqz v3, :cond_a

    .line 492
    :try_start_13
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    .line 497
    :cond_a
    :goto_10
    if-eqz v5, :cond_b

    .line 501
    :try_start_14
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    .line 508
    :cond_b
    :goto_11
    :try_start_15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    .line 513
    :goto_12
    if-nez v9, :cond_c

    .line 516
    iget-object v0, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ba_ws_succeed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/batch/android/b/a;->a(Landroid/content/Intent;)Z

    :cond_c
    move-object v0, v1

    .line 475
    :goto_13
    return-object v0

    .line 471
    :cond_d
    :try_start_16
    new-instance v1, Ljava/lang/Exception;

    const-string v7, "Unable to read encrypted data"

    invoke-direct {v1, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 488
    :catchall_0
    move-exception v0

    move-object v6, v3

    move-object v3, v5

    :goto_14
    if-eqz v6, :cond_e

    .line 492
    :try_start_17
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18

    .line 497
    :cond_e
    :goto_15
    if-eqz v3, :cond_f

    .line 501
    :try_start_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_19

    .line 508
    :cond_f
    :goto_16
    :try_start_19
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1a

    .line 513
    :goto_17
    if-nez v9, :cond_10

    .line 516
    iget-object v1, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ba_ws_succeed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/b/a;->a(Landroid/content/Intent;)Z

    :cond_10
    throw v0

    .line 488
    :cond_11
    if-eqz v3, :cond_12

    .line 492
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    .line 497
    :cond_12
    :goto_18
    if-eqz v5, :cond_13

    .line 501
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    .line 508
    :cond_13
    :goto_19
    :try_start_1c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11

    .line 513
    :goto_1a
    if-nez v9, :cond_14

    .line 516
    iget-object v0, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ba_ws_succeed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/batch/android/b/a;->a(Landroid/content/Intent;)Z

    :cond_14
    move-object v0, v1

    .line 475
    goto :goto_13

    .line 479
    :cond_15
    :try_start_1d
    new-instance v1, Lcom/batch/android/c/ae$c;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Lcom/batch/android/c/ae;->b(I)Lcom/batch/android/c/ae$c$a;

    move-result-object v5

    new-instance v7, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Response code : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5, v7}, Lcom/batch/android/c/ae$c;-><init>(Lcom/batch/android/c/ae$c$a;Ljava/lang/Throwable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 488
    if-eqz v6, :cond_16

    .line 492
    :try_start_1e
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_12

    .line 497
    :cond_16
    :goto_1b
    if-eqz v3, :cond_17

    .line 501
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_13

    .line 508
    :cond_17
    :goto_1c
    :try_start_20
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_14

    .line 513
    :goto_1d
    if-nez v1, :cond_3

    .line 516
    iget-object v3, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/batch/android/b/a;->a(Landroid/content/Context;)Lcom/batch/android/b/a;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v7, "ba_ws_succeed"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/batch/android/b/a;->a(Landroid/content/Intent;)Z

    goto/16 :goto_8

    .line 494
    :catch_6
    move-exception v3

    goto/16 :goto_a

    .line 503
    :catch_7
    move-exception v3

    goto/16 :goto_b

    .line 510
    :catch_8
    move-exception v3

    goto/16 :goto_c

    .line 494
    :catch_9
    move-exception v3

    goto/16 :goto_d

    .line 503
    :catch_a
    move-exception v3

    goto/16 :goto_e

    .line 510
    :catch_b
    move-exception v3

    goto/16 :goto_f

    .line 494
    :catch_c
    move-exception v0

    goto/16 :goto_10

    .line 503
    :catch_d
    move-exception v0

    goto/16 :goto_11

    .line 510
    :catch_e
    move-exception v0

    goto/16 :goto_12

    .line 494
    :catch_f
    move-exception v0

    goto/16 :goto_18

    .line 503
    :catch_10
    move-exception v0

    goto :goto_19

    .line 510
    :catch_11
    move-exception v0

    goto :goto_1a

    .line 494
    :catch_12
    move-exception v5

    goto :goto_1b

    .line 503
    :catch_13
    move-exception v3

    goto :goto_1c

    .line 510
    :catch_14
    move-exception v3

    goto :goto_1d

    .line 494
    :catch_15
    move-exception v3

    goto/16 :goto_5

    .line 503
    :catch_16
    move-exception v3

    goto/16 :goto_6

    .line 510
    :catch_17
    move-exception v3

    goto/16 :goto_7

    .line 494
    :catch_18
    move-exception v1

    goto/16 :goto_15

    .line 503
    :catch_19
    move-exception v1

    goto/16 :goto_16

    .line 510
    :catch_1a
    move-exception v1

    goto/16 :goto_17

    .line 488
    :catchall_1
    move-exception v0

    move-object v3, v6

    goto/16 :goto_14

    :catchall_2
    move-exception v0

    goto/16 :goto_14

    :catchall_3
    move-exception v0

    move-object v3, v5

    goto/16 :goto_14

    :catchall_4
    move-exception v0

    move-object v6, v5

    move-object v3, v7

    goto/16 :goto_14

    .line 482
    :catch_1b
    move-exception v0

    move-object v7, v3

    move-object v3, v0

    move v0, v5

    move-object v5, v6

    goto/16 :goto_4

    :catch_1c
    move-exception v1

    move-object v5, v6

    move-object v7, v3

    move-object v3, v1

    goto/16 :goto_4

    :catch_1d
    move-exception v1

    move-object v3, v1

    move-object v7, v5

    move-object v5, v6

    goto/16 :goto_4

    :cond_18
    move-object v5, v3

    goto/16 :goto_2

    :cond_19
    move v8, v0

    move v5, v1

    move-object v9, v2

    move-object v2, v3

    goto/16 :goto_0

    :cond_1a
    move-object v3, v2

    move-object v2, v1

    move v1, v4

    goto/16 :goto_9

    :cond_1b
    move-object v3, v2

    move-object v2, v1

    move v1, v4

    goto/16 :goto_9
.end method

.method protected u()Lcom/batch/android/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/c/ae$c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 617
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->t()[B

    move-result-object v0

    .line 619
    invoke-static {v0}, Lcom/batch/android/c/x;->a([B)Lcom/batch/android/json/JSONObject;

    move-result-object v4

    .line 620
    if-nez v4, :cond_0

    .line 622
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Unable to parse the response as json"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    const-string v0, "header"

    invoke-virtual {v4, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "header"

    invoke-virtual {v4, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    :cond_1
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Missing header"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_2
    const-string v0, "body"

    invoke-virtual {v4, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 632
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Missing body"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_3
    const-string v0, "header"

    invoke-virtual {v4, v0}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    .line 639
    const-string v0, "status"

    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 641
    :cond_4
    new-instance v0, Lcom/batch/android/json/JSONException;

    const-string v1, "Missing header status"

    invoke-direct {v0, v1}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_5
    const-string v0, "status"

    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 650
    const-string v1, "INVALID_APIKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 652
    new-instance v0, Lcom/batch/android/c/ae$c;

    sget-object v1, Lcom/batch/android/c/ae$c$a;->d:Lcom/batch/android/c/ae$c$a;

    invoke-direct {v0, v1}, Lcom/batch/android/c/ae$c;-><init>(Lcom/batch/android/c/ae$c$a;)V

    throw v0

    .line 654
    :cond_6
    const-string v1, "DESACTIVATED_APIKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 656
    new-instance v0, Lcom/batch/android/c/ae$c;

    sget-object v1, Lcom/batch/android/c/ae$c$a;->e:Lcom/batch/android/c/ae$c$a;

    invoke-direct {v0, v1}, Lcom/batch/android/c/ae$c;-><init>(Lcom/batch/android/c/ae$c$a;)V

    throw v0

    .line 660
    :cond_7
    new-instance v1, Lcom/batch/android/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status not OK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/batch/android/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    :cond_8
    const-string v0, "dev"

    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dev"

    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/a;->a(Landroid/content/Context;)Lcom/batch/android/c/a;

    move-result-object v0

    const-string v2, "dev"

    invoke-virtual {v4, v2}, Lcom/batch/android/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/batch/android/c/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_9
    :goto_0
    const-string v0, "ts"

    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ts"

    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 684
    const-string v0, "ts"

    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 686
    iget-object v2, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    const-string v3, "ws.server.timestamp"

    invoke-virtual {v2, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 687
    if-eqz v2, :cond_c

    .line 689
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 690
    cmp-long v5, v2, v0

    if-gez v5, :cond_b

    .line 692
    iget-object v2, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    const-string v3, "ws.server.timestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v6}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 704
    :goto_1
    invoke-static {}, Lcom/batch/android/c/y;->c()Lcom/batch/android/c/y;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/batch/android/c/y;->a(Ljava/util/Date;)V

    .line 707
    :cond_a
    const-string v0, "body"

    invoke-virtual {v4, v0}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 673
    :catch_0
    move-exception v0

    .line 675
    const-string v2, "Error while saving API key state"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_b
    move-wide v0, v2

    .line 696
    goto :goto_1

    .line 701
    :cond_c
    iget-object v2, p0, Lcom/batch/android/c/ae;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    const-string v3, "ws.server.timestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v6}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected v()Ljava/net/URL;
    .locals 3

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->x()V

    .line 772
    iget-object v0, p0, Lcom/batch/android/c/ae;->a:Lcom/batch/android/c/ad;

    invoke-direct {p0}, Lcom/batch/android/c/ae;->a()Lcom/batch/android/c/u;

    move-result-object v1

    invoke-direct {p0}, Lcom/batch/android/c/ae;->b()Lcom/batch/android/c/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/c/ad;->a(Lcom/batch/android/c/u;Lcom/batch/android/c/d;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected w()Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->v()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 789
    invoke-direct {p0}, Lcom/batch/android/c/ae;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 790
    invoke-direct {p0}, Lcom/batch/android/c/ae;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 795
    iget-object v1, p0, Lcom/batch/android/c/ae;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/batch/android/c/ae;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 799
    iget-object v2, p0, Lcom/batch/android/c/ae;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 801
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 803
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :cond_1
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/batch/android/c/ae;->b:Lcom/batch/android/c/ae$a;

    sget-object v2, Lcom/batch/android/c/ae$a;->b:Lcom/batch/android/c/ae$a;

    if-ne v1, v2, :cond_2

    .line 815
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 816
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->m()Lcom/batch/android/g/c;

    move-result-object v1

    .line 819
    if-eqz v1, :cond_2

    .line 821
    const-string v2, "Content-Type"

    invoke-direct {p0, v1}, Lcom/batch/android/c/ae;->a(Lcom/batch/android/g/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-direct {p0, v1}, Lcom/batch/android/c/ae;->b(Lcom/batch/android/g/c;)[B

    move-result-object v3

    .line 825
    const/4 v2, 0x0

    .line 828
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 833
    if-eqz v1, :cond_2

    .line 837
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 845
    :cond_2
    :goto_1
    return-object v0

    .line 833
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 837
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 839
    :cond_3
    :goto_3
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    .line 833
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method protected x()V
    .locals 0

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->o()V

    .line 873
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->p()V

    .line 875
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->n()V

    .line 876
    invoke-virtual {p0}, Lcom/batch/android/c/ae;->r()V

    .line 877
    return-void
.end method
