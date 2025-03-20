.class final Ltimber/log/Timber$1;
.super Ltimber/log/Timber$Tree;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 238
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 240
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 241
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 254
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 256
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 257
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 246
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 248
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 249
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 310
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 312
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 313
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 326
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 328
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 329
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 318
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 320
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 321
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 262
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 264
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 265
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 278
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 280
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 281
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->i(Ljava/lang/Throwable;)V

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 270
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 272
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 273
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 382
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing override for log method."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 358
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 360
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 361
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Throwable;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 374
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 376
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 377
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->log(ILjava/lang/Throwable;)V

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-void
.end method

.method public varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 366
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 368
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 369
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3, p4}, Ltimber/log/Timber$Tree;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 214
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 216
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 217
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 232
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 233
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->v(Ljava/lang/Throwable;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 222
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 224
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 225
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 286
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 288
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 289
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 302
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 304
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 305
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;)V

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 294
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 296
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 297
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 334
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 336
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 337
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method

.method public wtf(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 350
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 352
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 353
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/Throwable;)V

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 342
    sget-object v1, Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;

    .line 344
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 345
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method
