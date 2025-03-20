.class Lde/baumann/browser/Activity/BrowserActivity$36;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 1734
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$36;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    return p1

    .line 1741
    :cond_0
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$36;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$800(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1742
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$36;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$36;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p3, 0x7f0e00fb

    invoke-virtual {p2, p3}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p1
.end method
