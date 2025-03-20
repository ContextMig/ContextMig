.class Lde/baumann/browser/Activity/BrowserActivity$26;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lde/baumann/browser/View/SwipeToBoundListener$BoundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->initOmnibox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final keyListener:Landroid/text/method/KeyListener;

.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 1512
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1513
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p1

    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->keyListener:Landroid/text/method/KeyListener;

    return-void
.end method


# virtual methods
.method public canSwipe()Z
    .locals 3

    .line 1517
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v2, 0x7f0e00de

    invoke-virtual {v1, v2}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1518
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$000(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/SwitcherPanel;

    move-result-object v1

    invoke-virtual {v1}, Lde/baumann/browser/View/SwitcherPanel;->isKeyBoardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onBound(ZZ)V
    .locals 2

    .line 1531
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->keyListener:Landroid/text/method/KeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1532
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 1533
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 1534
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 1535
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    if-eqz p1, :cond_0

    .line 1538
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$2000(Lde/baumann/browser/Activity/BrowserActivity;Z)Lde/baumann/browser/Browser/AlbumController;

    move-result-object p1

    .line 1539
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V

    :cond_0
    return-void
.end method

.method public onSwipe()V
    .locals 2

    .line 1523
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1524
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 1525
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 1526
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$26;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    return-void
.end method
