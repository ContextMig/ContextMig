.class public Lio/sentry/util/CircularFifoQueue;
.super Ljava/util/AbstractCollection;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient end:I

.field private transient full:Z

.field private final maxElements:I

.field private transient start:I


# direct methods
.method static synthetic access$000(Lio/sentry/util/CircularFifoQueue;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/CircularFifoQueue;

    .prologue
    .line 47
    iget v0, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    return v0
.end method

.method static synthetic access$100(Lio/sentry/util/CircularFifoQueue;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/CircularFifoQueue;

    .prologue
    .line 47
    iget-boolean v0, p0, Lio/sentry/util/CircularFifoQueue;->full:Z

    return v0
.end method

.method static synthetic access$102(Lio/sentry/util/CircularFifoQueue;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/sentry/util/CircularFifoQueue;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lio/sentry/util/CircularFifoQueue;->full:Z

    return p1
.end method

.method static synthetic access$200(Lio/sentry/util/CircularFifoQueue;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/CircularFifoQueue;

    .prologue
    .line 47
    iget v0, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    return v0
.end method

.method static synthetic access$202(Lio/sentry/util/CircularFifoQueue;I)I
    .locals 0
    .param p0, "x0"    # Lio/sentry/util/CircularFifoQueue;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    return p1
.end method

.method static synthetic access$300(Lio/sentry/util/CircularFifoQueue;I)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/CircularFifoQueue;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lio/sentry/util/CircularFifoQueue;->increment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lio/sentry/util/CircularFifoQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/CircularFifoQueue;

    .prologue
    .line 47
    iget-object v0, p0, Lio/sentry/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lio/sentry/util/CircularFifoQueue;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/CircularFifoQueue;

    .prologue
    .line 47
    iget v0, p0, Lio/sentry/util/CircularFifoQueue;->maxElements:I

    return v0
.end method

.method static synthetic access$600(Lio/sentry/util/CircularFifoQueue;I)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/CircularFifoQueue;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lio/sentry/util/CircularFifoQueue;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 350
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    add-int/lit8 p1, p1, -0x1

    .line 351
    if-gez p1, :cond_0

    .line 352
    iget v0, p0, Lio/sentry/util/CircularFifoQueue;->maxElements:I

    add-int/lit8 p1, v0, -0x1

    .line 354
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 336
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    add-int/lit8 p1, p1, 0x1

    .line 337
    iget v0, p0, Lio/sentry/util/CircularFifoQueue;->maxElements:I

    if-lt p1, v0, :cond_0

    .line 338
    const/4 p1, 0x0

    .line 340
    :cond_0
    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x1

    .line 231
    if-nez p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to add null object to queue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->isAtFullCapacity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->remove()Ljava/lang/Object;

    .line 239
    :cond_1
    iget-object v0, p0, Lio/sentry/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    aput-object p1, v0, v1

    .line 241
    iget v0, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->maxElements:I

    if-lt v0, v1, :cond_2

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    .line 245
    :cond_2
    iget v0, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    if-ne v0, v1, :cond_3

    .line 246
    iput-boolean v3, p0, Lio/sentry/util/CircularFifoQueue;->full:Z

    .line 249
    :cond_3
    return v3
.end method

.method public clear()V
    .locals 2

    .prologue
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lio/sentry/util/CircularFifoQueue;->full:Z

    .line 216
    iput v0, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    .line 217
    iput v0, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    .line 218
    iget-object v0, p0, Lio/sentry/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAtFullCapacity()Z
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->size()I

    move-result v0

    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->maxElements:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    new-instance v0, Lio/sentry/util/CircularFifoQueue$1;

    invoke-direct {v0, p0}, Lio/sentry/util/CircularFifoQueue$1;-><init>(Lio/sentry/util/CircularFifoQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lio/sentry/util/CircularFifoQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/sentry/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    const/4 v4, 0x0

    .line 312
    invoke-virtual {p0}, Lio/sentry/util/CircularFifoQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "queue is empty"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_0
    iget-object v1, p0, Lio/sentry/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    aget-object v0, v1, v2

    .line 317
    .local v0, "element":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 318
    iget-object v1, p0, Lio/sentry/util/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v2, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 320
    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    iget v2, p0, Lio/sentry/util/CircularFifoQueue;->maxElements:I

    if-lt v1, v2, :cond_1

    .line 321
    iput v4, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    .line 323
    :cond_1
    iput-boolean v4, p0, Lio/sentry/util/CircularFifoQueue;->full:Z

    .line 325
    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 155
    .local p0, "this":Lio/sentry/util/CircularFifoQueue;, "Lio/sentry/util/CircularFifoQueue<TE;>;"
    const/4 v0, 0x0

    .line 157
    .local v0, "size":I
    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    iget v2, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    if-ge v1, v2, :cond_0

    .line 158
    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->maxElements:I

    iget v2, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    sub-int/2addr v1, v2

    iget v2, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    add-int v0, v1, v2

    .line 165
    :goto_0
    return v0

    .line 159
    :cond_0
    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    iget v2, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    if-ne v1, v2, :cond_2

    .line 160
    iget-boolean v1, p0, Lio/sentry/util/CircularFifoQueue;->full:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lio/sentry/util/CircularFifoQueue;->maxElements:I

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 162
    :cond_2
    iget v1, p0, Lio/sentry/util/CircularFifoQueue;->end:I

    iget v2, p0, Lio/sentry/util/CircularFifoQueue;->start:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
