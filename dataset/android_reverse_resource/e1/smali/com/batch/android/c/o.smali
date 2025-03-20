.class public final Lcom/batch/android/c/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Batch"

.field public static b:Lcom/batch/android/LoggerDelegate;

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 42
    const-string v0, "Batch-debug"

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Batch"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/batch/android/c/o;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 60
    if-eqz p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {p0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    invoke-interface {v0, p0, p2, p3}, Lcom/batch/android/LoggerDelegate;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 114
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/batch/android/c/o;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/batch/android/c/o;->b(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    return-void
.end method

.method public static b(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 150
    if-eqz p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-static {p0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    invoke-interface {v0, p0, p2, p3}, Lcom/batch/android/LoggerDelegate;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    return-void
.end method

.method public static b(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 204
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/batch/android/c/o;->b(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/batch/android/c/o;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    return-void
.end method

.method public static c(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 240
    if-eqz p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-static {p0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    invoke-interface {v0, p0, p2, p3}, Lcom/batch/android/LoggerDelegate;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 305
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    return-void
.end method

.method public static c(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 283
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/batch/android/c/o;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/batch/android/c/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/batch/android/c/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/batch/android/c/o;->d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/batch/android/c/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    return-void
.end method

.method public static d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 330
    if-eqz p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-static {p0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    invoke-interface {v0, p0, p2, p3}, Lcom/batch/android/LoggerDelegate;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 395
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/batch/android/c/o;->d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    return-void
.end method

.method public static d(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 373
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/batch/android/c/o;->d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 496
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/batch/android/c/o;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/batch/android/c/o;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/batch/android/c/o;->e(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/batch/android/c/o;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    return-void
.end method

.method public static e(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 420
    if-eqz p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-static {p0, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    invoke-interface {v0, p0, p2, p3}, Lcom/batch/android/LoggerDelegate;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 486
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/batch/android/c/o;->e(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    return-void
.end method

.method public static e(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 463
    invoke-static {p0}, Lcom/batch/android/c/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/batch/android/c/o;->e(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    return-void
.end method
