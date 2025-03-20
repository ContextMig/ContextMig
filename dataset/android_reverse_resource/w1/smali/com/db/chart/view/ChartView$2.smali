.class Lcom/db/chart/view/ChartView$2;
.super Ljava/lang/Object;
.source "ChartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/db/chart/view/ChartView;->dismiss(Lcom/db/chart/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/db/chart/view/ChartView;

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/db/chart/view/ChartView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/db/chart/view/ChartView$2;->this$0:Lcom/db/chart/view/ChartView;

    iput-object p2, p0, Lcom/db/chart/view/ChartView$2;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/db/chart/view/ChartView$2;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/db/chart/view/ChartView$2;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView$2;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 473
    iget-object v0, p0, Lcom/db/chart/view/ChartView$2;->this$0:Lcom/db/chart/view/ChartView;

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->invalidate()V

    .line 474
    return-void
.end method
