.class Lcom/fsck/k9/activity/MessageLoaderHelper$3;
.super Ljava/lang/Object;
.source "MessageLoaderHelper.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/fsck/k9/mailstore/MessageViewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/MessageLoaderHelper;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$3;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/fsck/k9/mailstore/MessageViewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loader id must be message decoder id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    new-instance v0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$3;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$000(Lcom/fsck/k9/activity/MessageLoaderHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$3;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v2}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$300(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$3;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v3}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$700(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 2
    .param p2, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/fsck/k9/mailstore/MessageViewInfo;",
            ">;",
            "Lcom/fsck/k9/mailstore/MessageViewInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/fsck/k9/mailstore/MessageViewInfo;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loader id must be message decoder id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$3;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0, p2}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$900(Lcom/fsck/k9/activity/MessageLoaderHelper;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 393
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 378
    check-cast p2, Lcom/fsck/k9/mailstore/MessageViewInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/activity/MessageLoaderHelper$3;->onLoadFinished(Landroid/content/Loader;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/fsck/k9/mailstore/MessageViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/fsck/k9/mailstore/MessageViewInfo;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loader id must be message decoder id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    return-void
.end method
