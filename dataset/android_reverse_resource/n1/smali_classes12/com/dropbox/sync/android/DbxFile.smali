.class public Lcom/dropbox/sync/android/DbxFile;
.super Ljava/lang/Object;
.source "DbxFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;,
        Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;,
        Lcom/dropbox/sync/android/DbxFile$Listener;,
        Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WRITE_TEMP_FILE_PREFIX:Ljava/lang/String; = "write"


# instance fields
.field mIsOpen:Z

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/dropbox/sync/android/DbxFile$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLog:Lcom/dropbox/sync/android/CoreLogger;

.field private mNativeFile:Ljava/io/File;

.field private final mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

.field private final mNativeFlags:I

.field private final mNativeHandle:J

.field private mPath:Lcom/dropbox/sync/android/DbxPath;

.field private final mReadStreams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForRead:I

.field private mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/dropbox/sync/android/DbxFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/NativeFileSystem;Lcom/dropbox/sync/android/DbxPath;I)V
    .locals 4
    .param p1, "NativeFileSystem"    # Lcom/dropbox/sync/android/NativeFileSystem;
    .param p2, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p3, "nativeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    .line 96
    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    .line 97
    iput v1, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 100
    iput-boolean v1, p0, Lcom/dropbox/sync/android/DbxFile;->mIsOpen:Z

    .line 112
    new-instance v0, Lcom/dropbox/sync/android/CoreLogger;

    invoke-direct {v0}, Lcom/dropbox/sync/android/CoreLogger;-><init>()V

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    .line 113
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    .line 114
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    .line 115
    iput p3, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFlags:I

    .line 116
    invoke-virtual {p1, p2, p3}, Lcom/dropbox/sync/android/NativeFileSystem;->openFileHandle(Lcom/dropbox/sync/android/DbxPath;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    .line 117
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DbxFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") opened."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile;->mIsOpen:Z

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/dropbox/sync/android/DbxFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxFile;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->dispatchFileChangeCallback()V

    return-void
.end method

.method static synthetic access$300(Lcom/dropbox/sync/android/DbxFile;Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxFile;
    .param p1, "x1"    # Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxFile;->finishRead(Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;)V

    return-void
.end method

.method static synthetic access$400(Lcom/dropbox/sync/android/DbxFile;Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/dropbox/sync/android/DbxFile;
    .param p1, "x1"    # Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxFile;->finishWrite(Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;)V

    return-void
.end method

.method private declared-synchronized checkClosed()V
    .locals 2

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$Closed;

    const-string v1, "DbxFile is already closed."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$Closed;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 647
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkStateForRead()V
    .locals 2

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkClosed()V

    .line 651
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;

    const-string v1, "A write stream is open for this file.  Close that stream first."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 654
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkStateForUpdate()V
    .locals 2

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkClosed()V

    .line 671
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;

    const-string v1, "Can\'t update the file when a write stream is open."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 674
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    if-lez v0, :cond_1

    .line 675
    new-instance v0, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;

    const-string v1, "Can\'t update a file while read streams are waiting to open."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 678
    new-instance v0, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;

    const-string v1, "Can\'t update the file when a read stream is open."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkStateForWrite()V
    .locals 2

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkClosed()V

    .line 658
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;

    const-string v1, "A write stream is already open for this file.  Close that stream first."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 661
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    if-lez v0, :cond_1

    .line 662
    new-instance v0, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;

    const-string v1, "Can\'t get a write stream while read streams are waiting to open."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    new-instance v0, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;

    const-string v1, "Can\'t get a write stream while read streams are still open."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxFile$StreamExclusionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private dispatchFileChangeCallback()V
    .locals 2

    .prologue
    .line 632
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFile;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 633
    .local v0, "postListeners":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dropbox/sync/android/DbxFile$Listener;>;"
    new-instance v1, Lcom/dropbox/sync/android/DbxFile$2;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/sync/android/DbxFile$2;-><init>(Lcom/dropbox/sync/android/DbxFile;Ljava/util/Iterator;)V

    invoke-static {v1}, Lcom/dropbox/sync/android/CoreAndroidUtil;->postUserCallback(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method private declared-synchronized finishRead(Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;)V
    .locals 4
    .param p1, "fis"    # Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 701
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 702
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    .line 704
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->closeReadFile(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :cond_0
    monitor-exit p0

    return-void

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized finishWrite(Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;)V
    .locals 6
    .param p1, "fos"    # Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 709
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    if-ne v2, p1, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 710
    const/4 v0, 0x0

    .line 712
    .local v0, "success":Z
    :try_start_1
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/dropbox/sync/android/NativeFileSystem;->writeFile(JLjava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    const/4 v0, 0x1

    .line 715
    if-nez v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v2, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete temp file after write on DbxFile \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    .line 719
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 721
    monitor-exit p0

    return-void

    .line 709
    .end local v0    # "success":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 715
    .restart local v0    # "success":Z
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    :try_start_3
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 716
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete temp file after write on DbxFile \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    .line 719
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 709
    .end local v0    # "success":Z
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getTrackedFileOutputStream(Ljava/io/File;Z)Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    .locals 7
    .param p1, "tempFile"    # Ljava/io/File;
    .param p2, "append"    # Z

    .prologue
    .line 684
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;-><init>(Lcom/dropbox/sync/android/DbxFile;Ljava/io/File;ZLcom/dropbox/sync/android/DbxFile$1;)V

    .line 685
    .local v1, "s":Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    .line 686
    iput-object v1, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    :try_start_1
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    if-nez v2, :cond_0

    .line 692
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete temp file for DbxFile \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v5}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    monitor-exit p0

    return-object v1

    .line 688
    .end local v1    # "s":Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v3, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v5, "Bad temp file for writing."

    invoke-direct {v4, v5, v0}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 691
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    if-nez v3, :cond_1

    .line 692
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 693
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v4, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete temp file for DbxFile \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v6}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 684
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/dropbox/sync/android/DbxFile$Listener;)V
    .locals 4
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxFile$Listener;

    .prologue
    .line 600
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 601
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile;->mIsOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 615
    :goto_0
    monitor-exit p0

    return-void

    .line 605
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    new-instance v1, Lcom/dropbox/sync/android/DbxFile$1;

    invoke-direct {v1, p0}, Lcom/dropbox/sync/android/DbxFile$1;-><init>(Lcom/dropbox/sync/android/DbxFile;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/dropbox/sync/android/NativeFileSystem;->setFileListener(JLcom/dropbox/sync/android/NativeFileSystem$FileListener;)V

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public appendString(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFile;->getAppendStream()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 494
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 495
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 499
    return-void

    .line 497
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method

.method awaitReadyForRead()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkClosed()V

    .line 523
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Awaiting DbxFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ready for read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->awaitFileReady(J)V

    .line 525
    return-void
.end method

.method public close()V
    .locals 10

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v5, p0, Lcom/dropbox/sync/android/DbxFile;->mIsOpen:Z

    if-nez v5, :cond_0

    .line 138
    monitor-exit p0

    .line 179
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v6, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DbxFile("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v8}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") closed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/dropbox/sync/android/DbxFile;->mIsOpen:Z

    .line 145
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFile;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 150
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFile;->mWriteStream:Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;

    .line 151
    .local v4, "writeStream":Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    .local v3, "readStreams":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    if-eqz v4, :cond_1

    .line 159
    :try_start_1
    invoke-virtual {v4}, Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .local v1, "fis":Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
    :try_start_3
    invoke-virtual {v1}, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v6, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    const-string v7, "Failed to close write stream when DbxFile is closed"

    invoke-virtual {v5, v6, v7, v0}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    .line 174
    :try_start_5
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v8, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v6, v8, v9}, Lcom/dropbox/sync/android/NativeFileSystem;->closeFileHandle(J)V
    :try_end_5
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_5 .. :try_end_5} :catch_3

    .line 177
    :goto_3
    throw v5

    .line 152
    .end local v3    # "readStreams":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;>;"
    .end local v4    # "writeStream":Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 160
    .restart local v3    # "readStreams":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;>;"
    .restart local v4    # "writeStream":Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    :catch_1
    move-exception v0

    .line 161
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v6, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    const-string v7, "Failed to close write stream when DbxFile is closed"

    invoke-virtual {v5, v6, v7, v0}, Lcom/dropbox/sync/android/CoreLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_8
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v5, v6, v7}, Lcom/dropbox/sync/android/NativeFileSystem;->closeFileHandle(J)V
    :try_end_8
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 175
    :catch_2
    move-exception v0

    .line 176
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v5, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v6, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    const-string v7, "Failed to close DbxFile."

    invoke-virtual {v5, v6, v7, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 175
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v0

    .line 176
    .restart local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v7, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    const-string v8, "Failed to close DbxFile."

    invoke-virtual {v6, v7, v8, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;

    const-string v1, "DbxFile was finalized without being closed."

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    return-void
.end method

.method public declared-synchronized getAppendStream()Ljava/io/FileOutputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 367
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkStateForWrite()V

    .line 369
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFile;->awaitReadyForRead()V

    .line 370
    iget-object v9, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    invoke-static {v9}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 371
    iget-object v9, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    if-nez v9, :cond_4

    :goto_0
    invoke-static {v8}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 373
    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v10, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v8, v10, v11}, Lcom/dropbox/sync/android/NativeFileSystem;->getReadFile(J)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 376
    .local v5, "inputFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 377
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 379
    .local v7, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 380
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    const-string v9, "write"

    invoke-virtual {v8, v9}, Lcom/dropbox/sync/android/NativeFileSystem;->createTempFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 385
    .local v6, "success":Z
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 387
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/high16 v8, 0x10000

    :try_start_4
    new-array v8, v8, [B

    const/4 v9, 0x0

    invoke-static {v2, v4, v8, v9}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 388
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 389
    const/4 v6, 0x1

    .line 394
    if-eqz v4, :cond_0

    .line 395
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 400
    :cond_0
    :goto_1
    if-nez v6, :cond_1

    .line 401
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_1

    .line 402
    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v9, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to delete temp file for DbxFile \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v11}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 409
    :cond_1
    if-eqz v2, :cond_2

    .line 410
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 416
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 417
    :try_start_8
    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v10, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v8, v10, v11}, Lcom/dropbox/sync/android/NativeFileSystem;->closeReadFile(J)V
    :try_end_8
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 422
    :cond_3
    :goto_3
    :try_start_9
    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    invoke-static {v8}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 426
    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/dropbox/sync/android/DbxFile;->getTrackedFileOutputStream(Ljava/io/File;Z)Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v8

    monitor-exit p0

    return-object v8

    .line 371
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "inputFile":Ljava/io/File;
    .end local v6    # "success":Z
    .end local v7    # "tempFile":Ljava/io/File;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 397
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "inputFile":Ljava/io/File;
    .restart local v6    # "success":Z
    .restart local v7    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v9, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close temp file for DbxFile \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v11}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\':"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 408
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "success":Z
    :catchall_0
    move-exception v8

    move-object v1, v2

    .line 409
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v1, :cond_5

    .line 410
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 416
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 417
    :try_start_c
    iget-object v9, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v10, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v9, v10, v11}, Lcom/dropbox/sync/android/NativeFileSystem;->closeReadFile(J)V
    :try_end_c
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 422
    :cond_6
    :goto_6
    :try_start_d
    iget-object v9, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    invoke-static {v9}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    throw v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 367
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "inputFile":Ljava/io/File;
    .end local v7    # "tempFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 390
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "inputFile":Ljava/io/File;
    .restart local v6    # "success":Z
    .restart local v7    # "tempFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_e
    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v9, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v10, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v11, "Bad temp file for writing."

    invoke-direct {v10, v11, v0}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9, v10}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 393
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_2
    move-exception v8

    .line 394
    :goto_8
    if-eqz v3, :cond_7

    .line 395
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 400
    :cond_7
    :goto_9
    if-nez v6, :cond_8

    .line 401
    :try_start_10
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_8

    .line 402
    iget-object v9, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v10, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete temp file for DbxFile \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v12}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    throw v8

    .line 397
    :catch_2
    move-exception v0

    .line 398
    .local v0, "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v10, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close temp file for DbxFile \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v12}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\':"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_9

    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 413
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_11
    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v9, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close readable file for DbxFile \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v11}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\':"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 418
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 419
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v8, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v9, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to close readable file for DbxFile \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v11}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\':"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 412
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "success":Z
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    .line 413
    .local v0, "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v10, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close readable file for DbxFile \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v12}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\':"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 418
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 419
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v9, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v10, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to close readable file for DbxFile \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v12}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\':"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_6

    .line 408
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    :catchall_3
    move-exception v8

    goto/16 :goto_4

    .line 393
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "success":Z
    :catchall_4
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 390
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_7
.end method

.method public getInfo()Lcom/dropbox/sync/android/DbxFileInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->getFileInfo(J)Lcom/dropbox/sync/android/DbxFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNewerStatus()Lcom/dropbox/sync/android/DbxFileStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkClosed()V

    .line 579
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->getNewerFileStatus(J)Lcom/dropbox/sync/android/DbxFileStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPath()Lcom/dropbox/sync/android/DbxPath;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    return-object v0
.end method

.method public getReadStream()Ljava/io/FileInputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkStateForRead()V

    .line 237
    iget v3, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    .line 238
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    const/4 v2, 0x0

    .line 241
    .local v2, "waitCompleted":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFile;->awaitReadyForRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 242
    const/4 v2, 0x1

    .line 244
    if-nez v2, :cond_0

    .line 245
    monitor-enter p0

    .line 246
    :try_start_2
    iget v3, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    .line 247
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 252
    :cond_0
    monitor-enter p0

    .line 253
    :try_start_3
    iget v3, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    .line 254
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkStateForRead()V

    .line 256
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 258
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/sync/android/NativeFileSystem;->getReadFile(J)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 262
    :cond_1
    :try_start_4
    new-instance v1, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;-><init>(Lcom/dropbox/sync/android/DbxFile;Ljava/io/File;Lcom/dropbox/sync/android/DbxFile$1;)V

    .line 263
    .local v1, "s":Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 268
    :try_start_5
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    const/4 v3, 0x0

    :try_start_6
    iput-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    .line 271
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/sync/android/NativeFileSystem;->closeReadFile(J)V
    :try_end_6
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 274
    :cond_2
    :goto_1
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    return-object v1

    .line 238
    .end local v1    # "s":Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
    .end local v2    # "waitCompleted":Z
    :catchall_0
    move-exception v3

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v3

    .line 247
    .restart local v2    # "waitCompleted":Z
    :catchall_1
    move-exception v3

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v3

    .line 244
    :catchall_2
    move-exception v3

    if-nez v2, :cond_3

    .line 245
    monitor-enter p0

    .line 246
    :try_start_a
    iget v4, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/dropbox/sync/android/DbxFile;->mWaitingForRead:I

    .line 247
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_3
    throw v3

    :catchall_3
    move-exception v3

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v3

    .line 257
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 272
    .restart local v1    # "s":Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    :try_start_c
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v4, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close readable file for DbxFile \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v6}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\':"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 277
    .end local v0    # "e":Lcom/dropbox/sync/android/DbxException;
    .end local v1    # "s":Lcom/dropbox/sync/android/DbxFile$TrackedFileInputStream;
    :catchall_4
    move-exception v3

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v3

    .line 265
    :catch_1
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_d
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v4, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v5, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v6, "Bad cache file for reading."

    invoke-direct {v5, v6, v0}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/sync/android/CoreLogger;->logAndThrow(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 268
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_5
    move-exception v3

    :try_start_e
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFile;->mReadStreams:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-result v4

    if-eqz v4, :cond_5

    .line 270
    const/4 v4, 0x0

    :try_start_f
    iput-object v4, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    .line 271
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v4, v6, v7}, Lcom/dropbox/sync/android/NativeFileSystem;->closeReadFile(J)V
    :try_end_f
    .catch Lcom/dropbox/sync/android/DbxException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 274
    :cond_5
    :goto_2
    :try_start_10
    throw v3

    .line 272
    :catch_2
    move-exception v0

    .line 273
    .local v0, "e":Lcom/dropbox/sync/android/DbxException;
    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v5, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close readable file for DbxFile \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v7}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\':"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/dropbox/sync/android/CoreLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_2
.end method

.method public declared-synchronized getSyncStatus()Lcom/dropbox/sync/android/DbxFileStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkClosed()V

    .line 557
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->getFileStatus(J)Lcom/dropbox/sync/android/DbxFileStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteStream()Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 333
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkStateForWrite()V

    .line 335
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFile:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 336
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    const-string v2, "write"

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/NativeFileSystem;->createTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 338
    .local v0, "tempFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/DbxFile;->getTrackedFileOutputStream(Ljava/io/File;Z)Lcom/dropbox/sync/android/DbxFile$TrackedFileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 333
    .end local v0    # "tempFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isThumb()Z
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFlags:I

    invoke-static {v0}, Lcom/dropbox/sync/android/NativeFileSystem;->isOpenThumbFlags(I)Z

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFile;->getReadStream()Ljava/io/FileInputStream;

    move-result-object v1

    .line 293
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/high16 v2, 0x10000

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/dropbox/sync/android/CoreIOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[BLcom/dropbox/sync/android/CoreIOUtil$ProgressListener;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 304
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2

    .line 301
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v2

    .line 298
    :catchall_1
    move-exception v2

    .line 299
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 301
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v2

    :catchall_2
    move-exception v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v2
.end method

.method public declared-synchronized removeListener(Lcom/dropbox/sync/android/DbxFile$Listener;)V
    .locals 4
    .param p1, "l"    # Lcom/dropbox/sync/android/DbxFile$Listener;

    .prologue
    .line 621
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 622
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFile;->mIsOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 628
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/dropbox/sync/android/NativeFileSystem;->setFileListener(JLcom/dropbox/sync/android/NativeFileSystem$FileListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized update()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkStateForUpdate()V

    .line 543
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mLog:Lcom/dropbox/sync/android/CoreLogger;

    sget-object v1, Lcom/dropbox/sync/android/DbxFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating DbxFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFile;->mPath:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v3}, Lcom/dropbox/sync/android/DbxPath;->log()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/sync/android/CoreLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/dropbox/sync/android/NativeFileSystem;->updateFileHandle(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeFromExistingFile(Ljava/io/File;Z)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "shouldSteal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFile;->checkStateForWrite()V

    .line 454
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeFileSystem:Lcom/dropbox/sync/android/NativeFileSystem;

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFile;->mNativeHandle:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/dropbox/sync/android/NativeFileSystem;->writeFile(JLjava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxFile;->getWriteStream()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 472
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 473
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 477
    return-void

    .line 475
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method
