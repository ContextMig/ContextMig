.class Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "DbxFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedFileOutputStream"
.end annotation


# instance fields
.field private mOpen:Z

.field final synthetic this$0:Lcom/dropbox/sync/android/DbxFile;


# direct methods
.method private constructor <init>(Lcom/dropbox/sync/android/DbxFile;Ljava/io/File;Z)V
    .locals 1
    .param p2, "file"    # Ljava/io/File;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 759
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;->this$0:Lcom/dropbox/sync/android/DbxFile;

    .line 760
    invoke-direct {p0, p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;->mOpen:Z

    .line 761
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxFile;Ljava/io/File;ZLcom/dropbox/sync/android/DbxFile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxFile;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/dropbox/sync/android/DbxFile$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;-><init>(Lcom/dropbox/sync/android/DbxFile;Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 767
    monitor-enter p0

    .line 768
    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;->mOpen:Z

    if-nez v0, :cond_0

    .line 769
    monitor-exit p0

    .line 774
    :goto_0
    return-void

    .line 771
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;->mOpen:Z

    .line 772
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;->this$0:Lcom/dropbox/sync/android/DbxFile;

    invoke-static {v0, p0}, Lcom/dropbox/sync/android/DbxFile;->access$400(Lcom/dropbox/sync/android/DbxFile;Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;)V

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    invoke-super {p0}, Ljava/io/FileOutputStream;->finalize()V

    .line 779
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;->mOpen:Z

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v1, "Write stream was finalized without being closed"

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_0
    return-void
.end method
