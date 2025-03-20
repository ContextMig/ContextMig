.class Lcom/fsck/k9/activity/MessageLoaderHelper$2;
.super Ljava/lang/Object;
.source "MessageLoaderHelper.java"

# interfaces
.implements Lcom/fsck/k9/ui/crypto/MessageCryptoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$2;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCryptoHelperProgress(II)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$2;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$600(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected call when callback is already detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$2;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$600(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->setLoadingProgress(II)V

    .line 313
    return-void
.end method

.method public onCryptoOperationsFinished(Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)V
    .locals 2
    .param p1, "annotations"    # Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$2;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$600(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected call when callback is already detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$2;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0, p1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$702(Lcom/fsck/k9/activity/MessageLoaderHelper;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    .line 322
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$2;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$800(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    .line 323
    return-void
.end method

.method public startPendingIntentForCryptoHelper(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 7
    .param p1, "si"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagValues"    # I
    .param p6, "extraFlags"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$2;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$600(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected call when callback is already detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$2;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$600(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;->startIntentSenderForMessageLoaderHelper(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 334
    return-void
.end method
