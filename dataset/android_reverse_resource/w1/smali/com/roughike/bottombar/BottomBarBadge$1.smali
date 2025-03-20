.class Lcom/roughike/bottombar/BottomBarBadge$1;
.super Ljava/lang/Object;
.source "BottomBarBadge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBarBadge;-><init>(Landroid/content/Context;ILandroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomBarBadge;

.field final synthetic val$container:Landroid/widget/FrameLayout;

.field final synthetic val$tabToAddTo:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBarBadge;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/roughike/bottombar/BottomBarBadge;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->this$0:Lcom/roughike/bottombar/BottomBarBadge;

    iput-object p2, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->val$container:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->val$tabToAddTo:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->val$container:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 194
    iget-object v0, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->this$0:Lcom/roughike/bottombar/BottomBarBadge;

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBarBadge$1;->val$tabToAddTo:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/roughike/bottombar/BottomBarBadge;->access$000(Lcom/roughike/bottombar/BottomBarBadge;Landroid/view/View;)V

    .line 195
    return-void
.end method
