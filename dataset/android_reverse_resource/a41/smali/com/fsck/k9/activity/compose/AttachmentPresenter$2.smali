.class Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;
.super Ljava/lang/Object;
.source "AttachmentPresenter.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/AttachmentPresenter;
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
        "Lcom/fsck/k9/activity/misc/Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

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
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    const-string v1, "attachment"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 260
    .local v0, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$000(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$100(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/misc/Attachment;

    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/activity/loader/AttachmentContentLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/Attachment;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 3
    .param p2, "attachment"    # Lcom/fsck/k9/activity/misc/Attachment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/fsck/k9/activity/misc/Attachment;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 266
    .local v0, "loaderId":I
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$200(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 268
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$100(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p2, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, p2, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v2, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-ne v1, v2, :cond_1

    .line 273
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$300(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->updateAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 274
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$100(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p2, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :goto_1
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$500(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$100(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p2, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$300(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->removeAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 256
    check-cast p2, Lcom/fsck/k9/activity/misc/Attachment;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$2;->onLoadFinished(Landroid/content/Loader;Lcom/fsck/k9/activity/misc/Attachment;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/fsck/k9/activity/misc/Attachment;>;"
    return-void
.end method
