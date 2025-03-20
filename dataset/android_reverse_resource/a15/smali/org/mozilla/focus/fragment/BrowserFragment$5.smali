.class Lorg/mozilla/focus/fragment/BrowserFragment$5;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/BrowserFragment;->inflateLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 284
    iput-object p1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$5;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 289
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 286
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 293
    iget-object v1, p0, Lorg/mozilla/focus/fragment/BrowserFragment$5;->this$0:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->getWebView()Lorg/mozilla/focus/web/IWebView;

    move-result-object v0

    .line 294
    .local v0, "webView":Lorg/mozilla/focus/web/IWebView;
    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mozilla/focus/web/IWebView;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method
