.class Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;
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
    name = "LollipopBottomNavWithSnackBarImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;


# direct methods
.method private constructor <init>(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)V
    .locals 0

    .prologue
    .line 158
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>.LollipopBottomNavWithSnackBarImpl;"
    iput-object p1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;
    .param p2, "x1"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$1;

    .prologue
    .line 158
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>.LollipopBottomNavWithSnackBarImpl;"
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;-><init>(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)V

    return-void
.end method


# virtual methods
.method public updateSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "dependency"    # Landroid/view/View;
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 162
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>.LollipopBottomNavWithSnackBarImpl;"
    iget-object v1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v1}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$200(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v1}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$300(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v1}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$400(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$402(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;I)I

    .line 166
    :cond_0
    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v1}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$400(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I

    move-result v1

    iget-object v2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$500(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;->this$0:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    invoke-static {v2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->access$600(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I

    move-result v2

    sub-int v0, v1, v2

    .line 168
    .local v0, "targetPadding":I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 169
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 168
    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
