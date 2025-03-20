.class public final Lcom/github/mikephil/charting/utils/ShapeRendererHandler;
.super Ljava/lang/Object;
.source "ShapeRendererHandler.java"


# instance fields
.field protected shapeRendererList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->initShapeRenderers()V

    .line 33
    return-void
.end method


# virtual methods
.method public getShapeRenderer(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;
    .locals 2
    .param p1, "shape"    # Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->shapeRendererList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/renderer/scatter/ShapeRenderer;

    return-object v0
.end method

.method protected initShapeRenderers()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->shapeRendererList:Ljava/util/HashMap;

    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->shapeRendererList:Ljava/util/HashMap;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;

    invoke-direct {v2}, Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->shapeRendererList:Ljava/util/HashMap;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/mikephil/charting/renderer/scatter/CircleShapeRenderer;

    invoke-direct {v2}, Lcom/github/mikephil/charting/renderer/scatter/CircleShapeRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->shapeRendererList:Ljava/util/HashMap;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->TRIANGLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;

    invoke-direct {v2}, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->shapeRendererList:Ljava/util/HashMap;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CROSS:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/mikephil/charting/renderer/scatter/CrossShapeRenderer;

    invoke-direct {v2}, Lcom/github/mikephil/charting/renderer/scatter/CrossShapeRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->shapeRendererList:Ljava/util/HashMap;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->X:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/mikephil/charting/renderer/scatter/XShapeRenderer;

    invoke-direct {v2}, Lcom/github/mikephil/charting/renderer/scatter/XShapeRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->shapeRendererList:Ljava/util/HashMap;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CHEVRON_UP:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/mikephil/charting/renderer/scatter/ChevronUpShapeRenderer;

    invoke-direct {v2}, Lcom/github/mikephil/charting/renderer/scatter/ChevronUpShapeRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ShapeRendererHandler;->shapeRendererList:Ljava/util/HashMap;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CHEVRON_DOWN:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/mikephil/charting/renderer/scatter/ChevronDownShapeRenderer;

    invoke-direct {v2}, Lcom/github/mikephil/charting/renderer/scatter/ChevronDownShapeRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
