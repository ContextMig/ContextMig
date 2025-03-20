.class Lcom/db/chart/view/ChartView$3;
.super Ljava/lang/Object;
.source "ChartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/db/chart/view/ChartView;->dismissTooltip(Lcom/db/chart/view/Tooltip;Landroid/graphics/Rect;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/db/chart/view/ChartView;

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$tooltip:Lcom/db/chart/view/Tooltip;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/db/chart/view/ChartView;Lcom/db/chart/view/Tooltip;Landroid/graphics/Rect;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/db/chart/view/ChartView$3;->this$0:Lcom/db/chart/view/ChartView;

    iput-object p2, p0, Lcom/db/chart/view/ChartView$3;->val$tooltip:Lcom/db/chart/view/Tooltip;

    iput-object p3, p0, Lcom/db/chart/view/ChartView$3;->val$rect:Landroid/graphics/Rect;

    iput p4, p0, Lcom/db/chart/view/ChartView$3;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/db/chart/view/ChartView$3;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$3;->val$tooltip:Lcom/db/chart/view/Tooltip;

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$1600(Lcom/db/chart/view/ChartView;Lcom/db/chart/view/Tooltip;)V

    .line 662
    iget-object v0, p0, Lcom/db/chart/view/ChartView$3;->val$rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/db/chart/view/ChartView$3;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$3;->val$rect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/db/chart/view/ChartView$3;->val$value:F

    invoke-static {v0, v1, v2}, Lcom/db/chart/view/ChartView;->access$1700(Lcom/db/chart/view/ChartView;Landroid/graphics/Rect;F)V

    .line 664
    :cond_0
    return-void
.end method
