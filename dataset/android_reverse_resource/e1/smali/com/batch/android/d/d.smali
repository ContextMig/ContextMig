.class public Lcom/batch/android/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/d/d$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/TimerTask;

.field private f:Lcom/batch/android/d/d$a;

.field private g:Lcom/batch/android/FailReason;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/d/d$a;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/batch/android/d/d;->d:Ljava/util/Timer;

    .line 57
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-nez p2, :cond_1

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-object p2, p0, Lcom/batch/android/d/d;->f:Lcom/batch/android/d/d$a;

    .line 69
    invoke-static {p1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "tracker.delay.initial"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/batch/android/d/d;->a:I

    .line 70
    iget v0, p0, Lcom/batch/android/d/d;->a:I

    iput v0, p0, Lcom/batch/android/d/d;->c:I

    .line 71
    invoke-static {p1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v0

    const-string v1, "tracker.delay.max"

    invoke-virtual {v0, v1}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/batch/android/d/d;->b:I

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/batch/android/d/d;)Lcom/batch/android/d/d$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/batch/android/d/d;->f:Lcom/batch/android/d/d$a;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/batch/android/d/d;->c:I

    iget v1, p0, Lcom/batch/android/d/d;->a:I

    if-ne v0, v1, :cond_1

    .line 146
    iget v0, p0, Lcom/batch/android/d/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/batch/android/d/d;->c:I

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget v0, p0, Lcom/batch/android/d/d;->c:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/batch/android/d/d;->c:I

    .line 151
    iget v0, p0, Lcom/batch/android/d/d;->c:I

    iget v1, p0, Lcom/batch/android/d/d;->b:I

    if-le v0, v1, :cond_0

    .line 153
    iget v0, p0, Lcom/batch/android/d/d;->b:I

    iput v0, p0, Lcom/batch/android/d/d;->c:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/batch/android/FailReason;)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/batch/android/d/d;->e:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/batch/android/d/d;->e:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/batch/android/d/d;->g:Lcom/batch/android/FailReason;

    .line 100
    invoke-direct {p0}, Lcom/batch/android/d/d;->d()V

    .line 101
    new-instance v0, Lcom/batch/android/d/d$1;

    invoke-direct {v0, p0}, Lcom/batch/android/d/d$1;-><init>(Lcom/batch/android/d/d;)V

    iput-object v0, p0, Lcom/batch/android/d/d;->e:Ljava/util/TimerTask;

    .line 110
    iget-object v0, p0, Lcom/batch/android/d/d;->d:Ljava/util/Timer;

    iget-object v1, p0, Lcom/batch/android/d/d;->e:Ljava/util/TimerTask;

    iget v2, p0, Lcom/batch/android/d/d;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 111
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/batch/android/d/d;->e:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/batch/android/d/d;->e:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/batch/android/d/d;->e:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/d/d;->e:Ljava/util/TimerTask;

    .line 122
    iget-object v0, p0, Lcom/batch/android/d/d;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 125
    :cond_0
    iget v0, p0, Lcom/batch/android/d/d;->a:I

    iput v0, p0, Lcom/batch/android/d/d;->c:I

    .line 126
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/batch/android/d/d;->g:Lcom/batch/android/FailReason;

    sget-object v1, Lcom/batch/android/FailReason;->NETWORK_ERROR:Lcom/batch/android/FailReason;

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/batch/android/d/d;->b()V

    .line 137
    :cond_0
    return-void
.end method
