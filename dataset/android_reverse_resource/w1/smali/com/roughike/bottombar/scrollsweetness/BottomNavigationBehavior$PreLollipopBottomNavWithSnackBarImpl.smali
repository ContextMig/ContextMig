.class Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;
.super Ljava/lang/Object;
.source "BottomNavigationBehavior.java"

# interfaces
.implements Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$BottomNavigationWithSnackbar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreLollipopBottomNavWithSnackBarImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;


# direct methods
.method private constructor <init>(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)V
    .locals 0

    .prologue
    .line 135
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>.PreLollipopBottomNavWithSnackBarImpl;"
    iput-object p1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;
    .param p2, "x1"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$1;

    .prologue
    .line 135
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>.PreLollipopBottomNavWithSnackBarImpl;"
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;-><init>(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)V

    return-void
.end method


# virtual methods
.method public updateSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "dependency"    # Landroid/view/View;
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 139
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>.PreLollipopBottomNavWithSnackBarImpl;"
    iget-object v2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$200(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$300(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p2, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$400(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 141
    iget-object v2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$402(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;I)I

    .line 143
    :cond_0
    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$500(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I

    move-result v2

    iget-object v3, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v3}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$400(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v3}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$600(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I

    move-result v3

    sub-int v1, v2, v3

    .line 146
    .local v1, "targetPadding":I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 147
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 148
    invoke-virtual {p3}, Landroid/view/View;->bringToFront()V

    .line 149
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->requestLayout()V

    .line 150
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 151
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
