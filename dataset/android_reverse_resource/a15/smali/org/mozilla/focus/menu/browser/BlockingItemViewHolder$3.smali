.class Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$3;
.super Ljava/lang/Object;
.source "BlockingItemViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->disableTrackingCount(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$3;->this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    iput-object p2, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$3;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$3;->val$view:Landroid/widget/TextView;

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    return-void
.end method
