.class Lorg/mozilla/focus/fragment/BrowserFragment$10;
.super Lorg/mozilla/focus/architecture/NonNullObserver;
.source "BrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->initialiseNormalBrowserUi(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/focus/architecture/NonNullObserver",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/mozilla/focus/session/Session;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

.field final synthetic val$eraseButton:Lorg/mozilla/focus/widget/FloatingEraseButton;

.field final synthetic val$tabsButton:Lorg/mozilla/focus/widget/FloatingSessionsButton;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/BrowserFragment;Lorg/mozilla/focus/widget/FloatingSessionsButton;Lorg/mozilla/focus/widget/FloatingEraseButton;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 436
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$10;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    iput-object p2, p0, Lorg/mozilla/focus/fragment/BrowserFragment$10;->val$tabsButton:Lorg/mozilla/focus/widget/FloatingSessionsButton;

    iput-object p3, p0, Lorg/mozilla/focus/fragment/BrowserFragment$10;->val$eraseButton:Lorg/mozilla/focus/widget/FloatingEraseButton;

    invoke-direct {p0}, Lorg/mozilla/focus/architecture/NonNullObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onValueChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 436
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment$10;->onValueChanged(Ljava/util/List;)V

    return-void
.end method

.method protected onValueChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/session/Session;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/session/Session;>;"
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$10;->val$tabsButton:Lorg/mozilla/focus/widget/FloatingSessionsButton;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/widget/FloatingSessionsButton;->updateSessionsCount(I)V

    .line 440
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$10;->val$eraseButton:Lorg/mozilla/focus/widget/FloatingEraseButton;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/widget/FloatingEraseButton;->updateSessionsCount(I)V

    .line 441
    return-void
.end method
