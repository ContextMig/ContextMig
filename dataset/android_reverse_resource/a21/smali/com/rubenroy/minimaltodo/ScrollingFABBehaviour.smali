.class public Lcom/rubenroy/minimaltodo/ScrollingFABBehaviour;
.super Landroid/support/design/widget/o;


# static fields
.field private static b:Z

.field private static c:Z


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubenroy/minimaltodo/ScrollingFABBehaviour;->b:Z

    sput-boolean v0, Lcom/rubenroy/minimaltodo/ScrollingFABBehaviour;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/rubenroy/minimaltodo/y;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/rubenroy/minimaltodo/ScrollingFABBehaviour;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-nez v0, :cond_0

    instance-of v0, p3, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 3

    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    :cond_0
    instance-of v0, p3, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/r;

    iget v0, v0, Landroid/support/design/widget/r;->bottomMargin:I

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    iget v2, p0, Lcom/rubenroy/minimaltodo/ScrollingFABBehaviour;->a:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rubenroy/minimaltodo/ScrollingFABBehaviour;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public synthetic c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/rubenroy/minimaltodo/ScrollingFABBehaviour;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
