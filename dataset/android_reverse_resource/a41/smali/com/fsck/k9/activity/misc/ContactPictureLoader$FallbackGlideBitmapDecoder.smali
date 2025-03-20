.class Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;
.super Ljava/lang/Object;
.source "ContactPictureLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/misc/ContactPictureLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FallbackGlideBitmapDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;->context:Landroid/content/Context;

    .line 213
    return-void
.end method


# virtual methods
.method public decode(Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p1, "source"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    .line 218
    .local v1, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    iget-object v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    invoke-static {v2}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->access$200(Lcom/fsck/k9/activity/misc/ContactPictureLoader;)I

    move-result v2

    iget-object v3, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    invoke-static {v3}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->access$200(Lcom/fsck/k9/activity/misc/ContactPictureLoader;)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    invoke-static {v2}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->access$200(Lcom/fsck/k9/activity/misc/ContactPictureLoader;)I

    move-result v2

    iget-object v3, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    invoke-static {v3}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->access$200(Lcom/fsck/k9/activity/misc/ContactPictureLoader;)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    invoke-static {v2, v0, p1}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->access$300(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Landroid/graphics/Bitmap;Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;)Landroid/graphics/Bitmap;

    .line 223
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    check-cast p1, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;->decode(Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "fallback-photo"

    return-object v0
.end method
