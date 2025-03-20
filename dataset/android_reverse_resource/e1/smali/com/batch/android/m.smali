.class Lcom/batch/android/m;
.super Lcom/batch/android/d;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c/ac;


# instance fields
.field private f:Lcom/batch/android/l/a/d;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;ZLjava/lang/String;ZLcom/batch/android/l/a/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/batch/android/c/ae$a;->b:Lcom/batch/android/c/ae$a;

    const-string v1, "https://ws.batch.com/a/1.8.0/st/%s"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/batch/android/d;-><init>(Landroid/content/Context;Lcom/batch/android/c/ae$a;Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    if-nez p5, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p5, p0, Lcom/batch/android/m;->f:Lcom/batch/android/l/a/d;

    .line 69
    iput-boolean p2, p0, Lcom/batch/android/m;->g:Z

    .line 70
    iput-object p3, p0, Lcom/batch/android/m;->h:Ljava/lang/String;

    .line 71
    iput-boolean p4, p0, Lcom/batch/android/m;->i:Z

    .line 72
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
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v1, Lcom/batch/android/h/f;

    iget-object v2, p0, Lcom/batch/android/m;->e:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/batch/android/m;->g:Z

    iget-object v4, p0, Lcom/batch/android/m;->h:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/batch/android/m;->i:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/batch/android/h/f;-><init>(Landroid/content/Context;ZLjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/f/e;->l()Ljava/lang/String;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    .line 87
    new-instance v2, Lcom/batch/android/h/c;

    iget-object v3, p0, Lcom/batch/android/m;->e:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/batch/android/h/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "Batch/startws"

    return-object v0
.end method

.method public c()Lcom/batch/android/c/ae$b;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/batch/android/c/ae$b;->a:Lcom/batch/android/c/ae$b;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "ws.start.property"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "ws.start.pattern"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "ws.start.getcryptor.type"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "ws.start.getcryptor.mode"

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "ws.start.postcryptor.type"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "ws.start.readcryptor.type"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, "ws.start.connect.timeout"

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const-string v0, "ws.start.read.timeout"

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string v0, "ws.start.retry"

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 98
    :try_start_0
    const-string v0, "start webservice started"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/batch/android/q;->b()Lcom/batch/android/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/q;->a(Lcom/batch/android/c/ae;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lcom/batch/android/m;->u()Lcom/batch/android/json/JSONObject;

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
    invoke-virtual {p0, v0}, Lcom/batch/android/m;->a(Lcom/batch/android/json/JSONObject;)V

    .line 143
    const-class v0, Lcom/batch/android/h/a/e;

    sget-object v1, Lcom/batch/android/h/e;->a:Lcom/batch/android/h/e;

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/m;->a(Ljava/lang/Class;Lcom/batch/android/h/e;)Lcom/batch/android/h/a/d;

    move-result-object v0

    check-cast v0, Lcom/batch/android/h/a/e;

    .line 144
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing start response"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "Error while reading StartWebservice response"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    iget-object v0, p0, Lcom/batch/android/m;->f:Lcom/batch/android/l/a/d;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/d;->a(Lcom/batch/android/FailReason;)V

    .line 159
    :goto_0
    return-void

    .line 110
    :catch_1
    move-exception v0

    .line 112
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on StartWebservice : "

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
    sget-object v1, Lcom/batch/android/m$1;->a:[I

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c;->a()Lcom/batch/android/c/ae$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/c/ae$c$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 127
    iget-object v0, p0, Lcom/batch/android/m;->f:Lcom/batch/android/l/a/d;

    sget-object v1, Lcom/batch/android/FailReason;->UNEXPECTED_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/d;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/batch/android/m;->f:Lcom/batch/android/l/a/d;

    sget-object v1, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/d;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/batch/android/m;->f:Lcom/batch/android/l/a/d;

    sget-object v1, Lcom/batch/android/FailReason;->INVALID_API_KEY:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/d;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/batch/android/m;->f:Lcom/batch/android/l/a/d;

    sget-object v1, Lcom/batch/android/FailReason;->DEACTIVATED_API_KEY:Lcom/batch/android/FailReason;

    invoke-interface {v0, v1}, Lcom/batch/android/l/a/d;->a(Lcom/batch/android/FailReason;)V

    goto :goto_0

    .line 149
    :cond_0
    const-string v0, "start webservice ended"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/batch/android/m;->f:Lcom/batch/android/l/a/d;

    invoke-interface {v0}, Lcom/batch/android/l/a/d;->a()V
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
