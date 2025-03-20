.class Lorg/mozilla/focus/fragment/BrowserFragment$15;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->showSecurityPopUp()V
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
    .line 1277
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$15;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$15;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$2100(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1281
    return-void
.end method
