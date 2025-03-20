.class Lcom/dropbox/sync/android/NativeEnv$1;
.super Lcom/dropbox/sync/android/DbxAvailableBytesComputer;
.source "NativeEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/NativeEnv;->doInitialize(Lcom/dropbox/sync/android/NativeEnv$Config;Lcom/dropbox/sync/android/PerfTracer;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/NativeEnv;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/NativeEnv;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeEnv$1;->this$0:Lcom/dropbox/sync/android/NativeEnv;

    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxAvailableBytesComputer;-><init>()V

    return-void
.end method


# virtual methods
.method public computeAvailableBytes()J
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public computeDeviceTotalStorageBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method
