.class Lcom/db/chart/view/animation/style/BaseStyleAnimation$1;
.super Ljava/lang/Object;
.source "BaseStyleAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/chart/view/animation/style/BaseStyleAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/db/chart/view/animation/style/BaseStyleAnimation;


# direct methods
.method constructor <init>(Lcom/db/chart/view/animation/style/BaseStyleAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/db/chart/view/animation/style/BaseStyleAnimation;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation$1;->this$0:Lcom/db/chart/view/animation/style/BaseStyleAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation$1;->this$0:Lcom/db/chart/view/animation/style/BaseStyleAnimation;

    invoke-static {v0}, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->access$000(Lcom/db/chart/view/animation/style/BaseStyleAnimation;)Lcom/db/chart/view/ChartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->canIPleaseAskYouToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation$1;->this$0:Lcom/db/chart/view/animation/style/BaseStyleAnimation;

    invoke-static {v0}, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->access$000(Lcom/db/chart/view/animation/style/BaseStyleAnimation;)Lcom/db/chart/view/ChartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->postInvalidate()V

    .line 36
    iget-object v0, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation$1;->this$0:Lcom/db/chart/view/animation/style/BaseStyleAnimation;

    iget-object v1, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation$1;->this$0:Lcom/db/chart/view/animation/style/BaseStyleAnimation;

    invoke-static {v1}, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->access$100(Lcom/db/chart/view/animation/style/BaseStyleAnimation;)Lcom/db/chart/model/ChartSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->access$200(Lcom/db/chart/view/animation/style/BaseStyleAnimation;Lcom/db/chart/model/ChartSet;)V

    .line 38
    :cond_0
    return-void
.end method
