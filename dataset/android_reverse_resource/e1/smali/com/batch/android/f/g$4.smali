.class Lcom/batch/android/f/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/g;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/batch/android/f/g;


# direct methods
.method constructor <init>(Lcom/batch/android/f/g;J)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/batch/android/f/g$4;->b:Lcom/batch/android/f/g;

    iput-wide p2, p0, Lcom/batch/android/f/g$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 271
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 282
    :try_start_1
    const-string v0, "user_profile.data.version"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 289
    :goto_0
    iget-wide v6, p0, Lcom/batch/android/f/g$4;->a:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 293
    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 295
    const-string v0, "user_profile.data.version"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    const-string v0, "user_profile.data.transactionID"

    invoke-virtual {v4, v0}, Lcom/batch/android/c/t;->b(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/batch/android/f/g;->a(J)V

    .line 300
    :cond_0
    :goto_1
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 276
    const-string v1, "Internal error while bumping user data version"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 284
    :catch_1
    move-exception v0

    move-wide v0, v2

    .line 286
    goto :goto_0
.end method
