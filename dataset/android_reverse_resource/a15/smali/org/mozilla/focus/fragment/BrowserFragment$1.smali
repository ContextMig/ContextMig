.class Lorg/mozilla/focus/fragment/BrowserFragment$1;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 189
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$1;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "blockedTrackers"    # Ljava/lang/Integer;

    .prologue
    .line 192
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$1;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$000(Lorg/mozilla/focus/fragment/BrowserFragment;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$1;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-static {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->access$000(Lorg/mozilla/focus/fragment/BrowserFragment;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/menu/browser/BrowserMenu;

    .line 198
    .local v0, "menu":Lorg/mozilla/focus/menu/browser/BrowserMenu;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->updateTrackers(I)V

    goto :goto_0
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment$1;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
