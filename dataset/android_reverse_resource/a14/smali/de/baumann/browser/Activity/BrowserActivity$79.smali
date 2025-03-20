.class Lde/baumann/browser/Activity/BrowserActivity$79;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->updateOverflow()V
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

    .line 3123
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$79;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3125
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$79;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$79;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v0

    instance-of v0, v0, Lde/baumann/browser/View/NinjaWebView;

    if-eqz v0, :cond_0

    .line 3126
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$79;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$4900(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$79;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v1

    invoke-virtual {v1}, Lde/baumann/browser/View/NinjaWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
