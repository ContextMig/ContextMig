.class public abstract Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.super Ljava/lang/Object;
.source "OpenPgpApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/util/OpenPgpApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OpenPgpDataSource"
.end annotation


# instance fields
.field private isCancelled:Z

.field private writeSidePfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;)V
    .locals 0
    .param p0, "x0"    # Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;

    .prologue
    .line 535
    invoke-direct {p0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->isCancelled:Z

    .line 566
    :try_start_0
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeSidePfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getSizeForProgress()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->isCancelled:Z

    return v0
.end method

.method public startPumpThread()Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeSidePfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 552
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "startPumpThread() must only be called once!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    :cond_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 555
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 556
    .local v1, "readSidePfd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeSidePfd:Landroid/os/ParcelFileDescriptor;

    .line 558
    new-instance v2, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v4, p0, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->writeSidePfd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, p0, v3}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;-><init>(Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$DataSourceTransferThread;->start()V

    .line 560
    return-object v1
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
