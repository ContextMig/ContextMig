.class Lcom/roughike/bottombar/BottomBar$4;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBar;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomBar;


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/roughike/bottombar/BottomBar;

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar$4;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar$4;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v1}, Lcom/roughike/bottombar/BottomBar;->access$400(Lcom/roughike/bottombar/BottomBar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar$4;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    new-instance v2, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    iget-object v3, p0, Lcom/roughike/bottombar/BottomBar$4;->this$0:Lcom/roughike/bottombar/BottomBar;

    .line 1061
    invoke-virtual {v3}, Lcom/roughike/bottombar/BottomBar;->getOuterContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/roughike/bottombar/BottomBar$4;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v5}, Lcom/roughike/bottombar/BottomBar;->isShy()Z

    move-result v5

    iget-object v6, p0, Lcom/roughike/bottombar/BottomBar$4;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v6}, Lcom/roughike/bottombar/BottomBar;->access$200(Lcom/roughike/bottombar/BottomBar;)Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;-><init>(IIZZ)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 1064
    :cond_0
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar$4;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-virtual {v1}, Lcom/roughike/bottombar/BottomBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1066
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 1067
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1071
    :goto_0
    return-void

    .line 1069
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
