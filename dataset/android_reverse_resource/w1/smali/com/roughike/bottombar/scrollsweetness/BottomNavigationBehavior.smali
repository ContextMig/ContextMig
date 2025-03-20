.class public Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;
.super Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;
.source "BottomNavigationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;,
        Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;,
        Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$BottomNavigationWithSnackbar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private hidden:Z

.field private isShy:Z

.field private isTablet:Z

.field private final mBottomNavHeight:I

.field private final mDefaultOffset:I

.field private mScrollingEnabled:Z

.field private mSnackbarHeight:I

.field private mTranslationAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private final mWithSnackBarImpl:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$BottomNavigationWithSnackbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 3
    .param p1, "bottomNavHeight"    # I
    .param p2, "defaultOffset"    # I
    .param p3, "shy"    # Z
    .param p4, "tablet"    # Z

    .prologue
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->isShy:Z

    .line 25
    iput-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->isTablet:Z

    .line 28
    iput-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->hidden:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mSnackbarHeight:I

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;

    invoke-direct {v0, p0, v2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$LollipopBottomNavWithSnackBarImpl;-><init>(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$1;)V

    :goto_0
    iput-object v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mWithSnackBarImpl:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$BottomNavigationWithSnackbar;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mScrollingEnabled:Z

    .line 34
    iput p1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mBottomNavHeight:I

    .line 35
    iput p2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mDefaultOffset:I

    .line 36
    iput-boolean p3, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->isShy:Z

    .line 37
    iput-boolean p4, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->isTablet:Z

    .line 38
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;

    invoke-direct {v0, p0, v2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$PreLollipopBottomNavWithSnackBarImpl;-><init>(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$1;)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->isTablet:Z

    return v0
.end method

.method static synthetic access$300(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->isShy:Z

    return v0
.end method

.method static synthetic access$400(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    .prologue
    .line 20
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mSnackbarHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;I)I
    .locals 0
    .param p0, "x0"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mSnackbarHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    .prologue
    .line 20
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mBottomNavHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    .prologue
    .line 20
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mDefaultOffset:I

    return v0
.end method

.method private animateOffset(Landroid/view/View;I)V
    .locals 2
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->ensureOrCancelAnimator(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mTranslationAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 93
    return-void
.end method

.method private ensureOrCancelAnimator(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mTranslationAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-nez v0, :cond_0

    .line 97
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mTranslationAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 98
    iget-object v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mTranslationAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 99
    iget-object v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mTranslationAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    sget-object v1, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mTranslationAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    goto :goto_0
.end method

.method public static from(Landroid/view/View;)Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 118
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-nez v2, :cond_0

    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not a child of CoordinatorLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 122
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 123
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v2, v0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    if-nez v2, :cond_1

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not associated with BottomNavigationBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_1
    check-cast v0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;

    .end local v0    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    return-object v0
.end method

.method private handleDirection(Landroid/view/View;I)V
    .locals 2
    .param p2, "scrollDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    const/4 v1, 0x1

    .line 74
    iget-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mScrollingEnabled:Z

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->hidden:Z

    if-eqz v0, :cond_2

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->hidden:Z

    .line 77
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mDefaultOffset:I

    invoke-direct {p0, p1, v0}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->animateOffset(Landroid/view/View;I)V

    goto :goto_0

    .line 78
    :cond_2
    if-ne p2, v1, :cond_0

    iget-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->hidden:Z

    if-nez v0, :cond_0

    .line 79
    iput-boolean v1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->hidden:Z

    .line 80
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mBottomNavHeight:I

    iget v1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mDefaultOffset:I

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->animateOffset(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private updateScrollingForSnackbar(Landroid/view/View;Z)V
    .locals 1
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 57
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->isTablet:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    .line 58
    iput-boolean p2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mScrollingEnabled:Z

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mWithSnackBarImpl:Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$BottomNavigationWithSnackbar;

    invoke-interface {v0, p1, p3, p2}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior$BottomNavigationWithSnackbar;->updateSnackbar(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 43
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->updateScrollingForSnackbar(Landroid/view/View;Z)V

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->updateScrollingForSnackbar(Landroid/view/View;Z)V

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/roughike/bottombar/scrollsweetness/VerticalScrollingBehavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public onDirectionNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "scrollDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-direct {p0, p2, p7}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->handleDirection(Landroid/view/View;I)V

    .line 71
    return-void
.end method

.method protected onNestedDirectionFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFI)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "scrollDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFI)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-direct {p0, p2, p6}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->handleDirection(Landroid/view/View;I)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onNestedVerticalOverScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)V
    .locals 0
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "direction"    # I
    .param p4, "currentOverScroll"    # I
    .param p5, "totalOverScroll"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public setHidden(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bottomLayoutHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;, "Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->hidden:Z

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mDefaultOffset:I

    invoke-direct {p0, p1, v0}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->animateOffset(Landroid/view/View;I)V

    .line 112
    :cond_0
    :goto_0
    iput-boolean p2, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->hidden:Z

    .line 113
    return-void

    .line 109
    :cond_1
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->hidden:Z

    if-nez v0, :cond_0

    .line 110
    iget v0, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mBottomNavHeight:I

    iget v1, p0, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->mDefaultOffset:I

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/roughike/bottombar/scrollsweetness/BottomNavigationBehavior;->animateOffset(Landroid/view/View;I)V

    goto :goto_0
.end method
