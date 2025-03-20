.class Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
.super Ljava/io/FilterInputStream;
.source "BinaryTempFileBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BinaryTempFileBodyInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .line 129
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    const-string v1, "Deleting temporary binary file: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    invoke-static {v3}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->access$000(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    invoke-static {v1}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->access$000(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 139
    .local v0, "fileSuccessfullyDeleted":Z
    if-nez v0, :cond_0

    .line 140
    const-string v1, "Failed to delete temporary binary file: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    invoke-static {v3}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->access$000(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void

    .line 137
    .end local v0    # "fileSuccessfullyDeleted":Z
    :catchall_0
    move-exception v1

    const-string v2, "Deleting temporary binary file: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    invoke-static {v4}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->access$000(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    invoke-static {v2}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->access$000(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 139
    .restart local v0    # "fileSuccessfullyDeleted":Z
    if-nez v0, :cond_1

    .line 140
    const-string v2, "Failed to delete temporary binary file: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->this$0:Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    invoke-static {v4}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->access$000(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_1
    throw v1
.end method

.method public closeWithoutDeleting()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 147
    return-void
.end method
