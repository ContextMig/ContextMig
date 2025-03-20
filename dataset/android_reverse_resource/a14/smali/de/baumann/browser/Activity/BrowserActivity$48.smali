.class Lde/baumann/browser/Activity/BrowserActivity$48;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showSwitcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$whiteList_ab:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/ImageButton;Ljava/lang/String;)V
    .locals 0

    .line 2114
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->val$whiteList_ab:Landroid/widget/ImageButton;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 2117
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$3800(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AdBlock;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v0

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/baumann/browser/Browser/AdBlock;->isWhite(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2118
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->val$whiteList_ab:Landroid/widget/ImageButton;

    const v0, 0x7f08006f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2119
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$3800(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AdBlock;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/baumann/browser/Browser/AdBlock;->removeDomain(Ljava/lang/String;)V

    goto :goto_0

    .line 2121
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->val$whiteList_ab:Landroid/widget/ImageButton;

    const v0, 0x7f08005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2122
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$3800(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AdBlock;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$48;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/baumann/browser/Browser/AdBlock;->addDomain(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
