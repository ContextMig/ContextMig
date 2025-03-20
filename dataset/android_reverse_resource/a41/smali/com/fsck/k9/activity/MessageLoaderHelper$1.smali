.class Lcom/fsck/k9/activity/MessageLoaderHelper$1;
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
        "Lcom/fsck/k9/mailstore/LocalMessage;",
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
    .line 235
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loader id must be message loader id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    new-instance v0, Lcom/fsck/k9/ui/message/LocalMessageLoader;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$000(Lcom/fsck/k9/activity/MessageLoaderHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v2}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$000(Lcom/fsck/k9/activity/MessageLoaderHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v3}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$100(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v4}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$200(Lcom/fsck/k9/activity/MessageLoaderHelper;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/ui/message/LocalMessageLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 2
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loader id must be message loader id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0, p2}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$302(Lcom/fsck/k9/activity/MessageLoaderHelper;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 252
    if-nez p2, :cond_1

    .line 253
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$400(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->this$0:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-static {v0}, Lcom/fsck/k9/activity/MessageLoaderHelper;->access$500(Lcom/fsck/k9/activity/MessageLoaderHelper;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 235
    check-cast p2, Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/activity/MessageLoaderHelper$1;->onLoadFinished(Landroid/content/Loader;Lcom/fsck/k9/mailstore/LocalMessage;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loader id must be message loader id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    return-void
.end method
