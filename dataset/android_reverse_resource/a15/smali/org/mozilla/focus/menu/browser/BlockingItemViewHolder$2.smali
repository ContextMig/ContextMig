.class Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$2;
.super Ljava/lang/Object;
.source "BlockingItemViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;->updateTrackingCount(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

.field final synthetic val$count:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$2;->this$0:Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder;

    iput-object p2, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$2;->val$view:Landroid/widget/TextView;

    iput p3, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$2;->val$view:Landroid/widget/TextView;

    iget v1, p0, Lorg/mozilla/focus/menu/browser/BlockingItemViewHolder$2;->val$count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
