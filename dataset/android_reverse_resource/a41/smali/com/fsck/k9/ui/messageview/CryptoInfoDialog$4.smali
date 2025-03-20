.class Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;
.super Ljava/lang/Object;
.source "CryptoInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->prepareIconAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I
    .param p6, "i4"    # I
    .param p7, "i5"    # I
    .param p8, "i6"    # I
    .param p9, "i7"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->access$000(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-static {v2}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->access$100(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 184
    .local v0, "halfVerticalPixelDifference":F
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->access$100(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 185
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->access$000(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/view/View;

    move-result-object v1

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 187
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->access$100(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 188
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 190
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 192
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->access$000(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 194
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 195
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 197
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->access$200(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 198
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$4;->this$0:Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;

    invoke-static {v1}, Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;->access$300(Lcom/fsck/k9/ui/messageview/CryptoInfoDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 200
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 201
    return-void
.end method
