.class Lde/baumann/browser/View/Album$2;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/Album;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/Album;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/Album;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lde/baumann/browser/View/Album$2;->this$0:Lde/baumann/browser/View/Album;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 67
    iget-object p1, p0, Lde/baumann/browser/View/Album$2;->this$0:Lde/baumann/browser/View/Album;

    invoke-static {p1}, Lde/baumann/browser/View/Album;->access$100(Lde/baumann/browser/View/Album;)Lde/baumann/browser/Browser/BrowserController;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/View/Album$2;->this$0:Lde/baumann/browser/View/Album;

    invoke-static {v0}, Lde/baumann/browser/View/Album;->access$000(Lde/baumann/browser/View/Album;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lde/baumann/browser/Browser/BrowserController;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V

    return-void
.end method
