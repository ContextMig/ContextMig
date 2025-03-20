.class Lcom/batch/android/l;
.super Lcom/batch/android/d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c/ac;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/batch/android/l/a/c;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/l/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/batch/android/c/ae$a;->b:Lcom/batch/android/c/ae$a;

    const-string v1, "https://ws.batch.com/a/1.8.0/t/%s"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/d;-><init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pushtoken==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-nez p3, :cond_1

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iput-object p3, p0, Lcom/batch/android/l;->g:Lcom/batch/android/l/a/c;

    .line 62
    iput-object p2, p0, Lcom/batch/android/l;->f:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 4
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
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    new-instance v1, Lcom/batch/android/h/c;

    iget-object v2, p0, Lcom/batch/android/l;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/batch/android/l;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/batch/android/h/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "Batch/pushws"

    return-object v0
.end method

.method public c()Lcom/batch/android/c/ae$b;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/batch/android/c/ae$b;->a:Lcom/batch/android/c/ae$b;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "ws.push.property"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "ws.push.pattern"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "ws.push.getcryptor.type"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "ws.push.getcryptor.mode"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "ws.push.postcryptor.type"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "ws.push.readcryptor.type"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "ws.push.connect.timeout"

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "ws.push.read.timeout"

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "ws.push.retry"

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    const-string v0, "push webservice started"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Lcom/batch/android/l;->u()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;Z)V
    :try_end_1
    .catch Lcom/batch/android/c/ae$c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/batch/android/l;->a(Lcom/batch/android/json/JSONObject;)V

    .line 126
    const-class v0, Lcom/batch/android/h/a/c;

    sget-object v1, Lcom/batch/android/h/e;->c:Lcom/batch/android/h/e;

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/l;->a(Ljava/lang/Class;Lcom/batch/android/h/e;)Lcom/batch/android/h/a/d;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/a/c;

    .line 127
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing push response"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "Error while reading PushWebservice response"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    iget-object v0, p0, Lcom/batch/android/l;->g:Lcom/batch/android/l/a/c;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/c;->a(Lcom/batch/android/FailReason;)V

    .line 142
    :goto_0
    return-void

    .line 94
    :catch_1
    move-exception v0

    .line 96
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on PushWebservice : "

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

    .line 97
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;Z)V

    .line 99
    sget-object v1, Lcom/batch/android/l$1;->a:[I

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c;->a()Lcom/batch/android/c/ae$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 111
    iget-object v0, p0, Lcom/batch/android/l;->g:Lcom/batch/android/l/a/c;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/c;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/batch/android/l;->g:Lcom/batch/android/l/a/c;

    sget-object v1, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/c;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/batch/android/l;->g:Lcom/batch/android/l/a/c;

    sget-object v1, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/c;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/batch/android/l;->g:Lcom/batch/android/l/a/c;

    sget-object v1, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/c;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 132
    :cond_0
    const-string v0, "push webservice ended"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/batch/android/l;->g:Lcom/batch/android/l/a/c;

    invoke-interface {v0}, Lcom/batch/android/l/a/c;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
