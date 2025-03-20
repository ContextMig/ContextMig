.class abstract Lcom/batch/android/e;
.super Lcom/batch/android/c/ae;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Lcom/batch/android/c/ag;


# direct methods
.method protected varargs constructor <init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p4}, Lcom/batch/android/e;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/batch/android/c/ae;-><init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e;->a:I

    .line 58
    invoke-direct {p0}, Lcom/batch/android/e;->a()V

    .line 59
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 561
    :try_start_0
    const-string v1, "1.8.0"

    .line 562
    invoke-static {p0}, Lcom/batch/android/c/z;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-static {p0}, Lcom/batch/android/c/z;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 564
    invoke-static {}, Lcom/batch/android/c/z;->j()Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-static {}, Lcom/batch/android/c/z;->i()Ljava/lang/String;

    move-result-object v5

    .line 568
    invoke-static {}, Lcom/batch/android/c/z;->l()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {}, Lcom/batch/android/c/z;->k()Ljava/lang/String;

    move-result-object v6

    .line 570
    const-string v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v6, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 573
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_0
    const-string v6, "%s%s/%s %s/%s (%s;%s)"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    const-string v8, "com.batch.android"

    aput-object v8, v7, v0

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v4, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 581
    :goto_0
    return-object v0

    .line 578
    :catch_0
    move-exception v0

    .line 580
    const-string v1, "Error while building User Agent header"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 420
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/batch/android/c/z;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 449
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 451
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find parameter value for key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 459
    :catch_0
    move-exception v0

    .line 461
    const-string v1, "Error while building property parameters"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 455
    :cond_5
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/batch/android/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-static {}, Lcom/batch/android/Batch;->getAPIKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 75
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 594
    :try_start_0
    invoke-static {}, Lcom/batch/android/c/z;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-static {}, Lcom/batch/android/c/z;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 597
    const-string v2, "%s-%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 602
    :goto_0
    return-object v0

    .line 599
    :catch_0
    move-exception v0

    .line 601
    const-string v1, "Error while building Accept Language header"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 602
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/batch/android/c/ag;)V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/batch/android/c/ae;->a(Lcom/batch/android/c/ag;)V

    .line 407
    iget v0, p0, Lcom/batch/android/e;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/e;->a:I

    .line 408
    iput-object p1, p0, Lcom/batch/android/e;->b:Lcom/batch/android/c/ag;

    .line 409
    return-void
.end method

.method protected b(Lcom/batch/android/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 482
    if-nez p1, :cond_0

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null body json"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    :try_start_0
    const-string v0, "parameters"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "parameters"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    const-string v0, "parameters"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v3

    .line 493
    invoke-virtual {v3}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 522
    :cond_1
    :goto_0
    return-void

    :cond_2
    move v2, v1

    .line 498
    :goto_1
    invoke-virtual {v3}, Lcom/batch/android/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v2, v0, :cond_1

    .line 503
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/batch/android/json/JSONArray;->getJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 505
    const-string v4, "n"

    invoke-virtual {v0, v4}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 506
    const-string v5, "v"

    invoke-virtual {v0, v5}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 507
    const-string v6, "s"

    invoke-virtual {v0, v6}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "s"

    invoke-virtual {v0, v6}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "s"

    invoke-virtual {v0, v6}, Lcom/batch/android/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 509
    :goto_2
    iget-object v6, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v6}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v0}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 498
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 507
    goto :goto_2

    .line 511
    :catch_0
    move-exception v0

    .line 513
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while reading parameter #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 518
    :catch_1
    move-exception v0

    .line 520
    const-string v1, "Error while reading parameters into WS response"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected c(Lcom/batch/android/json/JSONObject;)V
    .locals 4

    .prologue
    .line 531
    if-nez p1, :cond_0

    .line 533
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null body json"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    :try_start_0
    const-string v0, "i"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "i"

    invoke-virtual {p1, v0}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "app.server.id"

    const-string v2, "i"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_1
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 545
    const-string v1, "Error while reading server id into WS response"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected m()Lcom/batch/android/g/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/batch/android/g/c",
            "<",
            "Lcom/batch/android/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 122
    new-instance v4, Lcom/batch/android/json/JSONObject;

    invoke-direct {v4}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 127
    new-instance v5, Lcom/batch/android/json/JSONObject;

    invoke-direct {v5}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 134
    :try_start_0
    const-string v0, "m_e"

    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/f/f;->c()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    .line 135
    const-string v0, "m_p"

    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/f/e;->c()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "app.ids.pattern"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v2, "app.ids.pattern_advanced"

    invoke-virtual {v0, v2}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/batch/android/Batch;->shouldUseAdvancedDeviceInformation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 169
    :goto_2
    array-length v0, v2

    if-nez v0, :cond_3

    .line 183
    :goto_3
    array-length v6, v1

    move v2, v3

    :goto_4
    if-ge v2, v6, :cond_11

    aget-object v7, v1, v2

    .line 187
    :try_start_1
    sget-object v0, Lcom/batch/android/c/aa;->b:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    const-string v0, "ANDROID-com.batch.android"

    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :cond_0
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 137
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "Error while adding module parameters into parameters"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 153
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 164
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    move-object v2, v0

    goto :goto_2

    .line 173
    :cond_3
    array-length v0, v1

    if-nez v0, :cond_4

    move-object v1, v2

    .line 175
    goto :goto_3

    .line 179
    :cond_4
    array-length v0, v1

    array-length v6, v2

    add-int/2addr v0, v6

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 180
    array-length v1, v1

    array-length v6, v2

    invoke-static {v2, v3, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    goto :goto_3

    .line 191
    :cond_5
    :try_start_2
    sget-object v0, Lcom/batch/android/c/aa;->l:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 193
    invoke-static {}, Lcom/batch/android/Batch;->b()Lcom/batch/android/i;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/batch/android/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 302
    :catch_1
    move-exception v0

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while adding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " post id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 201
    :cond_6
    :try_start_3
    sget-object v0, Lcom/batch/android/c/aa;->m:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    invoke-static {}, Lcom/batch/android/Batch;->b()Lcom/batch/android/i;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/batch/android/i;->b()Ljava/util/Date;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 208
    invoke-static {v0}, Lcom/batch/android/c/ae;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto :goto_5

    .line 211
    :cond_7
    sget-object v0, Lcom/batch/android/c/aa;->n:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 213
    iget-object v0, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v8, "app.server.id"

    invoke-virtual {v0, v8}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_5

    .line 219
    :cond_8
    sget-object v0, Lcom/batch/android/c/aa;->q:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 221
    invoke-static {}, Lcom/batch/android/Batch;->getSessionID()Ljava/lang/String;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_5

    .line 227
    :cond_9
    sget-object v0, Lcom/batch/android/c/aa;->K:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 229
    invoke-static {}, Lcom/batch/android/Batch;->c()Lcom/batch/android/o;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/batch/android/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_5

    .line 240
    :cond_a
    sget-object v0, Lcom/batch/android/c/aa;->o:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    invoke-static {}, Lcom/batch/android/Batch;->shouldUseAndroidID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/batch/android/Batch;->a()Lcom/batch/android/g;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/batch/android/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_5

    .line 252
    :cond_b
    sget-object v0, Lcom/batch/android/c/aa;->p:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 254
    invoke-static {}, Lcom/batch/android/Batch;->shouldUseAdvertisingID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/batch/android/Batch;->a()Lcom/batch/android/g;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/batch/android/g;->b()Z

    move-result v8

    .line 259
    if-eqz v8, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/batch/android/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_5

    .line 265
    :cond_c
    sget-object v0, Lcom/batch/android/c/aa;->r:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 267
    invoke-static {}, Lcom/batch/android/Batch;->a()Lcom/batch/android/g;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/batch/android/g;->b()Z

    move-result v8

    .line 270
    if-eqz v8, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/batch/android/g;->d()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_5

    :cond_d
    move v0, v3

    goto :goto_6

    .line 275
    :cond_e
    sget-object v0, Lcom/batch/android/c/aa;->L:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 277
    invoke-static {}, Lcom/batch/android/c/z;->k()Ljava/lang/String;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 281
    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_5

    .line 284
    :cond_f
    sget-object v0, Lcom/batch/android/c/aa;->M:Lcom/batch/android/c/aa;

    iget-object v0, v0, Lcom/batch/android/c/aa;->R:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 286
    invoke-static {}, Lcom/batch/android/c/z;->l()Ljava/lang/String;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 290
    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    goto/16 :goto_5

    .line 295
    :cond_10
    iget-object v0, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/batch/android/c/z;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v5, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 313
    :cond_11
    :try_start_4
    const-string v0, "ids"

    invoke-virtual {v4, v0, v5}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 322
    :goto_7
    :try_start_5
    const-string v0, "rc"

    iget v1, p0, Lcom/batch/android/e;->a:I

    invoke-virtual {v4, v0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    .line 324
    iget-object v0, p0, Lcom/batch/android/e;->b:Lcom/batch/android/c/ag;

    if-eqz v0, :cond_12

    .line 326
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 328
    const-string v1, "cause"

    iget-object v2, p0, Lcom/batch/android/e;->b:Lcom/batch/android/c/ag;

    invoke-virtual {v2}, Lcom/batch/android/c/ag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 330
    const-string v1, "lastFail"

    invoke-virtual {v4, v1, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 343
    :cond_12
    :goto_8
    :try_start_6
    invoke-static {}, Lcom/batch/android/Batch;->getUserProfile()Lcom/batch/android/BatchUserProfile;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/batch/android/BatchUserProfile;->a()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lcom/batch/android/BatchUserProfile;->b()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 346
    :cond_13
    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-direct {v1}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 348
    invoke-virtual {v0}, Lcom/batch/android/BatchUserProfile;->a()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 350
    const-string v2, "ula"

    invoke-virtual {v0}, Lcom/batch/android/BatchUserProfile;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 353
    :cond_14
    invoke-virtual {v0}, Lcom/batch/android/BatchUserProfile;->b()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 355
    const-string v2, "ure"

    invoke-virtual {v0}, Lcom/batch/android/BatchUserProfile;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 358
    :cond_15
    const-string v2, "upv"

    invoke-virtual {v0}, Lcom/batch/android/BatchUserProfile;->c()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    .line 360
    const-string v0, "upr"

    invoke-virtual {v4, v0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 373
    :cond_16
    :goto_9
    :try_start_7
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/q;->a()Ljava/util/Map;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_17

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 376
    new-instance v3, Lcom/batch/android/json/JSONArray;

    invoke-direct {v3}, Lcom/batch/android/json/JSONArray;-><init>()V

    .line 378
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/q$a;

    .line 382
    new-instance v6, Lcom/batch/android/json/JSONObject;

    invoke-direct {v6}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 383
    const-string v7, "u"

    invoke-virtual {v6, v7, v0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 384
    const-string v0, "s"

    iget-boolean v7, v1, Lcom/batch/android/q$a;->a:Z

    invoke-virtual {v6, v0, v7}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    .line 385
    const-string v0, "t"

    iget-wide v8, v1, Lcom/batch/android/q$a;->b:J

    invoke-virtual {v6, v0, v8, v9}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    .line 387
    invoke-virtual {v3, v6}, Lcom/batch/android/json/JSONArray;->put(Ljava/lang/Object;)Lcom/batch/android/json/JSONArray;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_a

    .line 393
    :catch_2
    move-exception v0

    .line 395
    const-string v1, "Error while adding metrics to the body"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    :cond_17
    :goto_b
    new-instance v0, Lcom/batch/android/g/a;

    invoke-direct {v0, v4}, Lcom/batch/android/g/a;-><init>(Lcom/batch/android/json/JSONObject;)V

    return-object v0

    .line 315
    :catch_3
    move-exception v0

    .line 317
    const-string v1, "Error while adding ids object to global post params"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 333
    :catch_4
    move-exception v0

    .line 335
    const-string v1, "Error while adding retry count data to global post params"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 363
    :catch_5
    move-exception v0

    .line 365
    const-string v1, "Error while adding upr to body"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 390
    :cond_18
    :try_start_8
    const-string v0, "metrics"

    invoke-virtual {v4, v0, v3}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_b
.end method

.method protected n()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/batch/android/c/ae;->n()V

    .line 91
    iget-object v0, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/batch/android/e;->d:Ljava/util/Map;

    const-string v2, "UserAgent"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/batch/android/e;->d:Ljava/util/Map;

    const-string v2, "x-UserAgent"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/batch/android/e;->d:Ljava/util/Map;

    const-string v2, "Accept-Language"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    iget v0, p0, Lcom/batch/android/e;->a:I

    if-lez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/batch/android/e;->d:Ljava/util/Map;

    const-string v1, "X-RetryCount"

    iget v2, p0, Lcom/batch/android/e;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_2
    return-void
.end method
