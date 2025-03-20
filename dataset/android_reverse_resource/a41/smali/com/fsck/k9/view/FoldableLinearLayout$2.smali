.class Lcom/fsck/k9/view/FoldableLinearLayout$2;
.super Ljava/lang/Object;
.source "FoldableLinearLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/view/FoldableLinearLayout;->updateFoldedState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/view/FoldableLinearLayout;


# direct methods
.method constructor <init>(Lcom/fsck/k9/view/FoldableLinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/view/FoldableLinearLayout;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/fsck/k9/view/FoldableLinearLayout$2;->this$0:Lcom/fsck/k9/view/FoldableLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fsck/k9/view/FoldableLinearLayout$2;->this$0:Lcom/fsck/k9/view/FoldableLinearLayout;

    invoke-static {v0}, Lcom/fsck/k9/view/FoldableLinearLayout;->access$400(Lcom/fsck/k9/view/FoldableLinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 225
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 209
    return-void
.end method
