.class Lcom/db/chart/view/LineChartView$Style;
.super Ljava/lang/Object;
.source "LineChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/chart/view/LineChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Style"
.end annotation


# instance fields
.field private mDotsPaint:Landroid/graphics/Paint;

.field private mDotsStrokePaint:Landroid/graphics/Paint;

.field private mFillPaint:Landroid/graphics/Paint;

.field private mLinePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/db/chart/view/LineChartView;


# direct methods
.method constructor <init>(Lcom/db/chart/view/LineChartView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/db/chart/view/LineChartView;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/db/chart/view/LineChartView$Style;->this$0:Lcom/db/chart/view/LineChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/db/chart/view/LineChartView;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/db/chart/view/LineChartView;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/db/chart/view/LineChartView$Style;->this$0:Lcom/db/chart/view/LineChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/db/chart/view/LineChartView$Style;)V
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/LineChartView$Style;

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/db/chart/view/LineChartView$Style;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/db/chart/view/LineChartView$Style;)V
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/LineChartView$Style;

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/db/chart/view/LineChartView$Style;->clean()V

    return-void
.end method

.method static synthetic access$200(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/LineChartView$Style;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/LineChartView$Style;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mDotsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/LineChartView$Style;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mDotsStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$500(Lcom/db/chart/view/LineChartView$Style;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/LineChartView$Style;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mFillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private clean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mLinePaint:Landroid/graphics/Paint;

    .line 461
    iput-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mFillPaint:Landroid/graphics/Paint;

    .line 462
    iput-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mDotsPaint:Landroid/graphics/Paint;

    .line 463
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 439
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mDotsPaint:Landroid/graphics/Paint;

    .line 440
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mDotsPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 441
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mDotsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mDotsStrokePaint:Landroid/graphics/Paint;

    .line 445
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mDotsStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mDotsStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 448
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mLinePaint:Landroid/graphics/Paint;

    .line 449
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 452
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mFillPaint:Landroid/graphics/Paint;

    .line 453
    iget-object v0, p0, Lcom/db/chart/view/LineChartView$Style;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 454
    return-void
.end method
