.class public final Lcom/batch/android/BatchUserProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "u_c_l"

.field private static final b:Ljava/lang/String; = "u_c_r"


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private declared-synchronized d()V
    .locals 6

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/BatchUserProfile;->c()J

    move-result-wide v0

    .line 279
    iget-object v2, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    const-string v3, "app.profile.version"

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    invoke-virtual {p0}, Lcom/batch/android/BatchUserProfile;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_0

    .line 289
    const-string v2, "ure"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/BatchUserProfile;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_1

    .line 295
    const-string v2, "ula"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/batch/android/BatchUserProfile;->getCustomID()Ljava/lang/String;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_2

    .line 301
    const-string v2, "cus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_2
    const-string v1, "upv"

    invoke-virtual {p0}, Lcom/batch/android/BatchUserProfile;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v1

    const-string v2, "_PROFILE_CHANGED"

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/f/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "u_c_l"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "u_c_r"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x1

    .line 259
    iget-object v2, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    const-string v3, "app.profile.version"

    invoke-virtual {v2, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    if-nez v2, :cond_0

    .line 272
    :goto_0
    return-wide v0

    .line 268
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCustomID()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/batch/android/o;

    iget-object v1, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/batch/android/o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "u_c_l"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/batch/android/c/z;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "u_c_r"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/batch/android/c/z;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCustomID(Ljava/lang/String;)Lcom/batch/android/BatchUserProfile;
    .locals 2
    .param p1, "customID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/batch/android/o;

    iget-object v1, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/o;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v0}, Lcom/batch/android/o;->a()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {v0, p1}, Lcom/batch/android/o;->a(Ljava/lang/String;)V

    .line 229
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/batch/android/BatchUserProfile;->d()V

    .line 233
    invoke-direct {p0}, Lcom/batch/android/BatchUserProfile;->e()V

    .line 236
    :cond_3
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/batch/android/BatchUserProfile;
    .locals 4
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 71
    const/4 v0, 0x0

    const-string v1, "BatchUserProfile : setLanguage called with invalid language (must be at least 2 chars)"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-object p0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "u_c_l"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz p1, :cond_5

    .line 79
    iget-object v1, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "u_c_l"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-ne p1, v0, :cond_4

    :cond_3
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :cond_4
    invoke-direct {p0}, Lcom/batch/android/BatchUserProfile;->d()V

    .line 93
    invoke-direct {p0}, Lcom/batch/android/BatchUserProfile;->e()V

    goto :goto_0

    .line 83
    :cond_5
    iget-object v1, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "u_c_l"

    invoke-virtual {v1, v2}, Lcom/batch/android/c/t;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setRegion(Ljava/lang/String;)Lcom/batch/android/BatchUserProfile;
    .locals 4
    .param p1, "region"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 144
    const/4 v0, 0x0

    const-string v1, "BatchUserProfile : setRegion called with invalid language (must be 2 chars)"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return-object p0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "u_c_r"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz p1, :cond_5

    .line 152
    iget-object v1, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "u_c_r"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-ne p1, v0, :cond_4

    :cond_3
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :cond_4
    invoke-direct {p0}, Lcom/batch/android/BatchUserProfile;->d()V

    .line 166
    invoke-direct {p0}, Lcom/batch/android/BatchUserProfile;->e()V

    goto :goto_0

    .line 156
    :cond_5
    iget-object v1, p0, Lcom/batch/android/BatchUserProfile;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "u_c_r"

    invoke-virtual {v1, v2}, Lcom/batch/android/c/t;->b(Ljava/lang/String;)V

    goto :goto_1
.end method
