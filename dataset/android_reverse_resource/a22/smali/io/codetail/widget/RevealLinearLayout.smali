.class public Lio/codetail/widget/RevealLinearLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lio/codetail/a/a;


# instance fields
.field private b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Rect;

.field private d:Lio/codetail/a/e;

.field private e:Z

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/codetail/widget/RevealLinearLayout;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/codetail/widget/RevealLinearLayout;->b:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(Lio/codetail/a/e;)V
    .locals 2

    invoke-virtual {p1}, Lio/codetail/a/e;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/codetail/widget/RevealLinearLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lio/codetail/widget/RevealLinearLayout;->d:Lio/codetail/a/e;

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    iget-boolean v0, p0, Lio/codetail/widget/RevealLinearLayout;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/codetail/widget/RevealLinearLayout;->d:Lio/codetail/a/e;

    invoke-virtual {v0}, Lio/codetail/a/e;->a()Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v0, p0, Lio/codetail/widget/RevealLinearLayout;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lio/codetail/widget/RevealLinearLayout;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lio/codetail/widget/RevealLinearLayout;->d:Lio/codetail/a/e;

    iget v2, v2, Lio/codetail/a/e;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lio/codetail/widget/RevealLinearLayout;->d:Lio/codetail/a/e;

    iget v3, v3, Lio/codetail/a/e;->b:I

    int-to-float v3, v3

    iget v4, p0, Lio/codetail/widget/RevealLinearLayout;->f:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lio/codetail/widget/RevealLinearLayout;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public getRevealRadius()F
    .locals 1

    iget v0, p0, Lio/codetail/widget/RevealLinearLayout;->f:F

    return v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/codetail/widget/RevealLinearLayout;->e:Z

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/codetail/widget/RevealLinearLayout;->e:Z

    iget-object v0, p0, Lio/codetail/widget/RevealLinearLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lio/codetail/widget/RevealLinearLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setRevealRadius(F)V
    .locals 1

    iput p1, p0, Lio/codetail/widget/RevealLinearLayout;->f:F

    iget-object v0, p0, Lio/codetail/widget/RevealLinearLayout;->c:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lio/codetail/widget/RevealLinearLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
