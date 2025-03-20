.class final Lcom/roughike/bottombar/MiscUtils$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiscUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/MiscUtils;->animateBGColorChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$backgroundView:Landroid/view/View;

.field final synthetic val$bgOverlay:Landroid/view/View;

.field final synthetic val$newColor:I


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/roughike/bottombar/MiscUtils$4;->val$backgroundView:Landroid/view/View;

    iput p2, p0, Lcom/roughike/bottombar/MiscUtils$4;->val$newColor:I

    iput-object p3, p0, Lcom/roughike/bottombar/MiscUtils$4;->val$bgOverlay:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onCancel()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/roughike/bottombar/MiscUtils$4;->val$backgroundView:Landroid/view/View;

    iget v1, p0, Lcom/roughike/bottombar/MiscUtils$4;->val$newColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 208
    iget-object v0, p0, Lcom/roughike/bottombar/MiscUtils$4;->val$bgOverlay:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/roughike/bottombar/MiscUtils$4;->val$bgOverlay:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 210
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/roughike/bottombar/MiscUtils$4;->onCancel()V

    .line 204
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/roughike/bottombar/MiscUtils$4;->onCancel()V

    .line 199
    return-void
.end method
