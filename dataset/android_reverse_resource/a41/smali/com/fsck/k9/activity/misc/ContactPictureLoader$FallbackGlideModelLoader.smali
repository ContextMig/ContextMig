.class Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;
.super Ljava/lang/Object;
.source "ContactPictureLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/misc/ContactPictureLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FallbackGlideModelLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;",
        "Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader;
    .param p2, "x1"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;-><init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;)V

    return-void
.end method


# virtual methods
.method public getResourceFetcher(Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 1
    .param p1, "model"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader$1;-><init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;)V

    return-object v0
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 1

    .prologue
    .line 244
    check-cast p1, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;->getResourceFetcher(Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method
