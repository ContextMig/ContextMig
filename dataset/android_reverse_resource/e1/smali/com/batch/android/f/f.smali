.class public final Lcom/batch/android/f/f;
.super Lcom/batch/android/f/b;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/d/c$a;


# static fields
.field private static g:Lcom/batch/android/f/f;


# instance fields
.field private a:Lcom/batch/android/j/b;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/batch/android/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/batch/android/d/c;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lcom/batch/android/f/f;

    invoke-direct {v0}, Lcom/batch/android/f/f;-><init>()V

    sput-object v0, Lcom/batch/android/f/f;->g:Lcom/batch/android/f/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/batch/android/f/b;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/batch/android/f/f;->b:Ljava/util/Queue;

    .line 49
    new-instance v0, Lcom/batch/android/c/p;

    invoke-direct {v0}, Lcom/batch/android/c/p;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/f/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/batch/android/f/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/batch/android/f/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/batch/android/f/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/batch/android/f/f;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/batch/android/f/f;->b:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic c(Lcom/batch/android/f/f;)Lcom/batch/android/j/b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/batch/android/f/f;->a:Lcom/batch/android/j/b;

    return-object v0
.end method

.method static synthetic d(Lcom/batch/android/f/f;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/batch/android/f/f;->j()V

    return-void
.end method

.method static synthetic e(Lcom/batch/android/f/f;)Lcom/batch/android/d/c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/batch/android/f/f;->e:Lcom/batch/android/d/c;

    return-object v0
.end method

.method static synthetic f(Lcom/batch/android/f/f;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/batch/android/f/f;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic g(Lcom/batch/android/f/f;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/batch/android/f/f;->f:I

    return v0
.end method

.method public static i()Lcom/batch/android/f/f;
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/batch/android/f/f;->g:Lcom/batch/android/f/f;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/f/f;->a:Lcom/batch/android/j/b;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/batch/android/f/f;->a:Lcom/batch/android/j/b;

    invoke-virtual {v0}, Lcom/batch/android/j/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/f/f;->a:Lcom/batch/android/j/b;

    .line 207
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 203
    const-string v1, "Error while closing DB"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/batch/android/f/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "Flush called while already flushing"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/batch/android/f/f;->a:Lcom/batch/android/j/b;

    if-nez v0, :cond_1

    .line 225
    const-string v0, "Flush called in State OFF, not flushing"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    new-instance v1, Lcom/batch/android/f/f$1;

    invoke-direct {v1, p0}, Lcom/batch/android/f/f$1;-><init>(Lcom/batch/android/f/f;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    goto :goto_0
.end method

.method private l()Lcom/batch/android/j/d;
    .locals 3

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 296
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v2, "tracker.state"

    invoke-virtual {v0, v2}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/batch/android/j/d;->a(I)Lcom/batch/android/j/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    .line 298
    :catch_0
    move-exception v0

    .line 300
    const-string v2, "Error while reading tracker mode"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 303
    :cond_0
    sget-object v0, Lcom/batch/android/j/d;->c:Lcom/batch/android/j/d;

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    new-instance v2, Lcom/batch/android/f/f$4;

    invoke-direct {v2, p0, v0}, Lcom/batch/android/f/f$4;-><init>(Lcom/batch/android/f/f;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/batch/android/i/c;->a(Ljava/lang/Runnable;)Z

    .line 393
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/f/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/batch/android/f/f;->a(Ljava/lang/String;JLjava/util/Map;)V

    .line 187
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 162
    iget-object v6, p0, Lcom/batch/android/f/f;->b:Ljava/util/Queue;

    new-instance v0, Lcom/batch/android/d/b;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    move-wide v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/d/b;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/util/Map;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0}, Lcom/batch/android/f/f;->k()V

    .line 164
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/batch/android/f/f;->a(Ljava/lang/String;JLjava/util/Map;)V

    .line 151
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    const-string v0, "TM : onEventsSendSuccess"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    new-instance v1, Lcom/batch/android/f/f$2;

    invoke-direct {v1, p0, p1}, Lcom/batch/android/f/f$2;-><init>(Lcom/batch/android/f/f;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 336
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "tracker"

    return-object v0
.end method

.method public b(Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking collapsible event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 175
    iget-object v6, p0, Lcom/batch/android/f/f;->b:Ljava/util/Queue;

    new-instance v0, Lcom/batch/android/d/a;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    move-wide v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/batch/android/d/a;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/util/Map;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-direct {p0}, Lcom/batch/android/f/f;->k()V

    .line 177
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/d/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    const-string v0, "TM : onEventsSendFailure"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v0

    new-instance v1, Lcom/batch/android/f/f$3;

    invoke-direct {v1, p0, p1}, Lcom/batch/android/f/f$3;-><init>(Lcom/batch/android/f/f;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/batch/android/i/c;->a(Lcom/batch/android/i/e;)V

    .line 377
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/batch/android/f/f;->l()Lcom/batch/android/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j/d;->a()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/batch/android/f/f;->l()Lcom/batch/android/j/d;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/batch/android/j/d;->a:Lcom/batch/android/j/d;

    if-eq v0, v1, :cond_0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "tracker.batch.quantity"

    invoke-virtual {v1, v2}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/batch/android/f/f;->f:I

    .line 92
    new-instance v1, Lcom/batch/android/j/b;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/batch/android/j/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/batch/android/f/f;->a:Lcom/batch/android/j/b;

    .line 93
    iget-object v1, p0, Lcom/batch/android/f/f;->a:Lcom/batch/android/j/b;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    const-string v3, "tracker.db.limit"

    invoke-virtual {v2, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/batch/android/j/b;->b(I)I

    move-result v1

    .line 94
    iget-object v2, p0, Lcom/batch/android/f/f;->a:Lcom/batch/android/j/b;

    invoke-virtual {v2}, Lcom/batch/android/j/b;->d()Z

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TrackerModule : Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overflow events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/batch/android/j/d;->c:Lcom/batch/android/j/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/f/f;->e:Lcom/batch/android/d/c;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/batch/android/j/c;

    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/batch/android/j/c;-><init>(Lcom/batch/android/i/c;Lcom/batch/android/d/c$a;)V

    iput-object v0, p0, Lcom/batch/android/f/f;->e:Lcom/batch/android/d/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 106
    const-string v1, "Error while starting tracker module"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/batch/android/f/f;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/batch/android/f/f;->k()V

    .line 119
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/batch/android/f/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/batch/android/f/f;->j()V

    .line 130
    :cond_0
    return-void
.end method
