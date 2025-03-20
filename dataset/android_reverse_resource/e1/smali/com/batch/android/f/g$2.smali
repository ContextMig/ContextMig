.class Lcom/batch/android/f/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/g;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/f/g;


# direct methods
.method constructor <init>(Lcom/batch/android/f/g;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/batch/android/f/g$2;->a:Lcom/batch/android/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-wide/16 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/batch/android/f/g$2;->a:Lcom/batch/android/f/g;

    invoke-static {v0}, Lcom/batch/android/f/g;->a(Lcom/batch/android/f/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    .line 161
    if-nez v0, :cond_2

    .line 163
    const-string v0, "Internal error while sending attributes check WS: null context"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 182
    :try_start_1
    const-string v0, "user_profile.data.version"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 189
    :goto_1
    const-string v5, "user_profile.data.transactionID"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/batch/android/f/g$2;->a:Lcom/batch/android/f/g;

    invoke-virtual {v0, v2, v3}, Lcom/batch/android/f/g;->a(J)V

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "Internal error while sending attributes check WS"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    move-wide v0, v2

    .line 186
    goto :goto_1

    .line 202
    :cond_3
    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 204
    const-wide/16 v0, 0x1

    .line 205
    const-string v2, "user_profile.data.version"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3, v7}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 208
    :cond_4
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v2

    invoke-static {v2, v0, v1, v5}, Lcom/batch/android/p;->a(Lcom/batch/android/i/c;JLjava/lang/String;)Z

    goto :goto_0
.end method
