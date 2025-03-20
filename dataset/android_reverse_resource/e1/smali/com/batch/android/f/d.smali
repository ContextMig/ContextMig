.class public Lcom/batch/android/f/d;
.super Lcom/batch/android/f/b;
.source "SourceFile"


# static fields
.field private static final a:D = 30.0

.field private static final b:Ljava/lang/String; = "_MESSAGING"

.field private static final c:Ljava/lang/String; = "show"

.field private static final d:Ljava/lang/String; = "dismiss"

.field private static final e:Ljava/lang/String; = "close"

.field private static final f:Ljava/lang/String; = "cta"

.field private static g:Lcom/batch/android/f/d;


# instance fields
.field private h:Z

.field private i:D

.field private j:Lcom/batch/android/Batch$Messaging$LifecycleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/batch/android/f/d;->g:Lcom/batch/android/f/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/batch/android/f/b;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/f/d;->h:Z

    .line 82
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    iput-wide v0, p0, Lcom/batch/android/f/d;->i:D

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/f/d;->j:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    .line 266
    return-void
.end method

.method public static a()Lcom/batch/android/f/d;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/batch/android/f/d;->g:Lcom/batch/android/f/d;

    .line 62
    if-nez v0, :cond_1

    .line 64
    const-class v1, Lcom/batch/android/f/d;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/batch/android/f/d;->g:Lcom/batch/android/f/d;

    .line 67
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/batch/android/f/d;

    invoke-direct {v0}, Lcom/batch/android/f/d;-><init>()V

    sput-object v0, Lcom/batch/android/f/d;->g:Lcom/batch/android/f/d;

    .line 71
    :cond_0
    monitor-exit v1

    .line 73
    :cond_1
    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/batch/android/e/c/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;
    .locals 3
    .param p1    # Lcom/batch/android/e/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 227
    const-string v1, "s"

    const-string v2, "landing"

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 228
    const-string v1, "id"

    iget-object v2, p1, Lcom/batch/android/e/c/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 229
    iget-object v1, p1, Lcom/batch/android/e/c/c;->g:Lcom/batch/android/json/JSONObject;

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "ed"

    iget-object v2, p1, Lcom/batch/android/e/c/c;->g:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 233
    :cond_0
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 236
    return-object v0
.end method

.method private b(Lcom/batch/android/e/c/c;I)V
    .locals 3
    .param p1    # Lcom/batch/android/e/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 251
    :try_start_0
    const-string v0, "cta"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/f/d;->a(Lcom/batch/android/e/c/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 252
    const-string v1, "ctaIndex"

    invoke-virtual {v0, v1, p2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;

    .line 253
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v1

    const-string v2, "_MESSAGING"

    invoke-static {v0}, Lcom/batch/android/json/JSONHelper;->jsonObjectToMap(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/f/f;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v1, "Messaging"

    const-string v2, "Error while tracking CTA event"

    invoke-static {v1, v2, v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/batch/android/e/c/c;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/batch/android/e/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 242
    :try_start_0
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v0

    const-string v1, "_MESSAGING"

    invoke-direct {p0, p1, p2}, Lcom/batch/android/f/d;->a(Lcom/batch/android/e/c/c;Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/json/JSONHelper;->jsonObjectToMap(Lcom/batch/android/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/f/f;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "Messaging"

    const-string v2, "Error while tracking event"

    invoke-static {v1, v2, v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/json/JSONObject;)Landroid/support/v4/app/DialogFragment;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/batch/android/BatchMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/batch/android/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchMessagingException;
        }
    .end annotation

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    if-nez p2, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/batch/android/f/d;->b(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    new-instance v0, Lcom/batch/android/BatchMessagingException;

    const-string v1, "Integration problem: your app must bundle the support-v4 and appcompat-v7 support libraries, and their version must be higher than 23.0.0."

    invoke-direct {v0, v1}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2
    :try_start_0
    invoke-static {p3}, Lcom/batch/android/e/b;->a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/e/c/c;
    :try_end_0
    .catch Lcom/batch/android/e/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    instance-of v1, v0, Lcom/batch/android/e/c/a;

    if-eqz v1, :cond_3

    .line 199
    check-cast v0, Lcom/batch/android/e/c/a;

    invoke-static {p2, v0}, Lcom/batch/android/e/b/a;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/a;)Lcom/batch/android/e/b/a;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "Messaging"

    const-string v2, "Error while parsing push payload"

    invoke-static {v1, v2, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    new-instance v1, Lcom/batch/android/BatchMessagingException;

    invoke-virtual {v0}, Lcom/batch/android/e/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_3
    instance-of v1, v0, Lcom/batch/android/e/c/d;

    if-eqz v1, :cond_4

    .line 203
    check-cast v0, Lcom/batch/android/e/c/d;

    invoke-static {p2, v0}, Lcom/batch/android/e/b/e;->a(Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/d;)Lcom/batch/android/e/b/e;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_4
    new-instance v0, Lcom/batch/android/BatchMessagingException;

    const-string v1, "Internal error (code 10)"

    invoke-direct {v0, v1}, Lcom/batch/android/BatchMessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/b;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p3, Lcom/batch/android/e/c/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lcom/batch/android/f/a;->a()Lcom/batch/android/f/a;

    move-result-object v0

    iget-object v1, p3, Lcom/batch/android/e/c/b;->b:Ljava/lang/String;

    iget-object v2, p3, Lcom/batch/android/e/c/b;->c:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/batch/android/f/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)Z

    .line 217
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    sput-object p1, Lcom/batch/android/e/d/d/e;->a:Landroid/graphics/Typeface;

    .line 133
    sput-object p2, Lcom/batch/android/e/d/d/e;->b:Landroid/graphics/Typeface;

    .line 134
    return-void
.end method

.method public a(Lcom/batch/android/Batch$Messaging$LifecycleListener;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/batch/android/f/d;->j:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    .line 139
    return-void
.end method

.method public a(Lcom/batch/android/e/c/c;)V
    .locals 2
    .param p1    # Lcom/batch/android/e/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    const-string v0, "show"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/f/d;->b(Lcom/batch/android/e/c/c;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/batch/android/f/d;->j:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/batch/android/f/d;->j:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    iget-object v1, p1, Lcom/batch/android/e/c/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageShown(Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public a(Lcom/batch/android/e/c/c;I)V
    .locals 0
    .param p1    # Lcom/batch/android/e/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Lcom/batch/android/f/d;->b(Lcom/batch/android/e/c/c;I)V

    .line 299
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/batch/android/f/d;->h:Z

    .line 128
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "messaging"

    return-object v0
.end method

.method public b(Lcom/batch/android/e/c/c;)V
    .locals 2
    .param p1    # Lcom/batch/android/e/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    const-string v0, "dismiss"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/f/d;->b(Lcom/batch/android/e/c/c;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/batch/android/f/d;->j:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/batch/android/f/d;->j:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    iget-object v1, p1, Lcom/batch/android/e/c/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/batch/android/Batch$Messaging$LifecycleListener;->onBatchMessageClosed(Ljava/lang/String;)V

    .line 288
    :cond_0
    return-void
.end method

.method public b(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 145
    const-string v1, "android.support.v4.app.Fragment"

    invoke-static {v1}, Lcom/batch/android/c/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    if-eqz p1, :cond_0

    .line 149
    const-string v1, "Messaging - Your app doesn\'t seem to have the support-v4 library, or its version is lower than the 23.0.0 minimum required by Batch.. The landing will not be displayed. More info at https://batch.com/doc ."

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    const-string v1, "android.support.v7.app.AppCompatActivity"

    invoke-static {v1}, Lcom/batch/android/c/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    if-eqz p1, :cond_0

    .line 158
    const-string v1, "Messaging - Your app doesn\'t seem to have the appcompat-v7 library, or its version is lower than the 23.0.0 minimum required by Batch. The landing will not be displayed. More info at https://batch.com/doc ."

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/batch/android/e/c/c;)V
    .locals 1
    .param p1    # Lcom/batch/android/e/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 293
    const-string v0, "close"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/f/d;->b(Lcom/batch/android/e/c/c;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/batch/android/f/d;->h:Z

    return v0
.end method

.method public j()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/batch/android/f/d;->i:D

    return-wide v0
.end method

.method public k()Lcom/batch/android/Batch$Messaging$LifecycleListener;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/batch/android/f/d;->j:Lcom/batch/android/Batch$Messaging$LifecycleListener;

    return-object v0
.end method
