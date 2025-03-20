.class Lcom/roughike/bottombar/BottomBar$3;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roughike/bottombar/BottomBar;->getBarSize(Lcom/roughike/bottombar/OnSizeDeterminedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/BottomBar;

.field final synthetic val$listener:Lcom/roughike/bottombar/OnSizeDeterminedListener;


# direct methods
.method constructor <init>(Lcom/roughike/bottombar/BottomBar;Lcom/roughike/bottombar/OnSizeDeterminedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/roughike/bottombar/BottomBar;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBar$3;->this$0:Lcom/roughike/bottombar/BottomBar;

    iput-object p2, p0, Lcom/roughike/bottombar/BottomBar$3;->val$listener:Lcom/roughike/bottombar/OnSizeDeterminedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 905
    iget-object v2, p0, Lcom/roughike/bottombar/BottomBar$3;->val$listener:Lcom/roughike/bottombar/OnSizeDeterminedListener;

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar$3;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v1}, Lcom/roughike/bottombar/BottomBar;->access$200(Lcom/roughike/bottombar/BottomBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar$3;->this$0:Lcom/roughike/bottombar/BottomBar;

    .line 906
    invoke-static {v1}, Lcom/roughike/bottombar/BottomBar;->access$300(Lcom/roughike/bottombar/BottomBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 905
    :goto_0
    invoke-interface {v2, v1}, Lcom/roughike/bottombar/OnSizeDeterminedListener;->onSizeReady(I)V

    .line 907
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar$3;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v1}, Lcom/roughike/bottombar/BottomBar;->access$300(Lcom/roughike/bottombar/BottomBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 909
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 910
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 914
    :goto_1
    return-void

    .line 906
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v1, p0, Lcom/roughike/bottombar/BottomBar$3;->this$0:Lcom/roughike/bottombar/BottomBar;

    invoke-static {v1}, Lcom/roughike/bottombar/BottomBar;->access$300(Lcom/roughike/bottombar/BottomBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    goto :goto_0

    .line 912
    .restart local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method
