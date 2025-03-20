.class Lorg/mozilla/focus/fragment/BrowserFragment$14;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Lorg/mozilla/focus/utils/StatusBarUtils$StatusBarHeightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/BrowserFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 836
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$14;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusBarHeightFetched(I)V
    .locals 1
    .param p1, "statusBarHeight"    # I

    .prologue
    .line 839
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$14;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1600(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 840
    return-void
.end method
