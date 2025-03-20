.class Lcom/fsck/k9/mailstore/DeferredFileBody$1;
.super Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;
.source "DeferredFileBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/DeferredFileBody;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/DeferredFileBody;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/DeferredFileBody;ILcom/fsck/k9/mailstore/util/FileFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/DeferredFileBody;
    .param p2, "threshold"    # I
    .param p3, "fileFactory"    # Lcom/fsck/k9/mailstore/util/FileFactory;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->this$0:Lcom/fsck/k9/mailstore/DeferredFileBody;

    invoke-direct {p0, p2, p3}, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;-><init>(ILcom/fsck/k9/mailstore/util/FileFactory;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0}, Lcom/fsck/k9/mailstore/util/DeferredFileOutputStream;->close()V

    .line 59
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->isThresholdExceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->this$0:Lcom/fsck/k9/mailstore/DeferredFileBody;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/mailstore/DeferredFileBody;->access$002(Lcom/fsck/k9/mailstore/DeferredFileBody;Ljava/io/File;)Ljava/io/File;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->this$0:Lcom/fsck/k9/mailstore/DeferredFileBody;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/mailstore/DeferredFileBody;->access$102(Lcom/fsck/k9/mailstore/DeferredFileBody;[B)[B

    goto :goto_0
.end method
