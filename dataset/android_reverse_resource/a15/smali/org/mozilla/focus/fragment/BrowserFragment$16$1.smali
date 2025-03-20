.class Lorg/mozilla/focus/fragment/BrowserFragment$16$1;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment$16;->invoke()Lkotlin/Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mozilla/focus/fragment/BrowserFragment$16;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/BrowserFragment$16;)V
    .locals 0
    .param p1, "this$1"    # Lorg/mozilla/focus/fragment/BrowserFragment$16;

    .prologue
    .line 1327
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$16$1;->this$1:Lorg/mozilla/focus/fragment/BrowserFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1330
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$16$1;->this$1:Lorg/mozilla/focus/fragment/BrowserFragment$16;

    iget-object v0, v0, Lorg/mozilla/focus/fragment/BrowserFragment$16;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0f00c1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/mozilla/focus/utils/ViewUtils;->showBrandedSnackbar(Landroid/view/View;II)V

    .line 1331
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$16$1;->this$1:Lorg/mozilla/focus/fragment/BrowserFragment$16;

    iget-object v0, v0, Lorg/mozilla/focus/fragment/BrowserFragment$16;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$2200(Lorg/mozilla/focus/fragment/BrowserFragment;)V

    .line 1332
    return-void
.end method
