.class public final Lcom/batch/android/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/batch/android/i/c;Ljava/util/List;Lcom/batch/android/l/a/e;)Lcom/batch/android/c/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/i/c;",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;",
            "Lcom/batch/android/l/a/e;",
            ")",
            "Lcom/batch/android/c/ac;"
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lcom/batch/android/n;

    invoke-virtual {p0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/batch/android/n;-><init>(Landroid/content/Context;Lcom/batch/android/l/a/e;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "Error while initializing TW"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/batch/android/i/c;JLjava/lang/String;)Z
    .locals 7

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/ab;->a(Landroid/content/Context;)Lcom/batch/android/c/ab;

    move-result-object v6

    new-instance v0, Lcom/batch/android/a;

    invoke-virtual {p0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Lcom/batch/android/l/a/a/a;

    invoke-direct {v5}, Lcom/batch/android/l/a/a/a;-><init>()V

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/a;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/batch/android/l/a/a;)V

    invoke-virtual {v6, v0}, Lcom/batch/android/c/ab;->a(Lcom/batch/android/c/ac;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "Error while initializing ATC WS"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/batch/android/i/c;JLjava/util/Map;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/i/c;",
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
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/ab;->a(Landroid/content/Context;)Lcom/batch/android/c/ab;

    move-result-object v7

    new-instance v0, Lcom/batch/android/b;

    invoke-virtual {p0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Lcom/batch/android/l/a/a/b;

    invoke-direct {v6}, Lcom/batch/android/l/a/a/b;-><init>()V

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/batch/android/b;-><init>(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;Lcom/batch/android/l/a/b;)V

    invoke-virtual {v7, v0}, Lcom/batch/android/c/ab;->a(Lcom/batch/android/c/ac;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "Error while initializing ATS WS"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/batch/android/i/c;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/ab;->a(Landroid/content/Context;)Lcom/batch/android/c/ab;

    move-result-object v0

    new-instance v1, Lcom/batch/android/l;

    invoke-virtual {p0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/batch/android/l/a/a/c;

    invoke-direct {v3}, Lcom/batch/android/l/a/a/c;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Lcom/batch/android/l;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/l/a/c;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/c/ab;->a(Lcom/batch/android/c/ac;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "Error while initializing PW"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/batch/android/i/c;ZLjava/lang/String;Z)Z
    .locals 7

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/ab;->a(Landroid/content/Context;)Lcom/batch/android/c/ab;

    move-result-object v6

    new-instance v0, Lcom/batch/android/m;

    invoke-virtual {p0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Lcom/batch/android/l/a/a/d;

    invoke-direct {v5}, Lcom/batch/android/l/a/a/d;-><init>()V

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/m;-><init>(Landroid/content/Context;ZLjava/lang/String;ZLcom/batch/android/l/a/d;)V

    invoke-virtual {v6, v0}, Lcom/batch/android/c/ab;->a(Lcom/batch/android/c/ac;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "Error while initializing SW"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    const/4 v0, 0x0

    goto :goto_0
.end method
