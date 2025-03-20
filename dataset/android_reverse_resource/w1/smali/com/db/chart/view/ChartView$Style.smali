.class Lcom/db/chart/view/ChartView$Style;
.super Ljava/lang/Object;
.source "ChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/chart/view/ChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Style"
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000


# instance fields
.field axisColor:I

.field axisThickness:F

.field chartPaint:Landroid/graphics/Paint;

.field fontSize:F

.field gridPaint:Landroid/graphics/Paint;

.field labelsColor:I

.field labelsPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/db/chart/view/ChartView;

.field thresholdPaint:Landroid/graphics/Paint;

.field typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lcom/db/chart/view/ChartView;)V
    .locals 3
    .param p1, "this$0"    # Lcom/db/chart/view/ChartView;

    .prologue
    const/high16 v2, -0x1000000

    .line 1603
    iput-object p1, p0, Lcom/db/chart/view/ChartView$Style;->this$0:Lcom/db/chart/view/ChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1605
    iput v2, p0, Lcom/db/chart/view/ChartView$Style;->axisColor:I

    .line 1606
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/db/williamchart/R$dimen;->grid_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    .line 1608
    iput v2, p0, Lcom/db/chart/view/ChartView$Style;->labelsColor:I

    .line 1609
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/db/williamchart/R$dimen;->font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/db/chart/view/ChartView$Style;->fontSize:F

    .line 1610
    return-void
.end method

.method constructor <init>(Lcom/db/chart/view/ChartView;Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "this$0"    # Lcom/db/chart/view/ChartView;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/high16 v4, -0x1000000

    .line 1613
    iput-object p1, p0, Lcom/db/chart/view/ChartView$Style;->this$0:Lcom/db/chart/view/ChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    sget v1, Lcom/db/williamchart/R$styleable;->ChartAttrs_chart_axisColor:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/db/chart/view/ChartView$Style;->axisColor:I

    .line 1618
    sget v1, Lcom/db/williamchart/R$styleable;->ChartAttrs_chart_axisThickness:I

    .line 1620
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/db/williamchart/R$dimen;->axis_thickness:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 1618
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    .line 1622
    sget v1, Lcom/db/williamchart/R$styleable;->ChartAttrs_chart_labelColor:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/db/chart/view/ChartView$Style;->labelsColor:I

    .line 1624
    sget v1, Lcom/db/williamchart/R$styleable;->ChartAttrs_chart_fontSize:I

    .line 1626
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/db/williamchart/R$dimen;->font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 1624
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/db/chart/view/ChartView$Style;->fontSize:F

    .line 1628
    sget v1, Lcom/db/williamchart/R$styleable;->ChartAttrs_chart_typeface:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1629
    .local v0, "typefaceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p1}, Lcom/db/chart/view/ChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1631
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1630
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/db/chart/view/ChartView$Style;->typeface:Landroid/graphics/Typeface;

    .line 1632
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/db/chart/view/ChartView$Style;)V
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView$Style;

    .prologue
    .line 1578
    invoke-direct {p0}, Lcom/db/chart/view/ChartView$Style;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1637
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/ChartView$Style;->chartPaint:Landroid/graphics/Paint;

    .line 1638
    iget-object v0, p0, Lcom/db/chart/view/ChartView$Style;->chartPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/db/chart/view/ChartView$Style;->axisColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1639
    iget-object v0, p0, Lcom/db/chart/view/ChartView$Style;->chartPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1640
    iget-object v0, p0, Lcom/db/chart/view/ChartView$Style;->chartPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1641
    iget-object v0, p0, Lcom/db/chart/view/ChartView$Style;->chartPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1643
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    .line 1644
    iget-object v0, p0, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/db/chart/view/ChartView$Style;->labelsColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1645
    iget-object v0, p0, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1646
    iget-object v0, p0, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1647
    iget-object v0, p0, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/db/chart/view/ChartView$Style;->fontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1648
    iget-object v0, p0, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/db/chart/view/ChartView$Style;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1649
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1654
    iput-object v0, p0, Lcom/db/chart/view/ChartView$Style;->chartPaint:Landroid/graphics/Paint;

    .line 1655
    iput-object v0, p0, Lcom/db/chart/view/ChartView$Style;->labelsPaint:Landroid/graphics/Paint;

    .line 1656
    iput-object v0, p0, Lcom/db/chart/view/ChartView$Style;->gridPaint:Landroid/graphics/Paint;

    .line 1657
    iput-object v0, p0, Lcom/db/chart/view/ChartView$Style;->thresholdPaint:Landroid/graphics/Paint;

    .line 1658
    return-void
.end method
