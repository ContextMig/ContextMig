.class Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;
.super Ljava/lang/Object;
.source "ContactPictureLoader.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/misc/ContactPictureLoader;->loadContactPicture(Landroid/net/Uri;Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener",
        "<",
        "Landroid/net/Uri;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

.field final synthetic val$address:Lcom/fsck/k9/mail/Address;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    iput-object p2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;->val$address:Lcom/fsck/k9/mail/Address;

    iput-object p3, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "model"    # Landroid/net/Uri;
    .param p4, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;->this$0:Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    iget-object v1, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;->val$address:Lcom/fsck/k9/mail/Address;

    iget-object v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->access$100(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1

    .prologue
    .line 146
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;->onException(Ljava/lang/Exception;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 1
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .param p2, "model"    # Landroid/net/Uri;
    .param p4, "isFromMemoryCache"    # Z
    .param p5, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    .prologue
    .line 146
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
