.class Lcom/jjoe64/graphview/GraphView$TapDetector;
.super Ljava/lang/Object;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapDetector"
.end annotation


# instance fields
.field private lastDown:J

.field private lastPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/jjoe64/graphview/GraphView;


# direct methods
.method private constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jjoe64/graphview/GraphView$TapDetector;->this$0:Lcom/jjoe64/graphview/GraphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jjoe64/graphview/GraphView;Lcom/jjoe64/graphview/GraphView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jjoe64/graphview/GraphView;
    .param p2, "x1"    # Lcom/jjoe64/graphview/GraphView$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/GraphView$TapDetector;-><init>(Lcom/jjoe64/graphview/GraphView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/high16 v4, 0x42700000    # 60.0f

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastDown:J

    .line 93
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastPoint:Landroid/graphics/PointF;

    .line 104
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 94
    :cond_1
    iget-wide v2, p0, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastDown:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 97
    :cond_2
    iput-wide v6, p0, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastDown:J

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jjoe64/graphview/GraphView$TapDetector;->lastDown:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    goto :goto_1
.end method
