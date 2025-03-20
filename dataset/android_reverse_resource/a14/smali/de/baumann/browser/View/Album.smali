.class Lde/baumann/browser/View/Album;
.super Ljava/lang/Object;
.source "Album.java"


# instance fields
.field private final albumController:Lde/baumann/browser/Browser/AlbumController;

.field private albumCover:Landroid/widget/ImageView;

.field private albumTitle:Landroid/widget/TextView;

.field private albumView:Landroid/view/View;

.field private browserController:Lde/baumann/browser/Browser/BrowserController;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/baumann/browser/Browser/AlbumController;Lde/baumann/browser/Browser/BrowserController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lde/baumann/browser/View/Album;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lde/baumann/browser/View/Album;->albumController:Lde/baumann/browser/Browser/AlbumController;

    .line 47
    iput-object p3, p0, Lde/baumann/browser/View/Album;->browserController:Lde/baumann/browser/Browser/BrowserController;

    .line 48
    invoke-direct {p0}, Lde/baumann/browser/View/Album;->initUI()V

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/View/Album;)Lde/baumann/browser/Browser/AlbumController;
    .locals 0

    .line 16
    iget-object p0, p0, Lde/baumann/browser/View/Album;->albumController:Lde/baumann/browser/Browser/AlbumController;

    return-object p0
.end method

.method static synthetic access$100(Lde/baumann/browser/View/Album;)Lde/baumann/browser/Browser/BrowserController;
    .locals 0

    .line 16
    iget-object p0, p0, Lde/baumann/browser/View/Album;->browserController:Lde/baumann/browser/Browser/BrowserController;

    return-object p0
.end method

.method private initUI()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lde/baumann/browser/View/Album;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/baumann/browser/View/Album;->albumView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumView:Landroid/view/View;

    new-instance v1, Lde/baumann/browser/View/SwipeToDismissListener;

    iget-object v2, p0, Lde/baumann/browser/View/Album;->albumView:Landroid/view/View;

    new-instance v3, Lde/baumann/browser/View/Album$1;

    invoke-direct {v3, p0}, Lde/baumann/browser/View/Album$1;-><init>(Lde/baumann/browser/View/Album;)V

    invoke-direct {v1, v2, v3}, Lde/baumann/browser/View/SwipeToDismissListener;-><init>(Landroid/view/View;Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumView:Landroid/view/View;

    new-instance v1, Lde/baumann/browser/View/Album$2;

    invoke-direct {v1, p0}, Lde/baumann/browser/View/Album$2;-><init>(Lde/baumann/browser/View/Album;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumView:Landroid/view/View;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lde/baumann/browser/View/Album;->albumCover:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumView:Landroid/view/View;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/baumann/browser/View/Album;->albumTitle:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lde/baumann/browser/View/Album;->context:Landroid/content/Context;

    const v2, 0x7f0e0022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 77
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumView:Landroid/view/View;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public deactivate()V
    .locals 2

    .line 81
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumView:Landroid/view/View;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumView()Landroid/view/View;
    .locals 1

    .line 21
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumView:Landroid/view/View;

    return-object v0
.end method

.method public setAlbumCover(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumCover:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lde/baumann/browser/View/Album;->albumTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBrowserController(Lde/baumann/browser/Browser/BrowserController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lde/baumann/browser/View/Album;->browserController:Lde/baumann/browser/Browser/BrowserController;

    return-void
.end method
