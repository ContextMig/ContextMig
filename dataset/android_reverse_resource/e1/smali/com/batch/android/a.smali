.class Lcom/batch/android/a;
.super Lcom/batch/android/d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c/ac;


# instance fields
.field private f:J

.field private g:Ljava/lang/String;

.field private h:Lcom/batch/android/l/a/a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/batch/android/l/a/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/batch/android/c/ae$a;->b:Lcom/batch/android/c/ae$a;

    const-string v1, "https://ws.batch.com/a/1.8.0/atc/%s"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/d;-><init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "version <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    if-nez p4, :cond_1

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transactionid==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    if-nez p5, :cond_2

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p5, p0, Lcom/batch/android/a;->h:Lcom/batch/android/l/a/a;

    .line 66
    iput-wide p2, p0, Lcom/batch/android/a;->f:J

    .line 67
    iput-object p4, p0, Lcom/batch/android/a;->g:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/h/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    new-instance v1, Lcom/batch/android/h/a;

    iget-object v2, p0, Lcom/batch/android/a;->e:Landroid/content/Context;

    iget-wide v4, p0, Lcom/batch/android/a;->f:J

    iget-object v3, p0, Lcom/batch/android/a;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/batch/android/h/a;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "Batch/pushws"

    return-object v0
.end method

.method public c()Lcom/batch/android/c/ae$b;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/batch/android/c/ae$b;->a:Lcom/batch/android/c/ae$b;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "ws.attrcheck.property"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "ws.attrcheck.pattern"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "ws.attrcheck.getcryptor.type"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "ws.attrcheck.getcryptor.mode"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "ws.attrcheck.postcryptor.type"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "ws.attrcheck.readcryptor.type"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "ws.attrcheck.connect.timeout"

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "ws.attrcheck.read.timeout"

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, "ws.attrcheck.retry"

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 87
    :try_start_0
    const-string v0, "attributes check webservice started"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    invoke-virtual {p0}, Lcom/batch/android/a;->u()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;Z)V
    :try_end_1
    .catch Lcom/batch/android/c/ae$c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/batch/android/a;->a(Lcom/batch/android/json/JSONObject;)V

    .line 131
    const-class v0, Lcom/batch/android/h/a/a;

    sget-object v1, Lcom/batch/android/h/e;->e:Lcom/batch/android/h/e;

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/a;->a(Ljava/lang/Class;Lcom/batch/android/h/e;)Lcom/batch/android/h/a/d;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/a/a;

    .line 132
    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing attributes check response"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    const-string v1, "Error while reading AttributesCheckWebservice response"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    iget-object v0, p0, Lcom/batch/android/a;->h:Lcom/batch/android/l/a/a;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/a;->a(Lcom/batch/android/FailReason;)V

    .line 147
    :goto_0
    return-void

    .line 99
    :catch_1
    move-exception v0

    .line 101
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on AttributesCheckWebservice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c;->a()Lcom/batch/android/c/ae$c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/c/ae$c$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;Z)V

    .line 104
    sget-object v1, Lcom/batch/android/a$1;->a:[I

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c;->a()Lcom/batch/android/c/ae$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 116
    iget-object v0, p0, Lcom/batch/android/a;->h:Lcom/batch/android/l/a/a;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/a;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/batch/android/a;->h:Lcom/batch/android/l/a/a;

    sget-object v1, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/a;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/batch/android/a;->h:Lcom/batch/android/l/a/a;

    sget-object v1, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/a;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/batch/android/a;->h:Lcom/batch/android/l/a/a;

    sget-object v1, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/a;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 137
    :cond_0
    const-string v1, "attributes check webservice ended"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/batch/android/a;->h:Lcom/batch/android/l/a/a;

    invoke-interface {v1, v0}, Lcom/batch/android/l/a/a;->a(Lcom/batch/android/h/a/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
