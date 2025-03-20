.class Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;
.super Ljava/lang/Object;
.source "ResizableKeyboardViewDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$000(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$100(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)I

    move-result v0

    .line 55
    .local v0, "difference":I
    if-lez v0, :cond_2

    .line 57
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$200(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 58
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1, v0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$300(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;I)V

    .line 60
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$400(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$400(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$200(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1, v2}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$300(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;I)V

    .line 69
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$400(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;->this$0:Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    invoke-static {v1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->access$400(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
