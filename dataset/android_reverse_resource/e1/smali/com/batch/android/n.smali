.class final Lcom/batch/android/n;
.super Lcom/batch/android/d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c/ac;


# instance fields
.field private f:Lcom/batch/android/l/a/e;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/batch/android/l/a/e;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/batch/android/l/a/e;",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/batch/android/c/ae$a;->b:Lcom/batch/android/c/ae$a;

    const-string v1, "https://ws.batch.com/a/1.8.0/tr/%s"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/d;-><init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    if-nez p2, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "events is empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    iput-object p2, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/batch/android/n;->g:Ljava/util/List;

    .line 44
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
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    new-instance v1, Lcom/batch/android/h/g;

    iget-object v2, p0, Lcom/batch/android/n;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/batch/android/n;->g:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/batch/android/h/g;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "Batch/trackerws"

    return-object v0
.end method

.method public c()Lcom/batch/android/c/ae$b;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/batch/android/c/ae$b;->a:Lcom/batch/android/c/ae$b;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "ws.tracker.property"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "ws.tracker.pattern"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "ws.tracker.getcryptor.type"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "ws.tracker.getcryptor.mode"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "ws.tracker.postcryptor.type"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "ws.tracker.readcryptor.type"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "ws.tracker.connect.timeout"

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "ws.tracker.read.timeout"

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "ws.tracker.retry"

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    const-string v0, "tracker webservice started"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    invoke-virtual {p0}, Lcom/batch/android/n;->u()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;Z)V
    :try_end_1
    .catch Lcom/batch/android/c/ae$c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/batch/android/n;->a(Lcom/batch/android/json/JSONObject;)V

    .line 104
    const-string v0, "tracker webservice ended"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    iget-object v1, p0, Lcom/batch/android/n;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/e;->a(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    invoke-interface {v0}, Lcom/batch/android/l/a/e;->a()V

    .line 118
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on TrackerWebservice : "

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

    .line 78
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;Z)V

    .line 80
    sget-object v1, Lcom/batch/android/n$1;->a:[I

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c;->a()Lcom/batch/android/c/ae$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 92
    iget-object v0, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    iget-object v2, p0, Lcom/batch/android/n;->g:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/batch/android/l/a/e;->a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    invoke-interface {v0}, Lcom/batch/android/l/a/e;->a()V

    goto :goto_0

    .line 83
    :pswitch_0
    :try_start_4
    iget-object v0, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    sget-object v1, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    iget-object v2, p0, Lcom/batch/android/n;->g:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/batch/android/l/a/e;->a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 109
    :catch_1
    move-exception v0

    .line 111
    :try_start_5
    const-string v1, "Error while reading TrackerWebservice response"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iget-object v0, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    iget-object v2, p0, Lcom/batch/android/n;->g:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/batch/android/l/a/e;->a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    invoke-interface {v0}, Lcom/batch/android/l/a/e;->a()V

    goto :goto_0

    .line 86
    :pswitch_1
    :try_start_6
    iget-object v0, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    sget-object v1, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    iget-object v2, p0, Lcom/batch/android/n;->g:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/batch/android/l/a/e;->a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    invoke-interface {v1}, Lcom/batch/android/l/a/e;->a()V

    throw v0

    .line 89
    :pswitch_2
    :try_start_7
    iget-object v0, p0, Lcom/batch/android/n;->f:Lcom/batch/android/l/a/e;

    sget-object v1, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    iget-object v2, p0, Lcom/batch/android/n;->g:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/batch/android/l/a/e;->a(Lcom/batch/android/FailReason;Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
