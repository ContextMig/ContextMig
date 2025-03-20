.class Lcom/dropbox/sync/android/CoreLogger$Uploader;
.super Ljava/lang/Object;
.source "CoreLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Uploader"
.end annotation


# instance fields
.field private final mEnv:Lcom/dropbox/sync/android/NativeEnv;

.field private final mNetListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

.field private final mThreads:Lcom/dropbox/sync/android/NativeThreads;

.field private final mUploader:Lcom/dropbox/sync/android/LogUploaderInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/dropbox/sync/android/CoreConfig;
    .param p3, "ledger"    # Lcom/dropbox/ledger/android/Ledger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Lcom/dropbox/sync/android/NativeEnv;

    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->getInstance()Lcom/dropbox/sync/android/NativeLib;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/dropbox/sync/android/NativeEnv;-><init>(Lcom/dropbox/sync/android/NativeLib;Landroid/content/Context;Lcom/dropbox/sync/android/CoreConfig;Lcom/dropbox/ledger/android/Ledger;)V

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    .line 34
    new-instance v1, Lcom/dropbox/sync/android/CoreLogger$Uploader$1;

    invoke-direct {v1, p0}, Lcom/dropbox/sync/android/CoreLogger$Uploader$1;-><init>(Lcom/dropbox/sync/android/CoreLogger$Uploader;)V

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mNetListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    .line 48
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/NativeEnv;->makeLogUploader()Lcom/dropbox/sync/android/LogUploaderInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mUploader:Lcom/dropbox/sync/android/LogUploaderInterface;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v0, "threadProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    new-instance v1, Lcom/dropbox/sync/android/CoreLogger$Uploader$2;

    invoke-direct {v1, p0}, Lcom/dropbox/sync/android/CoreLogger$Uploader$2;-><init>(Lcom/dropbox/sync/android/CoreLogger$Uploader;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/dropbox/sync/android/NativeThreads;

    const-string v2, "CoreLogger:logUpload"

    invoke-static {}, Lcom/dropbox/sync/android/CoreLogger;->access$300()Lcom/dropbox/sync/android/CoreLogger;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/dropbox/sync/android/NativeThreads;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/dropbox/sync/android/CoreLogger;)V

    iput-object v1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mThreads:Lcom/dropbox/sync/android/NativeThreads;

    .line 63
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mThreads:Lcom/dropbox/sync/android/NativeThreads;

    invoke-virtual {v1}, Lcom/dropbox/sync/android/NativeThreads;->initThreads()V

    .line 65
    invoke-static {}, Lcom/dropbox/sync/android/CoreNetworkStatus;->getInstance()Lcom/dropbox/sync/android/CoreNetworkStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mNetListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    invoke-virtual {v1, v2}, Lcom/dropbox/sync/android/CoreNetworkStatus;->addListener(Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;)V

    .line 66
    iget-object v1, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mNetListener:Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;

    invoke-interface {v1}, Lcom/dropbox/sync/android/CoreNetworkStatus$Listener;->onNetworkStatusChange()V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/dropbox/sync/android/CoreLogger$Uploader;)Lcom/dropbox/sync/android/NativeEnv;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/CoreLogger$Uploader;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mEnv:Lcom/dropbox/sync/android/NativeEnv;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/sync/android/CoreLogger$Uploader;)Lcom/dropbox/sync/android/LogUploaderInterface;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/sync/android/CoreLogger$Uploader;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreLogger$Uploader;->mUploader:Lcom/dropbox/sync/android/LogUploaderInterface;

    return-object v0
.end method
