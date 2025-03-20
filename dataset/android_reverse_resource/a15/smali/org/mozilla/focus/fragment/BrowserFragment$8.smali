.class Lorg/mozilla/focus/fragment/BrowserFragment$8;
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
        "Ljava/lang/Boolean;",
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
    .line 381
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$8;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "secure"    # Ljava/lang/Boolean;

    .prologue
    const v1, 0x7f08008d

    .line 384
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$8;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$700(Lorg/mozilla/focus/fragment/BrowserFragment;)Lorg/mozilla/focus/session/Session;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/session/Session;->getLoading()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/architecture/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 385
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$8;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1000(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$8;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$8;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1000(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$8;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1000(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lorg/mozilla/focus/fragment/BrowserFragment$8;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$1000(Lorg/mozilla/focus/fragment/BrowserFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment$8;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
