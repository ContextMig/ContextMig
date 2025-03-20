.class Lcom/fsck/k9/controller/ProgressBodyFactory$1;
.super Ljava/util/TimerTask;
.source "ProgressBodyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/ProgressBodyFactory;->copyData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/ProgressBodyFactory;

.field final synthetic val$countingOutputStream:Lorg/apache/commons/io/output/CountingOutputStream;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/ProgressBodyFactory;Lorg/apache/commons/io/output/CountingOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/ProgressBodyFactory;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fsck/k9/controller/ProgressBodyFactory$1;->this$0:Lcom/fsck/k9/controller/ProgressBodyFactory;

    iput-object p2, p0, Lcom/fsck/k9/controller/ProgressBodyFactory$1;->val$countingOutputStream:Lorg/apache/commons/io/output/CountingOutputStream;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fsck/k9/controller/ProgressBodyFactory$1;->this$0:Lcom/fsck/k9/controller/ProgressBodyFactory;

    invoke-static {v0}, Lcom/fsck/k9/controller/ProgressBodyFactory;->access$000(Lcom/fsck/k9/controller/ProgressBodyFactory;)Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/controller/ProgressBodyFactory$1;->val$countingOutputStream:Lorg/apache/commons/io/output/CountingOutputStream;

    invoke-virtual {v1}, Lorg/apache/commons/io/output/CountingOutputStream;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fsck/k9/controller/ProgressBodyFactory$ProgressListener;->updateProgress(I)V

    .line 32
    return-void
.end method
