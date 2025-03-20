.class Lcom/db/chart/view/animation/Animation$1;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/chart/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/db/chart/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/db/chart/view/animation/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/db/chart/view/animation/Animation;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/db/chart/view/animation/Animation$1;->this$0:Lcom/db/chart/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation$1;->this$0:Lcom/db/chart/view/animation/Animation;

    invoke-static {v0}, Lcom/db/chart/view/animation/Animation;->access$000(Lcom/db/chart/view/animation/Animation;)Lcom/db/chart/view/ChartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->canIPleaseAskYouToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation$1;->this$0:Lcom/db/chart/view/animation/Animation;

    invoke-static {v0}, Lcom/db/chart/view/animation/Animation;->access$000(Lcom/db/chart/view/animation/Animation;)Lcom/db/chart/view/ChartView;

    move-result-object v0

    iget-object v1, p0, Lcom/db/chart/view/animation/Animation$1;->this$0:Lcom/db/chart/view/animation/Animation;

    iget-object v2, p0, Lcom/db/chart/view/animation/Animation$1;->this$0:Lcom/db/chart/view/animation/Animation;

    invoke-static {v2}, Lcom/db/chart/view/animation/Animation;->access$000(Lcom/db/chart/view/animation/Animation;)Lcom/db/chart/view/ChartView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/db/chart/view/ChartView;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/db/chart/view/animation/Animation;->access$100(Lcom/db/chart/view/animation/Animation;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/chart/view/ChartView;->addData(Ljava/util/ArrayList;)V

    .line 94
    iget-object v0, p0, Lcom/db/chart/view/animation/Animation$1;->this$0:Lcom/db/chart/view/animation/Animation;

    invoke-static {v0}, Lcom/db/chart/view/animation/Animation;->access$000(Lcom/db/chart/view/animation/Animation;)Lcom/db/chart/view/ChartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->postInvalidate()V

    .line 96
    :cond_0
    return-void
.end method
