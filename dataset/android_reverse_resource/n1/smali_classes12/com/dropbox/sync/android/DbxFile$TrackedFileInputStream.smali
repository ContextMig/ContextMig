.class Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
.super Ljava/io/FileInputStream;
.source "DbxFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedFileInputStream"
.end annotation


# instance fields
.field private mOpen:Z

.field final synthetic this$0:Lcom/dropbox/sync/android/DbxFile;


# direct methods
.method private constructor <init>(Lcom/dropbox/sync/android/DbxFile;Ljava/io/File;)V
    .locals 1
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 726
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;->this$0:Lcom/dropbox/sync/android/DbxFile;

    .line 727
    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;->mOpen:Z

    .line 728
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxFile;Ljava/io/File;Lcom/dropbox/sync/android/DbxFile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxFile;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Lcom/dropbox/sync/android/DbxFile$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;-><init>(Lcom/dropbox/sync/android/DbxFile;Ljava/io/File;)V

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
    .line 732
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    .line 734
    monitor-enter p0

    .line 735
    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;->mOpen:Z

    if-nez v0, :cond_0

    .line 736
    monitor-exit p0

    .line 741
    :goto_0
    return-void

    .line 738
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;->mOpen:Z

    .line 739
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;->this$0:Lcom/dropbox/sync/android/DbxFile;

    invoke-static {v0, p0}, Lcom/dropbox/sync/android/DbxFile;->access$300(Lcom/dropbox/sync/android/DbxFile;Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;)V

    goto :goto_0

    .line 739
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
    .line 745
    invoke-super {p0}, Ljava/io/FileInputStream;->finalize()V

    .line 746
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;->mOpen:Z

    if-eqz v0, :cond_0

    .line 747
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v1, "Read stream was finalized without being closed"

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    return-void
.end method
