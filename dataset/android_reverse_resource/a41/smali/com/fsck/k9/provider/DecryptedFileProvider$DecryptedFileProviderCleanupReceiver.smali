.class Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DecryptedFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/provider/DecryptedFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecryptedFileProviderCleanupReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/provider/DecryptedFileProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/provider/DecryptedFileProvider$1;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 200
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "onReceive called with action that isn\'t screen off!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    const-string v1, "Cleaning up temp files"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-static {p1}, Lcom/fsck/k9/provider/DecryptedFileProvider;->deleteOldTemporaryFiles(Landroid/content/Context;)Z

    move-result v0

    .line 207
    .local v0, "allFilesDeleted":Z
    if-eqz v0, :cond_1

    .line 208
    invoke-static {p1}, Lcom/fsck/k9/provider/DecryptedFileProvider;->access$300(Landroid/content/Context;)V

    .line 210
    :cond_1
    return-void
.end method
