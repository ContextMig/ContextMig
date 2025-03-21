.class public Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;
.super Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;
.source "AnimatedMoveViewJob.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static pool:Lcom/github/mikephil/charting/utils/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/utils/ObjectPool",
            "<",
            "Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    const/4 v10, 0x4

    new-instance v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    const-wide/16 v8, 0x0

    move v3, v2

    move-object v4, v1

    move-object v5, v1

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v9}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)V

    invoke-static {v10, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 22
    sget-object v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->setReplenishPercentage(F)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)V
    .locals 0
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "xValue"    # F
    .param p3, "yValue"    # F
    .param p4, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p5, "v"    # Landroid/view/View;
    .param p6, "xOrigin"    # F
    .param p7, "yOrigin"    # F
    .param p8, "duration"    # J

    .prologue
    .line 45
    invoke-direct/range {p0 .. p9}, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)V

    .line 46
    return-void
.end method

.method public static getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;
    .locals 3
    .param p0, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p4, "v"    # Landroid/view/View;
    .param p5, "xOrigin"    # F
    .param p6, "yOrigin"    # F
    .param p7, "duration"    # J

    .prologue
    .line 26
    sget-object v1, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    .line 27
    .local v0, "result":Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;
    iput-object p0, v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 28
    iput p1, v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->xValue:F

    .line 29
    iput p2, v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->yValue:F

    .line 30
    iput-object p3, v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 31
    iput-object p4, v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->view:Landroid/view/View;

    .line 32
    iput p5, v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->xOrigin:F

    .line 33
    iput p6, v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->yOrigin:F

    .line 34
    invoke-virtual {v0}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->resetAnimator()V

    .line 35
    iget-object v1, v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p7, p8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 36
    return-object v0
.end method

.method public static recycleInstance(Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;)V
    .locals 1
    .param p0, "instance"    # Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    .prologue
    .line 40
    sget-object v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    const-wide/16 v8, 0x0

    move v3, v2

    move-object v4, v1

    move-object v5, v1

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v9}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)V

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->pts:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->xOrigin:F

    iget v3, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->xValue:F

    iget v4, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->xOrigin:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->phase:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->pts:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->yOrigin:F

    iget v3, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->yValue:F

    iget v4, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->yOrigin:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->phase:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->pts:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 55
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->pts:[F

    iget-object v2, p0, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->centerViewPort([FLandroid/view/View;)V

    .line 56
    return-void
.end method

.method public recycleSelf()V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->recycleInstance(Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;)V

    .line 60
    return-void
.end method
