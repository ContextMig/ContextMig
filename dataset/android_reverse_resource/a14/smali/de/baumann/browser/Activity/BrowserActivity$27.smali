.class Lde/baumann/browser/Activity/BrowserActivity$27;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 1544
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$27;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1547
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$27;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 1551
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$27;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1552
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1553
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$27;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$27;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p3, 0x7f0e00fb

    invoke-virtual {p2, p3}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 1557
    :cond_1
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$27;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3, p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    .line 1558
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$27;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$27;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p3

    invoke-static {p1, p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    return p2
.end method
