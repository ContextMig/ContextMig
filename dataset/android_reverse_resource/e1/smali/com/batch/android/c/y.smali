.class public Lcom/batch/android/c/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/batch/android/c/y;


# instance fields
.field private a:Ljava/util/Date;

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/batch/android/c/y;

    invoke-direct {v0}, Lcom/batch/android/c/y;-><init>()V

    sput-object v0, Lcom/batch/android/c/y;->c:Lcom/batch/android/c/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/batch/android/c/y;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/batch/android/c/y;->c:Lcom/batch/android/c/y;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 8

    .prologue
    .line 35
    iget-object v0, p0, Lcom/batch/android/c/y;->a:Ljava/util/Date;

    .line 37
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/batch/android/c/y;->b:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    goto :goto_0
.end method

.method public a(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batch/android/c/y;->b:J

    .line 67
    iput-object p1, p0, Lcom/batch/android/c/y;->a:Ljava/util/Date;

    .line 68
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/batch/android/c/y;->a:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
