.class Lcom/db/chart/view/ChartView$1;
.super Ljava/lang/Object;
.source "ChartView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/chart/view/ChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/db/chart/view/ChartView;


# direct methods
.method constructor <init>(Lcom/db/chart/view/ChartView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 160
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/ChartView$Style;->access$000(Lcom/db/chart/view/ChartView$Style;)V

    .line 163
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-virtual {v1}, Lcom/db/chart/view/ChartView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v2, v2, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v2}, Lcom/db/chart/view/YController;->getLabelsMaxHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$102(Lcom/db/chart/view/ChartView;I)I

    .line 164
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-virtual {v1}, Lcom/db/chart/view/ChartView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-virtual {v2}, Lcom/db/chart/view/ChartView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$202(Lcom/db/chart/view/ChartView;I)I

    .line 165
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-virtual {v1}, Lcom/db/chart/view/ChartView;->getPaddingLeft()I

    move-result v1

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$302(Lcom/db/chart/view/ChartView;I)I

    .line 166
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-virtual {v1}, Lcom/db/chart/view/ChartView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-virtual {v2}, Lcom/db/chart/view/ChartView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$402(Lcom/db/chart/view/ChartView;I)I

    .line 168
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v1}, Lcom/db/chart/view/ChartView;->access$100(Lcom/db/chart/view/ChartView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$502(Lcom/db/chart/view/ChartView;F)F

    .line 169
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v1}, Lcom/db/chart/view/ChartView;->access$200(Lcom/db/chart/view/ChartView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$602(Lcom/db/chart/view/ChartView;F)F

    .line 170
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v1}, Lcom/db/chart/view/ChartView;->access$300(Lcom/db/chart/view/ChartView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$702(Lcom/db/chart/view/ChartView;F)F

    .line 171
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v1}, Lcom/db/chart/view/ChartView;->access$400(Lcom/db/chart/view/ChartView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$802(Lcom/db/chart/view/ChartView;F)F

    .line 174
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v0}, Lcom/db/chart/view/YController;->init()V

    .line 175
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    invoke-virtual {v0}, Lcom/db/chart/view/XController;->init()V

    .line 178
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v0}, Lcom/db/chart/view/YController;->measure()V

    .line 179
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    invoke-virtual {v0}, Lcom/db/chart/view/XController;->measure()V

    .line 182
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v0}, Lcom/db/chart/view/YController;->dispose()V

    .line 183
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v0, v0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    invoke-virtual {v0}, Lcom/db/chart/view/XController;->dispose()V

    .line 185
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v0}, Lcom/db/chart/view/ChartView;->access$900(Lcom/db/chart/view/ChartView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, v1, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iget-object v2, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v2}, Lcom/db/chart/view/ChartView;->access$1000(Lcom/db/chart/view/ChartView;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/db/chart/view/YController;->parsePos(ID)F

    move-result v1

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$1002(Lcom/db/chart/view/ChartView;F)F

    .line 187
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, v1, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iget-object v2, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v2}, Lcom/db/chart/view/ChartView;->access$1100(Lcom/db/chart/view/ChartView;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/db/chart/view/YController;->parsePos(ID)F

    move-result v1

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$1102(Lcom/db/chart/view/ChartView;F)F

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v0}, Lcom/db/chart/view/ChartView;->access$1200(Lcom/db/chart/view/ChartView;)V

    .line 194
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, v1, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/db/chart/view/ChartView;->onPreDrawChart(Ljava/util/ArrayList;)V

    .line 197
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v2, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v2, v2, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/db/chart/view/ChartView;->defineRegions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/db/chart/view/ChartView;->access$1302(Lcom/db/chart/view/ChartView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 201
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v0}, Lcom/db/chart/view/ChartView;->access$1400(Lcom/db/chart/view/ChartView;)Lcom/db/chart/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v1}, Lcom/db/chart/view/ChartView;->access$1400(Lcom/db/chart/view/ChartView;)Lcom/db/chart/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-virtual {v1, v2}, Lcom/db/chart/view/animation/Animation;->prepareEnterAnimation(Lcom/db/chart/view/ChartView;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    .line 204
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/db/chart/view/ChartView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/db/chart/view/ChartView$1;->this$0:Lcom/db/chart/view/ChartView;

    invoke-static {v0, v5}, Lcom/db/chart/view/ChartView;->access$1502(Lcom/db/chart/view/ChartView;Z)Z

    move-result v0

    return v0
.end method
