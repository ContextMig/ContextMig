.class Lcom/fsck/k9/ui/messageview/MessageTopView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessageTopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/MessageTopView;->displayViewOnLoadFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/MessageTopView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/MessageTopView;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$7;->this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$7;->this$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-static {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->access$200(Lcom/fsck/k9/ui/messageview/MessageTopView;)Lcom/fsck/k9/view/ToolableViewAnimator;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 337
    return-void
.end method
