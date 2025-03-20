.class public Lde/baumann/browser/View/NinjaRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "NinjaRelativeLayout.java"

# interfaces
.implements Lde/baumann/browser/Browser/AlbumController;


# instance fields
.field private final album:Lde/baumann/browser/View/Album;

.field private final context:Landroid/content/Context;

.field private controller:Lde/baumann/browser/Browser/BrowserController;

.field private flag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lde/baumann/browser/View/NinjaRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lde/baumann/browser/View/NinjaRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->flag:I

    .line 33
    iput-object p1, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->context:Landroid/content/Context;

    .line 34
    new-instance p2, Lde/baumann/browser/View/Album;

    iget-object p3, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->controller:Lde/baumann/browser/Browser/BrowserController;

    invoke-direct {p2, p1, p0, p3}, Lde/baumann/browser/View/Album;-><init>(Landroid/content/Context;Lde/baumann/browser/Browser/AlbumController;Lde/baumann/browser/Browser/BrowserController;)V

    iput-object p2, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    .line 35
    invoke-direct {p0}, Lde/baumann/browser/View/NinjaRelativeLayout;->initUI()V

    return-void
.end method

.method private initUI()V
    .locals 3

    .line 39
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/Album;->setAlbumCover(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->context:Landroid/content/Context;

    const v2, 0x7f0e0022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/Album;->setAlbumTitle(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->controller:Lde/baumann/browser/Browser/BrowserController;

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/Album;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .line 76
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0}, Lde/baumann/browser/View/Album;->activate()V

    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 81
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0}, Lde/baumann/browser/View/Album;->deactivate()V

    return-void
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0}, Lde/baumann/browser/View/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumView()Landroid/view/View;
    .locals 1

    .line 56
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0}, Lde/baumann/browser/View/Album;->getAlbumView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 46
    iget v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->flag:I

    return v0
.end method

.method public setAlbumCover(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/Album;->setAlbumCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/Album;->setAlbumTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V
    .locals 1

    .line 19
    iput-object p1, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->controller:Lde/baumann/browser/Browser/BrowserController;

    .line 20
    iget-object v0, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->album:Lde/baumann/browser/View/Album;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/Album;->setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 51
    iput p1, p0, Lde/baumann/browser/View/NinjaRelativeLayout;->flag:I

    return-void
.end method
