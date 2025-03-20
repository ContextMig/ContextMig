.class Lde/baumann/browser/Activity/BrowserActivity$38;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->initSearchPanel()V
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

    .line 1765
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$38;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1768
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$38;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$800(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1769
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1770
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$38;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$38;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e00fb

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1774
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$38;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$38;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$800(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    .line 1775
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$38;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    instance-of p1, p1, Lde/baumann/browser/View/NinjaWebView;

    if-eqz p1, :cond_1

    .line 1776
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$38;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    check-cast p1, Lde/baumann/browser/View/NinjaWebView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lde/baumann/browser/View/NinjaWebView;->findNext(Z)V

    :cond_1
    return-void
.end method
