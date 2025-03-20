.class Lcom/batch/android/b;
.super Lcom/batch/android/d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c/ac;


# instance fields
.field private f:J

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Lcom/batch/android/l/a/b;


# direct methods
.method protected constructor <init>(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;Lcom/batch/android/l/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/batch/android/l/a/b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/batch/android/c/ae$a;->b:Lcom/batch/android/c/ae$a;

    const-string v1, "https://ws.batch.com/a/1.8.0/ats/%s"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/d;-><init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "version <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez p4, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pushtoken==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    if-nez p5, :cond_2

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tags==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    if-nez p6, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    iput-object p6, p0, Lcom/batch/android/b;->i:Lcom/batch/android/l/a/b;

    .line 76
    iput-wide p2, p0, Lcom/batch/android/b;->f:J

    .line 77
    iput-object p4, p0, Lcom/batch/android/b;->g:Ljava/util/Map;

    .line 78
    iput-object p5, p0, Lcom/batch/android/b;->h:Ljava/util/Map;

    .line 79
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 7
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
    .line 86
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    new-instance v0, Lcom/batch/android/h/b;

    iget-object v1, p0, Lcom/batch/android/b;->e:Landroid/content/Context;

    iget-wide v2, p0, Lcom/batch/android/b;->f:J

    iget-object v4, p0, Lcom/batch/android/b;->g:Ljava/util/Map;

    iget-object v5, p0, Lcom/batch/android/b;->h:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/h/b;-><init>(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v6
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "Batch/attrsendws"

    return-object v0
.end method

.method public c()Lcom/batch/android/c/ae$b;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/batch/android/c/ae$b;->a:Lcom/batch/android/c/ae$b;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "ws.attrsend.property"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "ws.attrsend.pattern"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "ws.attrsend.getcryptor.type"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "ws.attrsend.getcryptor.mode"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "ws.attrsend.postcryptor.type"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "ws.attrsend.readcryptor.type"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const-string v0, "ws.attrsend.connect.timeout"

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-string v0, "ws.attrsend.read.timeout"

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string v0, "ws.attrsend.retry"

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 98
    :try_start_0
    const-string v0, "attributes send webservice started"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lcom/batch/android/b;->u()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;Z)V
    :try_end_1
    .catch Lcom/batch/android/c/ae$c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/batch/android/b;->a(Lcom/batch/android/json/JSONObject;)V

    .line 142
    const-class v0, Lcom/batch/android/h/a/b;

    sget-object v1, Lcom/batch/android/h/e;->d:Lcom/batch/android/h/e;

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/b;->a(Ljava/lang/Class;Lcom/batch/android/h/e;)Lcom/batch/android/h/a/d;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/a/b;

    .line 143
    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing attributes send response"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "Error while reading AttributesSendWebservice response"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    iget-object v0, p0, Lcom/batch/android/b;->i:Lcom/batch/android/l/a/b;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/b;->a(Lcom/batch/android/FailReason;)V

    .line 158
    :goto_0
    return-void

    .line 110
    :catch_1
    move-exception v0

    .line 112
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on AttributeSend : "

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

    .line 113
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;Z)V

    .line 115
    sget-object v1, Lcom/batch/android/b$1;->a:[I

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c;->a()Lcom/batch/android/c/ae$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 127
    iget-object v0, p0, Lcom/batch/android/b;->i:Lcom/batch/android/l/a/b;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/b;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/batch/android/b;->i:Lcom/batch/android/l/a/b;

    sget-object v1, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/b;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/batch/android/b;->i:Lcom/batch/android/l/a/b;

    sget-object v1, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/b;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/batch/android/b;->i:Lcom/batch/android/l/a/b;

    sget-object v1, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/b;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 148
    :cond_0
    const-string v1, "attributes send webservice ended"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/batch/android/b;->i:Lcom/batch/android/l/a/b;

    invoke-interface {v1, v0}, Lcom/batch/android/l/a/b;->a(Lcom/batch/android/h/a/b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
