.class Lcom/batch/android/f/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/g;->a(J)V
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
    .line 95
    iput-object p1, p0, Lcom/batch/android/f/g$1;->a:Lcom/batch/android/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v4

    .line 100
    if-nez v4, :cond_0

    .line 102
    const-string v0, "Internal error while sending attributes send WS: null context"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-static {v4}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 121
    :try_start_1
    const-string v0, "user_profile.data.version"

    const-string v1, "0"

    invoke-virtual {v5, v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 128
    :goto_1
    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 130
    const-wide/16 v0, 0x1

    .line 131
    const-string v2, "user_profile.data.version"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v3, v6}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    :cond_1
    invoke-static {v4}, Lcom/batch/android/k/e;->a(Landroid/content/Context;)Lcom/batch/android/k/e;

    move-result-object v2

    .line 136
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v3

    .line 138
    invoke-virtual {v2}, Lcom/batch/android/k/e;->h()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/batch/android/k/b;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 139
    invoke-virtual {v2}, Lcom/batch/android/k/e;->g()Ljava/util/Map;

    move-result-object v2

    .line 136
    invoke-static {v3, v0, v1, v4, v2}, Lcom/batch/android/p;->a(Lcom/batch/android/i/c;JLjava/util/Map;Ljava/util/Map;)Z

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "Internal error while sending attributes send WS"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    :catch_1
    move-exception v0

    move-wide v0, v2

    .line 125
    goto :goto_1
.end method
