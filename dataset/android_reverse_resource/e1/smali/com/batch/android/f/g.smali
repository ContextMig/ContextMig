.class public final Lcom/batch/android/f/g;
.super Lcom/batch/android/f/b;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:J = 0x7530L

.field private static final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static d:Lcom/batch/android/f/g;


# instance fields
.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "^[a-zA-Z0-9_]{1,30}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/g;->a:Ljava/util/regex/Pattern;

    .line 41
    new-instance v0, Lcom/batch/android/c/p;

    invoke-direct {v0}, Lcom/batch/android/c/p;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/batch/android/f/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    new-instance v0, Lcom/batch/android/f/g;

    invoke-direct {v0}, Lcom/batch/android/f/g;-><init>()V

    sput-object v0, Lcom/batch/android/f/g;->d:Lcom/batch/android/f/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/batch/android/f/b;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/f/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batch/android/f/g;->f:J

    return-void
.end method

.method public static a()Lcom/batch/android/f/g;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/batch/android/f/g;->d:Lcom/batch/android/f/g;

    return-object v0
.end method

.method static synthetic a(Lcom/batch/android/f/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/batch/android/f/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(JLjava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 403
    sget-object v0, Lcom/batch/android/f/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 404
    return-void
.end method

.method public static i()V
    .locals 3

    .prologue
    .line 412
    const-wide/16 v0, 0x0

    new-instance v2, Lcom/batch/android/f/g$5;

    invoke-direct {v2}, Lcom/batch/android/f/g$5;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/batch/android/f/g;->a(JLjava/lang/Runnable;)V

    .line 429
    return-void
.end method


# virtual methods
.method public a(DLcom/batch/android/json/JSONObject;)V
    .locals 3

    .prologue
    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 387
    const-string v1, "amount"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    if-eqz p3, :cond_0

    .line 391
    const-string v1, "data"

    invoke-virtual {p3}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_0
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v1

    const-string v2, "T"

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/f/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 395
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/batch/android/f/g$1;

    invoke-direct {v0, p0}, Lcom/batch/android/f/g$1;-><init>(Lcom/batch/android/f/g;)V

    invoke-static {p1, p2, v0}, Lcom/batch/android/f/g;->a(JLjava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 347
    if-nez p1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v1, 0x0

    .line 354
    iget-wide v2, p0, Lcom/batch/android/f/g;->f:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_1

    .line 355
    const-string v1, "Tracking location because no location has been tracked yet"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 362
    :goto_1
    if-nez v0, :cond_2

    .line 363
    const-string v0, "Not tracking location event"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/batch/android/f/g;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 358
    const-string v1, "Tracking location event since the elapsed time is greater than the minimum threshold"

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 369
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 370
    const-string v3, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v3, "lng"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v3, "acc"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 375
    cmp-long v3, v0, v6

    if-lez v3, :cond_3

    .line 377
    const-string v3, "date"

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_3
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v0

    const-string v1, "_LOCATION_CHANGED"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/batch/android/f/f;->b(Ljava/lang/String;JLjava/util/Map;)V

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/f/g;->f:J

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 215
    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    new-instance v0, Lcom/batch/android/f/g$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/batch/android/f/g$3;-><init>(Lcom/batch/android/f/g;JLjava/lang/String;)V

    invoke-static {v2, v3, v0}, Lcom/batch/android/f/g;->a(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V
    .locals 3

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 311
    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 313
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    if-eqz p2, :cond_1

    .line 317
    const-string v1, "label"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_1
    if-eqz p3, :cond_2

    .line 322
    const-string v1, "data"

    invoke-virtual {p3}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/batch/android/f/g;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 327
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/batch/android/f/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 334
    :goto_0
    if-nez v2, :cond_1

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event name (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'). Not tracking."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 342
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 332
    goto :goto_0

    .line 340
    :cond_1
    invoke-static {}, Lcom/batch/android/f/f;->i()Lcom/batch/android/f/f;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/batch/android/f/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 342
    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "user"

    return-object v0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/batch/android/f/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 148
    new-instance v0, Lcom/batch/android/f/g$2;

    invoke-direct {v0, p0}, Lcom/batch/android/f/g$2;-><init>(Lcom/batch/android/f/g;)V

    invoke-static {p1, p2, v0}, Lcom/batch/android/f/g;->a(JLjava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 261
    const-wide/16 v0, 0x0

    new-instance v2, Lcom/batch/android/f/g$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/batch/android/f/g$4;-><init>(Lcom/batch/android/f/g;J)V

    invoke-static {v0, v1, v2}, Lcom/batch/android/f/g;->a(JLjava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/batch/android/f/b;->e()V

    .line 85
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/f/g;->b(J)V

    .line 86
    return-void
.end method
