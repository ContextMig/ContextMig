.class Lde/baumann/browser/Activity/BrowserActivity$11;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$expand:Z


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Z)V
    .locals 0

    .line 747
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$11;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-boolean p2, p0, Lde/baumann/browser/Activity/BrowserActivity$11;->val$expand:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 750
    iget-boolean v0, p0, Lde/baumann/browser/Activity/BrowserActivity$11;->val$expand:Z

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$11;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$000(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/SwitcherPanel;

    move-result-object v0

    invoke-virtual {v0}, Lde/baumann/browser/View/SwitcherPanel;->expanded()V

    :cond_0
    return-void
.end method
