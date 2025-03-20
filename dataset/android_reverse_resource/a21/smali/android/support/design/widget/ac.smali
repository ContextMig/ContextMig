.class abstract Landroid/support/design/widget/ac;
.super Landroid/view/animation/Animation;


# instance fields
.field final synthetic a:Landroid/support/design/widget/z;

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>(Landroid/support/design/widget/z;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ac;->a:Landroid/support/design/widget/z;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/z;Landroid/support/design/widget/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/ac;-><init>(Landroid/support/design/widget/z;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/ac;->a:Landroid/support/design/widget/z;

    iget-object v0, v0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    iget v1, p0, Landroid/support/design/widget/ac;->b:F

    iget v2, p0, Landroid/support/design/widget/ac;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ap;->a(F)V

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/design/widget/ac;->a:Landroid/support/design/widget/z;

    iget-object v0, v0, Landroid/support/design/widget/z;->a:Landroid/support/design/widget/ap;

    invoke-virtual {v0}, Landroid/support/design/widget/ap;->a()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ac;->b:F

    invoke-virtual {p0}, Landroid/support/design/widget/ac;->a()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/ac;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/ac;->c:F

    return-void
.end method
