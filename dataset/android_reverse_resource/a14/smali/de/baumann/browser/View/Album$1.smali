.class Lde/baumann/browser/View/Album$1;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Lde/baumann/browser/View/SwipeToDismissListener$DismissCallback;


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

    .line 56
    iput-object p1, p0, Lde/baumann/browser/View/Album$1;->this$0:Lde/baumann/browser/View/Album;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 59
    iget-object v0, p0, Lde/baumann/browser/View/Album$1;->this$0:Lde/baumann/browser/View/Album;

    invoke-static {v0}, Lde/baumann/browser/View/Album;->access$100(Lde/baumann/browser/View/Album;)Lde/baumann/browser/Browser/BrowserController;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/View/Album$1;->this$0:Lde/baumann/browser/View/Album;

    invoke-static {v1}, Lde/baumann/browser/View/Album;->access$000(Lde/baumann/browser/View/Album;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/baumann/browser/Browser/BrowserController;->removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V

    return-void
.end method
