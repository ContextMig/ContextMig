.class final Lcom/roughike/bottombar/BottomBar$5;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBar;->navBarMagic(Landroid/app/Activity;Lcom/roughike/bottombar/BottomBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bottomBar:Lcom/roughike/bottombar/BottomBar;

.field final synthetic val$navBarHeightCopy:I

.field final synthetic val$outerContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBar;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar$5;->val$bottomBar:Lcom/roughike/bottombar/BottomBar;

    iput-object p2, p0, Lcom/roughike/bottombar/BottomBar$5;->val$outerContainer:Landroid/view/View;

    iput p3, p0, Lcom/roughike/bottombar/BottomBar$5;->val$navBarHeightCopy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    .line 1778
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar$5;->val$bottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v3}, Lcom/roughike/bottombar/BottomBar;->shyHeightAlreadyCalculated()V

    .line 1780
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar$5;->val$outerContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/roughike/bottombar/BottomBar$5;->val$navBarHeightCopy:I

    add-int v1, v3, v4

    .line 1781
    .local v1, "newHeight":I
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar$5;->val$outerContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1783
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar$5;->val$bottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v3}, Lcom/roughike/bottombar/BottomBar;->isShy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1784
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar$5;->val$bottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v3}, Lcom/roughike/bottombar/BottomBar;->useExtraOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/roughike/bottombar/BottomBar$5;->val$navBarHeightCopy:I

    .line 1785
    .local v0, "defaultOffset":I
    :goto_0
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar$5;->val$bottomBar:Lcom/roughike/bottombar/BottomBar;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/roughike/bottombar/BottomBar;->setTranslationY(F)V

    .line 1786
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar$5;->val$bottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v3}, Lcom/roughike/bottombar/BottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    new-instance v4, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    iget-object v5, p0, Lcom/roughike/bottombar/BottomBar$5;->val$bottomBar:Lcom/roughike/bottombar/BottomBar;

    .line 1787
    invoke-virtual {v5}, Lcom/roughike/bottombar/BottomBar;->isShy()Z

    move-result v5

    iget-object v6, p0, Lcom/roughike/bottombar/BottomBar$5;->val$bottomBar:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v6}, Lcom/roughike/bottombar/BottomBar;->access$200(Lcom/roughike/bottombar/BottomBar;)Z

    move-result v6

    invoke-direct {v4, v1, v0, v5, v6}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;-><init>(IIZZ)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 1790
    .end local v0    # "defaultOffset":I
    :cond_0
    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar$5;->val$outerContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1792
    .local v2, "obs":Landroid/view/ViewTreeObserver;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 1793
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1797
    :goto_1
    return-void

    .line 1784
    .end local v2    # "obs":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1795
    .restart local v2    # "obs":Landroid/view/ViewTreeObserver;
    :cond_2
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method
