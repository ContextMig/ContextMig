.class Lcom/roughike/bottombar/BottomBar$1;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBar;->makeBadgeForTabAt(III)Lcom/roughike/bottombar/BottomBarBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomBar;

.field final synthetic val$tab:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBar;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/roughike/bottombar/BottomBar;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar$1;->this$0:Lcom/roughike/bottombar/BottomBar;

    iput-object p2, p0, Lcom/roughike/bottombar/BottomBar$1;->val$tab:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 751
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar$1;->this$0:Lcom/roughike/bottombar/BottomBar;

    iget-object v0, p0, Lcom/roughike/bottombar/BottomBar$1;->val$tab:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v1, v0}, Lcom/roughike/bottombar/BottomBar;->access$000(Lcom/roughike/bottombar/BottomBar;Landroid/view/View;)V

    .line 752
    return-void
.end method
