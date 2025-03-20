.class Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$4;
.super Ljava/lang/Object;
.source "BlockingItemViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$4;->this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$4;->this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    invoke-virtual {v0}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->getMenu()Lorg/mozilla/focus/menu/browser/BrowserMenu;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/menu/browser/BrowserMenu;->dismiss()V

    .line 88
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$4;->this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    invoke-static {v0}, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->access$000(Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;)Lorg/mozilla/focus/fragment/BrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/BrowserFragment;->reload()V

    .line 89
    return-void
.end method
