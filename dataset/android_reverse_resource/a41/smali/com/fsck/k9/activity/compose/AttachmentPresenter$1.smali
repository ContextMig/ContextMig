.class Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;
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
    .line 228
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

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
    .line 231
    const-string v1, "attachment"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 232
    .local v0, "uri":Landroid/net/Uri;
    new-instance v2, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$000(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$100(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/misc/Attachment;

    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/activity/loader/AttachmentInfoLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/Attachment;)V

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
    .line 237
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/fsck/k9/activity/misc/Attachment;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 238
    .local v0, "loaderId":I
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$200(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 240
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$100(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p2, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$300(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;->updateAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 245
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$100(Lcom/fsck/k9/activity/compose/AttachmentPresenter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p2, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->this$0:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-static {v1, p2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->access$400(Lcom/fsck/k9/activity/compose/AttachmentPresenter;Lcom/fsck/k9/activity/misc/Attachment;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p2, Lcom/fsck/k9/activity/misc/Attachment;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$1;->onLoadFinished(Landroid/content/Loader;Lcom/fsck/k9/activity/misc/Attachment;)V

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
    .line 252
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/fsck/k9/activity/misc/Attachment;>;"
    return-void
.end method
