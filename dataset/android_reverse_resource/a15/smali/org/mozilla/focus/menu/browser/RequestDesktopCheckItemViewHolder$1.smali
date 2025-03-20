.class Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder$1;
.super Ljava/lang/Object;
.source "RequestDesktopCheckItemViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder$1;->this$0:Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder$1;->this$0:Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;

    invoke-virtual {v0}, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->getMenu()Lorg/mozilla/focus/menu/browser/BrowserMenu;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->dismiss()V

    .line 46
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder$1;->this$0:Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;

    invoke-static {v0}, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->access$000(Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;)Lorg/mozilla/focus/fragment/BrowserFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder$1;->this$0:Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;

    invoke-static {v1}, Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;->access$000(Lorg/mozilla/focus/menu/browser/RequestDesktopCheckItemViewHolder;)Lorg/mozilla/focus/fragment/BrowserFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/focus/utils/UrlUtils;->stripSchemeAndSubDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/BrowserFragment;->loadUrl(Ljava/lang/String;)V

    .line 47
    return-void
.end method
