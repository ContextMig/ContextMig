.class Lde/baumann/browser/Activity/BrowserActivity$24;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->initOmnibox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 1471
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$24;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1474
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$24;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    instance-of p1, p1, Lde/baumann/browser/View/NinjaWebView;

    if-eqz p1, :cond_0

    .line 1475
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$24;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1900(Lde/baumann/browser/Activity/BrowserActivity;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
