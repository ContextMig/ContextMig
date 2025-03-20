.class Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader$1;
.super Ljava/lang/Object;
.source "ContactPictureLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;->getResourceFetcher(Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;II)Lcom/bumptech/glide/load/data/DataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;

.field final synthetic val$model:Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader$1;->this$1:Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;

    iput-object p2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader$1;->val$model:Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader$1;->val$model:Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;
    .locals 1
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader$1;->val$model:Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    return-object v0
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader$1;->loadData(Lcom/bumptech/glide/Priority;)Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    move-result-object v0

    return-object v0
.end method
