.class Lcom/fsck/k9/controller/ProgressBodyFactory;
.super Lcom/fsck/k9/mail/DefaultBodyFactory;
.source "ProgressBodyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;
    }
.end annotation


# instance fields
.field private final progressListener:Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/mail/DefaultBodyFactory;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fsck/k9/controller/ProgressBodyFactory;->progressListener:Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/controller/ProgressBodyFactory;)Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/ProgressBodyFactory;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fsck/k9/controller/ProgressBodyFactory;->progressListener:Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;

    return-object v0
.end method


# virtual methods
.method protected copyData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v6, Lorg/apache/commons/io/output/CountingOutputStream;

    invoke-direct {v6, p2}, Lorg/apache/commons/io/output/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    .local v6, "countingOutputStream":Lorg/apache/commons/io/output/CountingOutputStream;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 28
    .local v0, "timer":Ljava/util/Timer;
    :try_start_0
    new-instance v1, Lcom/fsck/k9/controller/ProgressBodyFactory$1;

    invoke-direct {v1, p0, v6}, Lcom/fsck/k9/controller/ProgressBodyFactory$1;-><init>(Lcom/fsck/k9/controller/ProgressBodyFactory;Lorg/apache/commons/io/output/CountingOutputStream;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 35
    invoke-super {p0, p1, v6}, Lcom/fsck/k9/mail/DefaultBodyFactory;->copyData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 39
    return-void

    .line 37
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    throw v1
.end method
