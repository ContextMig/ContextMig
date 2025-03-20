.class Lcom/batch/android/f/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/g;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/batch/android/f/g;


# direct methods
.method constructor <init>(Lcom/batch/android/f/g;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/batch/android/f/g$3;->c:Lcom/batch/android/f/g;

    iput-wide p2, p0, Lcom/batch/android/f/g$3;->a:J

    iput-object p4, p0, Lcom/batch/android/f/g$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 230
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 241
    :try_start_1
    const-string v0, "user_profile.data.version"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 248
    :goto_0
    iget-wide v4, p0, Lcom/batch/android/f/g$3;->a:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 250
    const-string v0, "user_profile.data.transactionID"

    iget-object v1, p0, Lcom/batch/android/f/g$3;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    invoke-static {}, Lcom/batch/android/f/g;->a()Lcom/batch/android/f/g;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Lcom/batch/android/f/g;->b(J)V

    .line 255
    :cond_0
    :goto_1
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 235
    const-string v1, "Internal error while storing transaction ID"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 243
    :catch_1
    move-exception v0

    .line 245
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
