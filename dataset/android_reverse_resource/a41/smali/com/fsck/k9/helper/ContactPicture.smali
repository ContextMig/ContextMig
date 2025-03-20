.class public Lcom/fsck/k9/helper/ContactPicture;
.super Ljava/lang/Object;
.source "ContactPicture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactPictureLoader(Landroid/content/Context;)Lcom/fsck/k9/activity/misc/ContactPictureLoader;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {}, Lcom/fsck/k9/K9;->isColorizeMissingContactPictures()Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 16
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f010038

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 23
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .local v0, "defaultBgColor":I
    :goto_0
    new-instance v2, Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    invoke-direct {v2, p0, v0}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;-><init>(Landroid/content/Context;I)V

    return-object v2

    .line 20
    .end local v0    # "defaultBgColor":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "defaultBgColor":I
    goto :goto_0
.end method
