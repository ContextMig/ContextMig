.class Lorg/mozilla/focus/fragment/BrowserFragment$9;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->inflateLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/BrowserFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/BrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/BrowserFragment;

    .prologue
    .line 403
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$9;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # Ljava/lang/Integer;

    .prologue
    .line 406
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$9;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$500(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/widget/AnimatedProgressBar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setProgress(I)V

    .line 407
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 403
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment$9;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
