.class Lde/baumann/browser/Activity/BrowserActivity$69;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onCreateView(Landroid/webkit/WebView;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/os/Message;)V
    .locals 0

    .line 2746
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$69;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$69;->val$resultMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2749
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$69;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$69;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v2, 0x7f0e0022

    invoke-virtual {v1, v2}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity$69;->val$resultMsg:Landroid/os/Message;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4, v2}, Lde/baumann/browser/Activity/BrowserActivity;->access$2800(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    return-void
.end method
