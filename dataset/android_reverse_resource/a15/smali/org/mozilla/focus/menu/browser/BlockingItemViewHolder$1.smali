.class Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$1;
.super Ljava/lang/Object;
.source "BlockingItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;-><init>(Landroid/view/View;Lorg/mozilla/focus/fragment/BrowserFragment;)V
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
    .line 35
    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$1;->this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$1;->this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    iget-object v0, v0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->browserFragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$1;->this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    iget-object v0, v0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->browserFragment:Lorg/mozilla/focus/fragment/BrowserFragment;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/fragment/BrowserFragment;->onClick(Landroid/view/View;)V

    .line 41
    :cond_0
    return-void
.end method
