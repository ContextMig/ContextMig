.class public Lcom/batch/android/c/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/c/l$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.batch"

.field private static final b:Ljava/lang/String; = "l"

.field private static final c:Ljava/lang/String; = "i"

.field private static final d:Ljava/lang/String; = "di"

.field private static final e:Ljava/lang/String; = "s"

.field private static final f:Ljava/lang/String; = "ld"

.field private static final g:Ljava/lang/String; = "bi"

.field private static final h:Ljava/lang/String; = "bp"

.field private static final i:Ljava/lang/String; = "a"

.field private static final j:Ljava/lang/String; = "pr"

.field private static final k:Ljava/lang/String; = "gr"

.field private static final l:Ljava/lang/String; = "grs"

.field private static final m:Ljava/lang/String; = "od"

.field private static final n:Ljava/lang/String; = "t"

.field private static final o:Ljava/lang/String; = "ex"

.field private static final p:Ljava/lang/String; = "va"


# instance fields
.field private q:Ljava/lang/String;

.field private r:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot init PushData without the associated JSON data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    :try_start_0
    iput-object p1, p0, Lcom/batch/android/c/l;->q:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error while parsing JSON data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Intent;)Lcom/batch/android/c/l;
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intent cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/l;->a(Landroid/os/Bundle;)Lcom/batch/android/c/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/batch/android/c/l;
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string v0, "com.batch"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Lcom/batch/android/c/l;

    invoke-direct {v0, v1}, Lcom/batch/android/c/l;-><init>(Ljava/lang/String;)V

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 444
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    :goto_0
    return-object v0

    .line 444
    :cond_0
    invoke-virtual {p1, p2}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/batch/android/c/l;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v1, p1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    :goto_0
    return-object v0

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v1, p1}, Lcom/batch/android/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v1, p1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    :goto_0
    return-object v0

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v1, p1}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/batch/android/c/l;->q:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Lcom/batch/android/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 177
    const-string v0, "l"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "l"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string v0, "i"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "di"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 198
    const-string v0, "ld"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lcom/batch/android/json/JSONObject;
    .locals 1

    .prologue
    .line 203
    const-string v0, "ld"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 208
    const-string v1, "bi"

    invoke-direct {p0, v1}, Lcom/batch/android/c/l;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    .line 209
    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    const-string v2, "u"

    invoke-direct {p0, v1, v2}, Lcom/batch/android/c/l;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    const-string v0, "bi"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "u"

    invoke-direct {p0, v0, v1}, Lcom/batch/android/c/l;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 232
    const-string v1, "bi"

    invoke-direct {p0, v1}, Lcom/batch/android/c/l;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    .line 233
    if-nez v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    const-string v1, "d"

    invoke-virtual {v2, v1}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "d"

    invoke-virtual {v2, v1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    const-string v3, "d"

    invoke-virtual {v2, v3}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v3

    .line 248
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 250
    invoke-virtual {v3, v2}, Lcom/batch/android/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 253
    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public m()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 263
    const-string v1, "bp"

    invoke-direct {p0, v1}, Lcom/batch/android/c/l;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    .line 264
    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    const-string v2, "u"

    invoke-direct {p0, v1, v2}, Lcom/batch/android/c/l;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    const-string v0, "bp"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 277
    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "u"

    invoke-direct {p0, v0, v1}, Lcom/batch/android/c/l;->a(Lcom/batch/android/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public o()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 287
    const-string v1, "bp"

    invoke-direct {p0, v1}, Lcom/batch/android/c/l;->b(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    .line 288
    if-nez v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 293
    :cond_1
    const-string v1, "d"

    invoke-virtual {v2, v1}, Lcom/batch/android/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "d"

    invoke-virtual {v2, v1}, Lcom/batch/android/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    const-string v3, "d"

    invoke-virtual {v2, v3}, Lcom/batch/android/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v3

    .line 303
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 305
    invoke-virtual {v3, v2}, Lcom/batch/android/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 308
    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public p()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    const-string v0, "a"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->c(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v2

    .line 321
    if-eqz v2, :cond_4

    .line 323
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 325
    invoke-virtual {v2, v0}, Lcom/batch/android/json/JSONArray;->optJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    .line 326
    if-nez v3, :cond_0

    .line 328
    const-string v3, "InternalPushData - getActions: Invalid action json array object. Skipping."

    invoke-static {v3}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 323
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    new-instance v4, Lcom/batch/android/c;

    invoke-direct {v4}, Lcom/batch/android/c;-><init>()V

    .line 333
    const-string v5, "l"

    invoke-virtual {v3, v5, v7}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/batch/android/c;->a:Ljava/lang/String;

    .line 334
    const-string v5, "i"

    invoke-virtual {v3, v5, v7}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/batch/android/c;->b:Ljava/lang/String;

    .line 335
    const-string v5, "ui"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v4, Lcom/batch/android/c;->e:Z

    .line 336
    const-string v5, "a"

    invoke-virtual {v3, v5, v7}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/batch/android/c;->c:Ljava/lang/String;

    .line 337
    const-string v5, "args"

    invoke-virtual {v3, v5}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v3

    iput-object v3, v4, Lcom/batch/android/c;->d:Lcom/batch/android/json/JSONObject;

    .line 338
    iget-object v3, v4, Lcom/batch/android/c;->d:Lcom/batch/android/json/JSONObject;

    if-nez v3, :cond_1

    .line 340
    new-instance v3, Lcom/batch/android/json/JSONObject;

    invoke-direct {v3}, Lcom/batch/android/json/JSONObject;-><init>()V

    iput-object v3, v4, Lcom/batch/android/c;->d:Lcom/batch/android/json/JSONObject;

    .line 343
    :cond_1
    iget-object v3, v4, Lcom/batch/android/c;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    const-string v3, "InternalPushData - getActions: Empty or null label. Skipping."

    invoke-static {v3}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 349
    :cond_2
    iget-object v3, v4, Lcom/batch/android/c;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    const-string v3, "InternalPushData - getActions: Empty or null action identifier. Skipping."

    invoke-static {v3}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 355
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    :cond_4
    return-object v1
.end method

.method public q()Lcom/batch/android/c/l$a;
    .locals 5

    .prologue
    .line 364
    const-string v0, "pr"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 370
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 371
    packed-switch v0, :pswitch_data_0

    .line 375
    :pswitch_0
    sget-object v0, Lcom/batch/android/c/l$a;->b:Lcom/batch/android/c/l$a;

    .line 392
    :goto_0
    return-object v0

    .line 377
    :pswitch_1
    sget-object v0, Lcom/batch/android/c/l$a;->c:Lcom/batch/android/c/l$a;

    goto :goto_0

    .line 379
    :pswitch_2
    sget-object v0, Lcom/batch/android/c/l$a;->d:Lcom/batch/android/c/l$a;

    goto :goto_0

    .line 381
    :pswitch_3
    sget-object v0, Lcom/batch/android/c/l$a;->e:Lcom/batch/android/c/l$a;

    goto :goto_0

    .line 383
    :pswitch_4
    sget-object v0, Lcom/batch/android/c/l$a;->f:Lcom/batch/android/c/l$a;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while reading the priority number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    :cond_0
    sget-object v0, Lcom/batch/android/c/l$a;->a:Lcom/batch/android/c/l$a;

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    const-string v0, "gr"

    invoke-direct {p0, v0}, Lcom/batch/android/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :cond_0
    return-object v0
.end method

.method public s()Z
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    const-string v1, "grs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public t()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 423
    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONObject;

    iget-object v1, p0, Lcom/batch/android/c/l;->r:Lcom/batch/android/json/JSONObject;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "i"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "od"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ex"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "va"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "t"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;[Ljava/lang/String;)V

    .line 424
    invoke-static {v0}, Lcom/batch/android/json/JSONHelper;->jsonObjectToMap(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 427
    :catch_0
    move-exception v0

    .line 429
    const-string v1, "Error while deserializing the PushData extra parameters."

    invoke-static {v5, v1, v0}, Lcom/batch/android/c/o;->b(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    const/4 v0, 0x0

    goto :goto_0
.end method
