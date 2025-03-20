.class Lde/baumann/browser/Activity/BrowserActivity$68;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lde/baumann/browser/View/NinjaWebView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->scrollChange()V
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

    .line 2675
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$68;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(II)V
    .locals 3

    .line 2679
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$68;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_hideToolbar"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_0

    .line 2681
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$68;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$4400(Lde/baumann/browser/Activity/BrowserActivity;)V

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_2

    .line 2683
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$68;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$4500(Lde/baumann/browser/Activity/BrowserActivity;)V

    goto :goto_0

    .line 2685
    :cond_1
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$68;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "sp_hideToolbar"

    const-string v0, "0"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2686
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$68;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$4400(Lde/baumann/browser/Activity/BrowserActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
