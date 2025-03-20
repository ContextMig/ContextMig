.class public Lcom/db/chart/view/BaseBarChartView$Style;
.super Ljava/lang/Object;
.source "BaseBarChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/chart/view/BaseBarChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Style"
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000


# instance fields
.field barBackgroundPaint:Landroid/graphics/Paint;

.field barPaint:Landroid/graphics/Paint;

.field barSpacing:F

.field cornerRadius:F

.field hasBarBackground:Z

.field private mBarBackgroundColor:I

.field setSpacing:F

.field final synthetic this$0:Lcom/db/chart/view/BaseBarChartView;


# direct methods
.method constructor <init>(Lcom/db/chart/view/BaseBarChartView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/db/chart/view/BaseBarChartView;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/db/chart/view/BaseBarChartView$Style;->this$0:Lcom/db/chart/view/BaseBarChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->mBarBackgroundColor:I

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->hasBarBackground:Z

    .line 257
    invoke-virtual {p1}, Lcom/db/chart/view/BaseBarChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/db/williamchart/R$dimen;->bar_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->barSpacing:F

    .line 258
    invoke-virtual {p1}, Lcom/db/chart/view/BaseBarChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/db/williamchart/R$dimen;->set_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    .line 259
    return-void
.end method

.method constructor <init>(Lcom/db/chart/view/BaseBarChartView;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "this$0"    # Lcom/db/chart/view/BaseBarChartView;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/db/chart/view/BaseBarChartView$Style;->this$0:Lcom/db/chart/view/BaseBarChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->mBarBackgroundColor:I

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->hasBarBackground:Z

    .line 267
    sget v0, Lcom/db/williamchart/R$styleable;->BarChartAttrs_chart_barSpacing:I

    .line 268
    invoke-virtual {p1}, Lcom/db/chart/view/BaseBarChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/db/williamchart/R$dimen;->bar_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 267
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->barSpacing:F

    .line 269
    sget v0, Lcom/db/williamchart/R$styleable;->BarChartAttrs_chart_barSpacing:I

    .line 270
    invoke-virtual {p1}, Lcom/db/chart/view/BaseBarChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/db/williamchart/R$dimen;->set_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 269
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->setSpacing:F

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/db/chart/view/BaseBarChartView$Style;)V
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/BaseBarChartView$Style;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/db/chart/view/BaseBarChartView$Style;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/db/chart/view/BaseBarChartView$Style;)V
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/BaseBarChartView$Style;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/db/chart/view/BaseBarChartView$Style;->clean()V

    return-void
.end method

.method static synthetic access$200(Lcom/db/chart/view/BaseBarChartView$Style;)I
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/BaseBarChartView$Style;

    .prologue
    .line 227
    iget v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->mBarBackgroundColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/db/chart/view/BaseBarChartView$Style;I)I
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/BaseBarChartView$Style;
    .param p1, "x1"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/db/chart/view/BaseBarChartView$Style;->mBarBackgroundColor:I

    return p1
.end method

.method private clean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    .line 289
    iput-object v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->barBackgroundPaint:Landroid/graphics/Paint;

    .line 290
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    .line 278
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->barBackgroundPaint:Landroid/graphics/Paint;

    .line 281
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->barBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/db/chart/view/BaseBarChartView$Style;->mBarBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v0, p0, Lcom/db/chart/view/BaseBarChartView$Style;->barBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    return-void
.end method
