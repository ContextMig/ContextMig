.class Lde/baumann/browser/Activity/BrowserActivity$77;
.super Ljava/util/TimerTask;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->doubleTapsHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/util/Timer;)V
    .locals 0

    .line 3012
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$77;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$77;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3015
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$77;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$4802(Lde/baumann/browser/Activity/BrowserActivity;Z)Z

    .line 3016
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$77;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
