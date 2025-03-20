.class public abstract Lcom/db/chart/view/ChartView;
.super Landroid/widget/RelativeLayout;
.source "ChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/db/chart/view/ChartView$Style;,
        Lcom/db/chart/view/ChartView$Orientation;,
        Lcom/db/chart/view/ChartView$GridType;
    }
.end annotation


# static fields
.field private static final DEFAULT_GRID_COLUMNS:I = 0x5

.field private static final DEFAULT_GRID_ROWS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "chart.view.ChartView"


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;"
        }
    .end annotation
.end field

.field private final drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final horController:Lcom/db/chart/view/XController;

.field private mAnim:Lcom/db/chart/view/animation/Animation;

.field private mChartBottom:I

.field private mChartLeft:I

.field private mChartListener:Landroid/view/View$OnClickListener;

.field private mChartRight:I

.field private mChartTop:I

.field private mEntryListener:Lcom/db/chart/listener/OnEntryClickListener;

.field private mGridNColumns:I

.field private mGridNRows:I

.field private mGridType:Lcom/db/chart/view/ChartView$GridType;

.field private mHasThresholdLabel:Z

.field private mHasThresholdValue:Z

.field private mIndexClicked:I

.field private mInnerChartBottom:F

.field private mInnerChartLeft:F

.field private mInnerChartRight:F

.field private mInnerChartTop:F

.field private mIsDrawing:Z

.field private mOrientation:Lcom/db/chart/view/ChartView$Orientation;

.field private mReadyToDraw:Z

.field private mRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Region;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSetClicked:I

.field private mThresholdEndLabel:I

.field private mThresholdEndValue:F

.field private mThresholdStartLabel:I

.field private mThresholdStartValue:F

.field private mTooltip:Lcom/db/chart/view/Tooltip;

.field final style:Lcom/db/chart/view/ChartView$Style;

.field final verController:Lcom/db/chart/view/YController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v0, Lcom/db/chart/view/ChartView$1;

    invoke-direct {v0, p0}, Lcom/db/chart/view/ChartView$1;-><init>(Lcom/db/chart/view/ChartView;)V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 234
    new-instance v0, Lcom/db/chart/view/XController;

    invoke-direct {v0, p0}, Lcom/db/chart/view/XController;-><init>(Lcom/db/chart/view/ChartView;)V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    .line 235
    new-instance v0, Lcom/db/chart/view/YController;

    invoke-direct {v0, p0}, Lcom/db/chart/view/YController;-><init>(Lcom/db/chart/view/ChartView;)V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    .line 237
    new-instance v0, Lcom/db/chart/view/ChartView$Style;

    invoke-direct {v0, p0}, Lcom/db/chart/view/ChartView$Style;-><init>(Lcom/db/chart/view/ChartView;)V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    .line 239
    invoke-direct {p0}, Lcom/db/chart/view/ChartView;->init()V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    new-instance v0, Lcom/db/chart/view/ChartView$1;

    invoke-direct {v0, p0}, Lcom/db/chart/view/ChartView$1;-><init>(Lcom/db/chart/view/ChartView;)V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 217
    new-instance v0, Lcom/db/chart/view/XController;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/db/williamchart/R$styleable;->ChartAttrs:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/db/chart/view/XController;-><init>(Lcom/db/chart/view/ChartView;Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    .line 220
    new-instance v0, Lcom/db/chart/view/YController;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/db/williamchart/R$styleable;->ChartAttrs:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/db/chart/view/YController;-><init>(Lcom/db/chart/view/ChartView;Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    .line 224
    new-instance v0, Lcom/db/chart/view/ChartView$Style;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/db/williamchart/R$styleable;->ChartAttrs:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/db/chart/view/ChartView$Style;-><init>(Lcom/db/chart/view/ChartView;Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    .line 227
    invoke-direct {p0}, Lcom/db/chart/view/ChartView;->init()V

    .line 228
    return-void
.end method

.method static synthetic access$100(Lcom/db/chart/view/ChartView;)I
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 54
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartTop:I

    return v0
.end method

.method static synthetic access$1000(Lcom/db/chart/view/ChartView;)F
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 54
    iget v0, p0, Lcom/db/chart/view/ChartView;->mThresholdStartValue:F

    return v0
.end method

.method static synthetic access$1002(Lcom/db/chart/view/ChartView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mThresholdStartValue:F

    return p1
.end method

.method static synthetic access$102(Lcom/db/chart/view/ChartView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mChartTop:I

    return p1
.end method

.method static synthetic access$1100(Lcom/db/chart/view/ChartView;)F
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 54
    iget v0, p0, Lcom/db/chart/view/ChartView;->mThresholdEndValue:F

    return v0
.end method

.method static synthetic access$1102(Lcom/db/chart/view/ChartView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mThresholdEndValue:F

    return p1
.end method

.method static synthetic access$1200(Lcom/db/chart/view/ChartView;)V
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/db/chart/view/ChartView;->digestData()V

    return-void
.end method

.method static synthetic access$1302(Lcom/db/chart/view/ChartView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/db/chart/view/ChartView;)Lcom/db/chart/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/db/chart/view/ChartView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/db/chart/view/ChartView;->mReadyToDraw:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/db/chart/view/ChartView;Lcom/db/chart/view/Tooltip;)V
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # Lcom/db/chart/view/Tooltip;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/db/chart/view/ChartView;->removeTooltip(Lcom/db/chart/view/Tooltip;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/db/chart/view/ChartView;Landroid/graphics/Rect;F)V
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/db/chart/view/ChartView;->toggleTooltip(Landroid/graphics/Rect;F)V

    return-void
.end method

.method static synthetic access$200(Lcom/db/chart/view/ChartView;)I
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 54
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartBottom:I

    return v0
.end method

.method static synthetic access$202(Lcom/db/chart/view/ChartView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mChartBottom:I

    return p1
.end method

.method static synthetic access$300(Lcom/db/chart/view/ChartView;)I
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 54
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartLeft:I

    return v0
.end method

.method static synthetic access$302(Lcom/db/chart/view/ChartView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mChartLeft:I

    return p1
.end method

.method static synthetic access$400(Lcom/db/chart/view/ChartView;)I
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 54
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartRight:I

    return v0
.end method

.method static synthetic access$402(Lcom/db/chart/view/ChartView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mChartRight:I

    return p1
.end method

.method static synthetic access$502(Lcom/db/chart/view/ChartView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mInnerChartTop:F

    return p1
.end method

.method static synthetic access$602(Lcom/db/chart/view/ChartView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mInnerChartBottom:F

    return p1
.end method

.method static synthetic access$702(Lcom/db/chart/view/ChartView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mInnerChartLeft:F

    return p1
.end method

.method static synthetic access$802(Lcom/db/chart/view/ChartView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;
    .param p1, "x1"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/db/chart/view/ChartView;->mInnerChartRight:F

    return p1
.end method

.method static synthetic access$900(Lcom/db/chart/view/ChartView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/ChartView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/db/chart/view/ChartView;->mHasThresholdValue:Z

    return v0
.end method

.method private addTooltip(Lcom/db/chart/view/Tooltip;)V
    .locals 1
    .param p1, "tip"    # Lcom/db/chart/view/Tooltip;

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lcom/db/chart/view/ChartView;->addView(Landroid/view/View;)V

    .line 624
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/db/chart/view/Tooltip;->setOn(Z)V

    .line 625
    return-void
.end method

.method private digestData()V
    .locals 10

    .prologue
    .line 315
    iget-object v3, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v3}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v1

    .line 316
    .local v1, "nEntries":I
    iget-object v3, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/db/chart/model/ChartSet;

    .line 317
    .local v2, "set":Lcom/db/chart/model/ChartSet;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 318
    invoke-virtual {v2, v0}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v4

    iget-object v5, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    .line 319
    invoke-virtual {v2, v0}, Lcom/db/chart/model/ChartSet;->getValue(I)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/db/chart/view/XController;->parsePos(ID)F

    move-result v5

    iget-object v6, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    .line 320
    invoke-virtual {v2, v0}, Lcom/db/chart/model/ChartSet;->getValue(I)F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v6, v0, v8, v9}, Lcom/db/chart/view/YController;->parsePos(ID)F

    move-result v6

    .line 319
    invoke-virtual {v4, v5, v6}, Lcom/db/chart/model/ChartEntry;->setCoordinates(FF)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "i":I
    .end local v2    # "set":Lcom/db/chart/model/ChartSet;
    :cond_1
    return-void
.end method

.method private dismissTooltip(Lcom/db/chart/view/Tooltip;)V
    .locals 2
    .param p1, "tooltip"    # Lcom/db/chart/view/Tooltip;

    .prologue
    .line 645
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/db/chart/view/ChartView;->dismissTooltip(Lcom/db/chart/view/Tooltip;Landroid/graphics/Rect;F)V

    .line 646
    return-void
.end method

.method private dismissTooltip(Lcom/db/chart/view/Tooltip;Landroid/graphics/Rect;F)V
    .locals 1
    .param p1, "tooltip"    # Lcom/db/chart/view/Tooltip;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "value"    # F

    .prologue
    .line 656
    invoke-virtual {p1}, Lcom/db/chart/view/Tooltip;->hasExitAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    new-instance v0, Lcom/db/chart/view/ChartView$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/db/chart/view/ChartView$3;-><init>(Lcom/db/chart/view/ChartView;Lcom/db/chart/view/Tooltip;Landroid/graphics/Rect;F)V

    invoke-virtual {p1, v0}, Lcom/db/chart/view/Tooltip;->animateExit(Ljava/lang/Runnable;)V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-direct {p0, p1}, Lcom/db/chart/view/ChartView;->removeTooltip(Lcom/db/chart/view/Tooltip;)V

    .line 668
    if-eqz p2, :cond_0

    .line 669
    invoke-direct {p0, p2, p3}, Lcom/db/chart/view/ChartView;->toggleTooltip(Landroid/graphics/Rect;F)V

    goto :goto_0
.end method

.method private display()V
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/db/chart/view/ChartView;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 401
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->postInvalidate()V

    .line 402
    return-void
.end method

.method private drawHorizontalGrid(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartTop()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/db/chart/view/ChartView;->mGridNRows:I

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 821
    .local v9, "offset":F
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartTop()F

    move-result v2

    .line 822
    .local v2, "marker":F
    :goto_0
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartRight()F

    move-result v3

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v5, v0, Lcom/db/chart/view/ChartView$Style;->gridPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 824
    add-float/2addr v2, v9

    goto :goto_0

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iget-boolean v0, v0, Lcom/db/chart/view/XController;->hasAxis:Z

    if-nez v0, :cond_1

    .line 828
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v4

    .line 829
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v5

    .line 830
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartRight()F

    move-result v6

    .line 831
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v7

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v8, v0, Lcom/db/chart/view/ChartView$Style;->gridPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 828
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 833
    :cond_1
    return-void
.end method

.method private drawThreshold(Landroid/graphics/Canvas;FFFF)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 778
    cmpl-float v0, p2, p4

    if-eqz v0, :cond_0

    cmpl-float v0, p3, p5

    if-nez v0, :cond_1

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v5, v0, Lcom/db/chart/view/ChartView$Style;->thresholdPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 782
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v5, v0, Lcom/db/chart/view/ChartView$Style;->thresholdPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawVerticalGrid(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/db/chart/view/ChartView;->mGridNColumns:I

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 794
    .local v8, "offset":F
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v1

    .line 796
    .local v1, "marker":F
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iget-boolean v0, v0, Lcom/db/chart/view/YController;->hasAxis:Z

    if-eqz v0, :cond_0

    .line 797
    add-float/2addr v1, v8

    .line 799
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartRight()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 800
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v4

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v5, v0, Lcom/db/chart/view/ChartView$Style;->gridPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 801
    add-float/2addr v1, v8

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartRight()F

    move-result v3

    .line 805
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartTop()F

    move-result v4

    .line 806
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartRight()F

    move-result v5

    .line 807
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v6

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iget-object v7, v0, Lcom/db/chart/view/ChartView$Style;->gridPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 804
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 809
    return-void
.end method

.method private getEntryRect(Landroid/graphics/Region;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 1058
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1059
    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1060
    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1061
    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/db/chart/view/ChartView;->mReadyToDraw:Z

    .line 248
    iput v1, p0, Lcom/db/chart/view/ChartView;->mSetClicked:I

    .line 249
    iput v1, p0, Lcom/db/chart/view/ChartView;->mIndexClicked:I

    .line 250
    iput-boolean v0, p0, Lcom/db/chart/view/ChartView;->mHasThresholdValue:Z

    .line 251
    iput-boolean v0, p0, Lcom/db/chart/view/ChartView;->mHasThresholdLabel:Z

    .line 252
    iput-boolean v0, p0, Lcom/db/chart/view/ChartView;->mIsDrawing:Z

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    .line 255
    sget-object v0, Lcom/db/chart/view/ChartView$GridType;->NONE:Lcom/db/chart/view/ChartView$GridType;

    iput-object v0, p0, Lcom/db/chart/view/ChartView;->mGridType:Lcom/db/chart/view/ChartView$GridType;

    .line 256
    iput v2, p0, Lcom/db/chart/view/ChartView;->mGridNRows:I

    .line 257
    iput v2, p0, Lcom/db/chart/view/ChartView;->mGridNColumns:I

    .line 258
    return-void
.end method

.method private removeTooltip(Lcom/db/chart/view/Tooltip;)V
    .locals 1
    .param p1, "tip"    # Lcom/db/chart/view/Tooltip;

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lcom/db/chart/view/ChartView;->removeView(Landroid/view/View;)V

    .line 635
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/db/chart/view/Tooltip;->setOn(Z)V

    .line 636
    return-void
.end method

.method private toggleTooltip(Landroid/graphics/Rect;F)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "value"    # F

    .prologue
    .line 580
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    invoke-virtual {v0}, Lcom/db/chart/view/Tooltip;->on()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    invoke-virtual {v0, p1, p2}, Lcom/db/chart/view/Tooltip;->prepare(Landroid/graphics/Rect;F)V

    .line 582
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/db/chart/view/ChartView;->showTooltip(Lcom/db/chart/view/Tooltip;Z)V

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    invoke-direct {p0, v0, p1, p2}, Lcom/db/chart/view/ChartView;->dismissTooltip(Lcom/db/chart/view/Tooltip;Landroid/graphics/Rect;F)V

    goto :goto_0
.end method


# virtual methods
.method public addData(Lcom/db/chart/model/ChartSet;)V
    .locals 3
    .param p1, "set"    # Lcom/db/chart/model/ChartSet;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v1

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 375
    const-string v0, "chart.view.ChartView"

    const-string v1, "The number of entries between sets doesn\'t match."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    :cond_0
    if-nez p1, :cond_1

    .line 378
    const-string v0, "chart.view.ChartView"

    const-string v1, "Chart data set can\'t be null"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method

.method public addData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    .line 392
    return-void
.end method

.method public animateSet(ILcom/db/chart/view/animation/style/BaseStyleAnimation;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "anim"    # Lcom/db/chart/view/animation/style/BaseStyleAnimation;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {p2, p0, v0}, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->play(Lcom/db/chart/view/ChartView;Lcom/db/chart/model/ChartSet;)V

    .line 696
    return-void
.end method

.method protected applyShadow(Landroid/graphics/Paint;FLcom/db/chart/model/ChartEntry;)V
    .locals 8
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "alpha"    # F
    .param p3, "entry"    # Lcom/db/chart/model/ChartEntry;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    .line 1557
    invoke-virtual {p3}, Lcom/db/chart/model/ChartEntry;->getShadowRadius()F

    move-result v1

    invoke-virtual {p3}, Lcom/db/chart/model/ChartEntry;->getShadowDx()F

    move-result v2

    invoke-virtual {p3}, Lcom/db/chart/model/ChartEntry;->getShadowDy()F

    move-result v3

    mul-float v0, p2, v5

    float-to-int v0, v0

    .line 1558
    invoke-virtual {p3}, Lcom/db/chart/model/ChartEntry;->getShadowColor()[I

    move-result-object v4

    aget v4, v4, v6

    if-ge v0, v4, :cond_0

    mul-float v0, p2, v5

    float-to-int v0, v0

    .line 1561
    :goto_0
    invoke-virtual {p3}, Lcom/db/chart/model/ChartEntry;->getShadowColor()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 1562
    invoke-virtual {p3}, Lcom/db/chart/model/ChartEntry;->getShadowColor()[I

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    .line 1563
    invoke-virtual {p3}, Lcom/db/chart/model/ChartEntry;->getShadowColor()[I

    move-result-object v6

    const/4 v7, 0x3

    aget v6, v6, v7

    .line 1558
    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1557
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1564
    return-void

    .line 1560
    :cond_0
    invoke-virtual {p3}, Lcom/db/chart/model/ChartEntry;->getShadowColor()[I

    move-result-object v0

    aget v0, v0, v6

    goto :goto_0
.end method

.method public canIPleaseAskYouToDraw()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/db/chart/view/ChartView;->mIsDrawing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method defineRegions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Region;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/db/chart/view/ChartView;->dismiss(Lcom/db/chart/view/animation/Animation;)V

    .line 443
    return-void
.end method

.method public dismiss(I)V
    .locals 2
    .param p1, "setIndex"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/chart/model/ChartSet;->setVisible(Z)V

    .line 453
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->invalidate()V

    .line 454
    return-void
.end method

.method public dismiss(Lcom/db/chart/view/animation/Animation;)V
    .locals 3
    .param p1, "anim"    # Lcom/db/chart/view/animation/Animation;

    .prologue
    .line 463
    if-eqz p1, :cond_0

    .line 464
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    .line 466
    iget-object v1, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    invoke-virtual {v1}, Lcom/db/chart/view/animation/Animation;->getEndAction()Ljava/lang/Runnable;

    move-result-object v0

    .line 467
    .local v0, "endAction":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    new-instance v2, Lcom/db/chart/view/ChartView$2;

    invoke-direct {v2, p0, v0}, Lcom/db/chart/view/ChartView$2;-><init>(Lcom/db/chart/view/ChartView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/db/chart/view/animation/Animation;->setEndAction(Ljava/lang/Runnable;)Lcom/db/chart/view/animation/Animation;

    .line 477
    iget-object v1, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    invoke-virtual {v1, p0}, Lcom/db/chart/view/animation/Animation;->prepareExitAnimation(Lcom/db/chart/view/ChartView;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    .line 481
    .end local v0    # "endAction":Ljava/lang/Runnable;
    :goto_0
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->invalidate()V

    .line 482
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public dismissAllTooltips()V
    .locals 2

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->removeAllViews()V

    .line 682
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/chart/view/Tooltip;->setOn(Z)V

    .line 684
    :cond_0
    return-void
.end method

.method getBorderSpacing()F
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iget v0, v0, Lcom/db/chart/view/XController;->borderSpacing:F

    .line 1017
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iget v0, v0, Lcom/db/chart/view/YController;->borderSpacing:F

    goto :goto_0
.end method

.method public getChartAnimation()Lcom/db/chart/view/animation/Animation;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    return-object v0
.end method

.method getChartBottom()I
    .locals 1

    .prologue
    .line 1095
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartBottom:I

    return v0
.end method

.method getChartLeft()I
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartLeft:I

    return v0
.end method

.method getChartRight()I
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartRight:I

    return v0
.end method

.method getChartTop()I
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartTop:I

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEntriesArea(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1042
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v2, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    .line 1043
    .local v0, "r":Landroid/graphics/Region;
    invoke-direct {p0, v0}, Lcom/db/chart/view/ChartView;->getEntryRect(Landroid/graphics/Region;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    .end local v0    # "r":Landroid/graphics/Region;
    :cond_0
    return-object v1
.end method

.method public getInnerChartBottom()F
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Lcom/db/chart/view/ChartView;->mInnerChartBottom:F

    return v0
.end method

.method public getInnerChartLeft()F
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lcom/db/chart/view/ChartView;->mInnerChartLeft:F

    return v0
.end method

.method public getInnerChartRight()F
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lcom/db/chart/view/ChartView;->mInnerChartRight:F

    return v0
.end method

.method public getInnerChartTop()F
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartTop:I

    int-to-float v0, v0

    return v0
.end method

.method public getOrientation()Lcom/db/chart/view/ChartView$Orientation;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    return-object v0
.end method

.method getStep()I
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iget v0, v0, Lcom/db/chart/view/YController;->step:I

    .line 1003
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iget v0, v0, Lcom/db/chart/view/XController;->step:I

    goto :goto_0
.end method

.method public getZeroPosition()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 985
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 986
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v0, v4, v2, v3}, Lcom/db/chart/view/YController;->parsePos(ID)F

    move-result v0

    .line 988
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    invoke-virtual {v0, v4, v2, v3}, Lcom/db/chart/view/XController;->parsePos(ID)F

    move-result v0

    goto :goto_0
.end method

.method public notifyDataUpdate()V
    .locals 5

    .prologue
    .line 535
    iget-object v3, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    invoke-virtual {v3}, Lcom/db/chart/view/animation/Animation;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/db/chart/view/ChartView;->mReadyToDraw:Z

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/db/chart/view/ChartView;->mReadyToDraw:Z

    if-eqz v3, :cond_5

    .line 538
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 539
    .local v1, "oldCoords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    .local v0, "newCoords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    iget-object v3, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/db/chart/model/ChartSet;

    .line 542
    .local v2, "set":Lcom/db/chart/model/ChartSet;
    invoke-virtual {v2}, Lcom/db/chart/model/ChartSet;->getScreenPoints()[[F

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    .end local v2    # "set":Lcom/db/chart/model/ChartSet;
    :cond_2
    invoke-direct {p0}, Lcom/db/chart/view/ChartView;->digestData()V

    .line 545
    iget-object v3, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/db/chart/model/ChartSet;

    .line 546
    .restart local v2    # "set":Lcom/db/chart/model/ChartSet;
    invoke-virtual {v2}, Lcom/db/chart/model/ChartSet;->getScreenPoints()[[F

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 548
    .end local v2    # "set":Lcom/db/chart/model/ChartSet;
    :cond_3
    iget-object v3, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/db/chart/view/ChartView;->defineRegions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    .line 549
    iget-object v3, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    if-eqz v3, :cond_4

    .line 550
    iget-object v3, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    invoke-virtual {v3, p0, v1, v0}, Lcom/db/chart/view/animation/Animation;->prepareUpdateAnimation(Lcom/db/chart/view/ChartView;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    .line 552
    :cond_4
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->invalidate()V

    .line 559
    .end local v0    # "newCoords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    .end local v1    # "oldCoords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[[F>;"
    :goto_2
    return-void

    .line 555
    :cond_5
    const-string v3, "chart.view.ChartView"

    const-string v4, "Unexpected data update notification. Chart is still not displayed or still displaying."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/db/chart/view/ChartView;->setWillNotDraw(Z)V

    .line 268
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    invoke-static {v0}, Lcom/db/chart/view/ChartView$Style;->access$000(Lcom/db/chart/view/ChartView$Style;)V

    .line 269
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 276
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    invoke-virtual {v0}, Lcom/db/chart/view/ChartView$Style;->clean()V

    .line 277
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/view/ChartView;->mIsDrawing:Z

    .line 723
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 725
    iget-boolean v0, p0, Lcom/db/chart/view/ChartView;->mReadyToDraw:Z

    if-eqz v0, :cond_7

    .line 729
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mGridType:Lcom/db/chart/view/ChartView$GridType;

    sget-object v1, Lcom/db/chart/view/ChartView$GridType;->FULL:Lcom/db/chart/view/ChartView$GridType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mGridType:Lcom/db/chart/view/ChartView$GridType;

    sget-object v1, Lcom/db/chart/view/ChartView$GridType;->VERTICAL:Lcom/db/chart/view/ChartView$GridType;

    if-ne v0, v1, :cond_1

    .line 730
    :cond_0
    invoke-direct {p0, p1}, Lcom/db/chart/view/ChartView;->drawVerticalGrid(Landroid/graphics/Canvas;)V

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mGridType:Lcom/db/chart/view/ChartView$GridType;

    sget-object v1, Lcom/db/chart/view/ChartView$GridType;->FULL:Lcom/db/chart/view/ChartView$GridType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mGridType:Lcom/db/chart/view/ChartView$GridType;

    sget-object v1, Lcom/db/chart/view/ChartView$GridType;->HORIZONTAL:Lcom/db/chart/view/ChartView$GridType;

    if-ne v0, v1, :cond_3

    .line 732
    :cond_2
    invoke-direct {p0, p1}, Lcom/db/chart/view/ChartView;->drawHorizontalGrid(Landroid/graphics/Canvas;)V

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v0, p1}, Lcom/db/chart/view/YController;->draw(Landroid/graphics/Canvas;)V

    .line 738
    iget-boolean v0, p0, Lcom/db/chart/view/ChartView;->mHasThresholdValue:Z

    if-eqz v0, :cond_4

    .line 740
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartLeft()F

    move-result v2

    iget v3, p0, Lcom/db/chart/view/ChartView;->mThresholdStartValue:F

    .line 742
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartRight()F

    move-result v4

    iget v5, p0, Lcom/db/chart/view/ChartView;->mThresholdEndValue:F

    move-object v0, p0

    move-object v1, p1

    .line 739
    invoke-direct/range {v0 .. v5}, Lcom/db/chart/view/ChartView;->drawThreshold(Landroid/graphics/Canvas;FFFF)V

    .line 744
    :cond_4
    iget-boolean v0, p0, Lcom/db/chart/view/ChartView;->mHasThresholdLabel:Z

    if-eqz v0, :cond_5

    .line 745
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    .line 746
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    iget v1, p0, Lcom/db/chart/view/ChartView;->mThresholdStartLabel:I

    invoke-virtual {v0, v1}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v2

    .line 747
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartTop()F

    move-result v3

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    .line 748
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    iget v1, p0, Lcom/db/chart/view/ChartView;->mThresholdEndLabel:I

    invoke-virtual {v0, v1}, Lcom/db/chart/model/ChartSet;->getEntry(I)Lcom/db/chart/model/ChartEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/chart/model/ChartEntry;->getX()F

    move-result v4

    .line 749
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->getInnerChartBottom()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 745
    invoke-direct/range {v0 .. v5}, Lcom/db/chart/view/ChartView;->drawThreshold(Landroid/graphics/Canvas;FFFF)V

    .line 752
    :cond_5
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 753
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/db/chart/view/ChartView;->onDrawChart(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    .line 756
    :cond_6
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    invoke-virtual {v0, p1}, Lcom/db/chart/view/XController;->draw(Landroid/graphics/Canvas;)V

    .line 761
    :cond_7
    iput-boolean v6, p0, Lcom/db/chart/view/ChartView;->mIsDrawing:Z

    .line 762
    return-void
.end method

.method protected abstract onDrawChart(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)V"
        }
    .end annotation
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 282
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 284
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 285
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 287
    .local v0, "heightMode":I
    move v2, p1

    .line 288
    .local v2, "tmpWidth":I
    move v1, p2

    .line 290
    .local v1, "tmpHeight":I
    if-ne v3, v4, :cond_0

    .line 291
    const/16 v2, 0xc8

    .line 293
    :cond_0
    if-ne v0, v4, :cond_1

    .line 294
    const/16 v1, 0x64

    .line 296
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/db/chart/view/ChartView;->setMeasuredDimension(II)V

    .line 297
    return-void
.end method

.method onPreDrawChart(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/db/chart/model/ChartSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/db/chart/model/ChartSet;>;"
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 854
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    invoke-virtual {v4}, Lcom/db/chart/view/animation/Animation;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_7

    .line 856
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mEntryListener:Lcom/db/chart/listener/OnEntryClickListener;

    if-eqz v4, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 861
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 862
    .local v3, "nSets":I
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 863
    .local v2, "nEntries":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_7

    .line 864
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 866
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Region;

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 867
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 869
    iput v0, p0, Lcom/db/chart/view/ChartView;->mSetClicked:I

    .line 870
    iput v1, p0, Lcom/db/chart/view/ChartView;->mIndexClicked:I

    .line 864
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 863
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 875
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "nEntries":I
    .end local v3    # "nSets":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v11, :cond_7

    .line 877
    iget v4, p0, Lcom/db/chart/view/ChartView;->mSetClicked:I

    if-eq v4, v10, :cond_8

    iget v4, p0, Lcom/db/chart/view/ChartView;->mIndexClicked:I

    if-eq v4, v10, :cond_8

    .line 879
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    iget v5, p0, Lcom/db/chart/view/ChartView;->mSetClicked:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p0, Lcom/db/chart/view/ChartView;->mIndexClicked:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Region;

    .line 880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 880
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 883
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mEntryListener:Lcom/db/chart/listener/OnEntryClickListener;

    if-eqz v4, :cond_5

    .line 884
    iget-object v5, p0, Lcom/db/chart/view/ChartView;->mEntryListener:Lcom/db/chart/listener/OnEntryClickListener;

    iget v6, p0, Lcom/db/chart/view/ChartView;->mSetClicked:I

    iget v7, p0, Lcom/db/chart/view/ChartView;->mIndexClicked:I

    new-instance v8, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    iget v9, p0, Lcom/db/chart/view/ChartView;->mSetClicked:I

    .line 886
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v9, p0, Lcom/db/chart/view/ChartView;->mIndexClicked:I

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Region;

    invoke-direct {p0, v4}, Lcom/db/chart/view/ChartView;->getEntryRect(Landroid/graphics/Region;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 884
    invoke-interface {v5, v6, v7, v8}, Lcom/db/chart/listener/OnEntryClickListener;->onClick(IILandroid/graphics/Rect;)V

    .line 889
    :cond_5
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    if-eqz v4, :cond_6

    .line 890
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mRegions:Ljava/util/ArrayList;

    iget v5, p0, Lcom/db/chart/view/ChartView;->mSetClicked:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p0, Lcom/db/chart/view/ChartView;->mIndexClicked:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Region;

    invoke-direct {p0, v4}, Lcom/db/chart/view/ChartView;->getEntryRect(Landroid/graphics/Region;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v4, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    iget v6, p0, Lcom/db/chart/view/ChartView;->mSetClicked:I

    .line 891
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/db/chart/model/ChartSet;

    iget v6, p0, Lcom/db/chart/view/ChartView;->mIndexClicked:I

    invoke-virtual {v4, v6}, Lcom/db/chart/model/ChartSet;->getValue(I)F

    move-result v4

    .line 890
    invoke-direct {p0, v5, v4}, Lcom/db/chart/view/ChartView;->toggleTooltip(Landroid/graphics/Rect;F)V

    .line 895
    :cond_6
    iput v10, p0, Lcom/db/chart/view/ChartView;->mSetClicked:I

    .line 896
    iput v10, p0, Lcom/db/chart/view/ChartView;->mIndexClicked:I

    .line 908
    :cond_7
    :goto_2
    return v11

    .line 900
    :cond_8
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mChartListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_9

    .line 901
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mChartListener:Landroid/view/View$OnClickListener;

    invoke-interface {v4, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 903
    :cond_9
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    invoke-virtual {v4}, Lcom/db/chart/view/Tooltip;->on()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 904
    iget-object v4, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    invoke-direct {p0, v4}, Lcom/db/chart/view/ChartView;->dismissTooltip(Lcom/db/chart/view/Tooltip;)V

    goto :goto_2
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    invoke-virtual {v0}, Lcom/db/chart/view/animation/Animation;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    invoke-virtual {v0}, Lcom/db/chart/view/animation/Animation;->cancel()V

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/db/chart/view/ChartView;->init()V

    .line 496
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iget v0, v0, Lcom/db/chart/view/XController;->mandatoryBorderSpacing:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    invoke-virtual {v0}, Lcom/db/chart/view/XController;->reset()V

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iget v0, v0, Lcom/db/chart/view/YController;->mandatoryBorderSpacing:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v0}, Lcom/db/chart/view/YController;->reset()V

    .line 504
    :cond_2
    iput-boolean v2, p0, Lcom/db/chart/view/ChartView;->mHasThresholdLabel:Z

    .line 505
    iput-boolean v2, p0, Lcom/db/chart/view/ChartView;->mHasThresholdValue:Z

    .line 506
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput-object v3, v0, Lcom/db/chart/view/ChartView$Style;->thresholdPaint:Landroid/graphics/Paint;

    .line 508
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput-object v3, v0, Lcom/db/chart/view/ChartView$Style;->gridPaint:Landroid/graphics/Paint;

    .line 509
    return-void
.end method

.method public setAxisBorderValues(II)Lcom/db/chart/view/ChartView;
    .locals 2
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v0, p1, p2}, Lcom/db/chart/view/YController;->setBorderValues(II)V

    .line 1284
    :goto_0
    return-object p0

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    invoke-virtual {v0, p1, p2}, Lcom/db/chart/view/XController;->setBorderValues(II)V

    goto :goto_0
.end method

.method public setAxisBorderValues(III)Lcom/db/chart/view/ChartView;
    .locals 2
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "step"    # I

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/db/chart/view/YController;->setBorderValues(III)V

    .line 1267
    :goto_0
    return-object p0

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/db/chart/view/XController;->setBorderValues(III)V

    goto :goto_0
.end method

.method public setAxisColor(I)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput p1, v0, Lcom/db/chart/view/ChartView$Style;->axisColor:I

    .line 1308
    return-object p0
.end method

.method public setAxisLabelsSpacing(F)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "spacing"    # F

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    invoke-virtual {v0, p1}, Lcom/db/chart/view/XController;->setAxisLabelsSpacing(F)V

    .line 1483
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    invoke-virtual {v0, p1}, Lcom/db/chart/view/YController;->setAxisLabelsSpacing(F)V

    .line 1484
    return-object p0
.end method

.method public setAxisThickness(F)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "thickness"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput p1, v0, Lcom/db/chart/view/ChartView$Style;->axisThickness:F

    .line 1296
    return-object p0
.end method

.method public setBorderSpacing(F)Lcom/db/chart/view/ChartView;
    .locals 2
    .param p1, "spacing"    # F

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iput p1, v0, Lcom/db/chart/view/XController;->borderSpacing:F

    .line 1370
    :goto_0
    return-object p0

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iput p1, v0, Lcom/db/chart/view/YController;->borderSpacing:F

    goto :goto_0
.end method

.method public setFontSize(I)Lcom/db/chart/view/ChartView;
    .locals 2
    .param p1, "size"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    int-to-float v1, p1

    iput v1, v0, Lcom/db/chart/view/ChartView$Style;->fontSize:F

    .line 1209
    return-object p0
.end method

.method public setGrid(Lcom/db/chart/view/ChartView$GridType;IILandroid/graphics/Paint;)Lcom/db/chart/view/ChartView;
    .locals 2
    .param p1, "type"    # Lcom/db/chart/view/ChartView$GridType;
    .param p2, "rows"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p3, "columns"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v0, 0x1

    .line 1422
    if-lt p2, v0, :cond_0

    if-ge p3, v0, :cond_1

    .line 1423
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows/columns can\'t be lesser than 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1425
    :cond_1
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->mGridType:Lcom/db/chart/view/ChartView$GridType;

    .line 1426
    iput p2, p0, Lcom/db/chart/view/ChartView;->mGridNRows:I

    .line 1427
    iput p3, p0, Lcom/db/chart/view/ChartView;->mGridNColumns:I

    .line 1428
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput-object p4, v0, Lcom/db/chart/view/ChartView$Style;->gridPaint:Landroid/graphics/Paint;

    .line 1429
    return-object p0
.end method

.method public setGrid(Lcom/db/chart/view/ChartView$GridType;Landroid/graphics/Paint;)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "type"    # Lcom/db/chart/view/ChartView$GridType;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->mGridType:Lcom/db/chart/view/ChartView$GridType;

    .line 1403
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput-object p2, v0, Lcom/db/chart/view/ChartView$Style;->gridPaint:Landroid/graphics/Paint;

    .line 1404
    return-object p0
.end method

.method setInnerChartBottom(F)V
    .locals 1
    .param p1, "innerBottom"    # F

    .prologue
    .line 1520
    iget v0, p0, Lcom/db/chart/view/ChartView;->mInnerChartBottom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1521
    iput p1, p0, Lcom/db/chart/view/ChartView;->mInnerChartBottom:F

    .line 1522
    :cond_0
    return-void
.end method

.method setInnerChartLeft(F)V
    .locals 1
    .param p1, "innerLeft"    # F

    .prologue
    .line 1542
    iget v0, p0, Lcom/db/chart/view/ChartView;->mInnerChartLeft:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1543
    iput p1, p0, Lcom/db/chart/view/ChartView;->mInnerChartLeft:F

    .line 1544
    :cond_0
    return-void
.end method

.method setInnerChartRight(F)V
    .locals 1
    .param p1, "innerRight"    # F

    .prologue
    .line 1531
    iget v0, p0, Lcom/db/chart/view/ChartView;->mInnerChartRight:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1532
    iput p1, p0, Lcom/db/chart/view/ChartView;->mInnerChartRight:F

    .line 1533
    :cond_0
    return-void
.end method

.method setInnerChartTop(F)V
    .locals 1
    .param p1, "innerTop"    # F

    .prologue
    .line 1509
    iget v0, p0, Lcom/db/chart/view/ChartView;->mInnerChartTop:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1510
    iput p1, p0, Lcom/db/chart/view/ChartView;->mInnerChartTop:F

    .line 1511
    :cond_0
    return-void
.end method

.method public setLabelThreshold(IILandroid/graphics/Paint;)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "startLabel"    # I
    .param p2, "endLabel"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/view/ChartView;->mHasThresholdLabel:Z

    .line 1467
    iput p1, p0, Lcom/db/chart/view/ChartView;->mThresholdStartLabel:I

    .line 1468
    iput p2, p0, Lcom/db/chart/view/ChartView;->mThresholdEndLabel:I

    .line 1469
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput-object p3, v0, Lcom/db/chart/view/ChartView$Style;->thresholdPaint:Landroid/graphics/Paint;

    .line 1470
    return-object p0
.end method

.method public setLabelsColor(I)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput p1, v0, Lcom/db/chart/view/ChartView$Style;->labelsColor:I

    .line 1198
    return-object p0
.end method

.method public setLabelsFormat(Ljava/text/DecimalFormat;)Lcom/db/chart/view/ChartView;
    .locals 2
    .param p1, "format"    # Ljava/text/DecimalFormat;

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iput-object p1, v0, Lcom/db/chart/view/YController;->labelFormat:Ljava/text/DecimalFormat;

    .line 1187
    :goto_0
    return-object p0

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iput-object p1, v0, Lcom/db/chart/view/XController;->labelFormat:Ljava/text/DecimalFormat;

    goto :goto_0
.end method

.method setMandatoryBorderSpacing()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1496
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iput v2, v0, Lcom/db/chart/view/XController;->mandatoryBorderSpacing:F

    .line 1500
    :goto_0
    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iput v2, v0, Lcom/db/chart/view/YController;->mandatoryBorderSpacing:F

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->mChartListener:Landroid/view/View$OnClickListener;

    .line 1354
    return-void
.end method

.method public setOnEntryClickListener(Lcom/db/chart/listener/OnEntryClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/db/chart/listener/OnEntryClickListener;

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->mEntryListener:Lcom/db/chart/listener/OnEntryClickListener;

    .line 1342
    return-void
.end method

.method setOrientation(Lcom/db/chart/view/ChartView$Orientation;)V
    .locals 3
    .param p1, "orien"    # Lcom/db/chart/view/ChartView$Orientation;

    .prologue
    const/4 v2, 0x1

    .line 1134
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    .line 1135
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iput-boolean v2, v0, Lcom/db/chart/view/YController;->handleValues:Z

    .line 1140
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iput-boolean v2, v0, Lcom/db/chart/view/XController;->handleValues:Z

    goto :goto_0
.end method

.method public setStep(I)Lcom/db/chart/view/ChartView;
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 1322
    if-gtz p1, :cond_0

    .line 1323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step can\'t be lower or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iput p1, v0, Lcom/db/chart/view/YController;->step:I

    .line 1330
    :goto_0
    return-object p0

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iput p1, v0, Lcom/db/chart/view/XController;->step:I

    goto :goto_0
.end method

.method public setTooltips(Lcom/db/chart/view/Tooltip;)V
    .locals 0
    .param p1, "tip"    # Lcom/db/chart/view/Tooltip;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->mTooltip:Lcom/db/chart/view/Tooltip;

    .line 569
    return-void
.end method

.method public setTopSpacing(F)Lcom/db/chart/view/ChartView;
    .locals 2
    .param p1, "spacing"    # F

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->mOrientation:Lcom/db/chart/view/ChartView$Orientation;

    sget-object v1, Lcom/db/chart/view/ChartView$Orientation;->VERTICAL:Lcom/db/chart/view/ChartView$Orientation;

    if-ne v0, v1, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iput p1, v0, Lcom/db/chart/view/YController;->topSpacing:F

    .line 1387
    :goto_0
    return-object p0

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iput p1, v0, Lcom/db/chart/view/XController;->borderSpacing:F

    goto :goto_0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput-object p1, v0, Lcom/db/chart/view/ChartView$Style;->typeface:Landroid/graphics/Typeface;

    .line 1220
    return-object p0
.end method

.method public setValueThreshold(FFLandroid/graphics/Paint;)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/chart/view/ChartView;->mHasThresholdValue:Z

    .line 1447
    iput p1, p0, Lcom/db/chart/view/ChartView;->mThresholdStartValue:F

    .line 1448
    iput p2, p0, Lcom/db/chart/view/ChartView;->mThresholdEndValue:F

    .line 1449
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->style:Lcom/db/chart/view/ChartView$Style;

    iput-object p3, v0, Lcom/db/chart/view/ChartView$Style;->thresholdPaint:Landroid/graphics/Paint;

    .line 1450
    return-object p0
.end method

.method public setXAxis(Z)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iput-boolean p1, v0, Lcom/db/chart/view/XController;->hasAxis:Z

    .line 1233
    return-object p0
.end method

.method public setXLabels(Lcom/db/chart/view/AxisController$LabelPosition;)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "position"    # Lcom/db/chart/view/AxisController$LabelPosition;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->horController:Lcom/db/chart/view/XController;

    iput-object p1, v0, Lcom/db/chart/view/XController;->labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

    .line 1169
    return-object p0
.end method

.method public setYAxis(Z)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iput-boolean p1, v0, Lcom/db/chart/view/YController;->hasAxis:Z

    .line 1245
    return-object p0
.end method

.method public setYLabels(Lcom/db/chart/view/AxisController$LabelPosition;)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p1, "position"    # Lcom/db/chart/view/AxisController$LabelPosition;

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->verController:Lcom/db/chart/view/YController;

    iput-object p1, v0, Lcom/db/chart/view/YController;->labelsPositioning:Lcom/db/chart/view/AxisController$LabelPosition;

    .line 1154
    return-object p0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 409
    iget-object v1, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    .line 410
    .local v0, "set":Lcom/db/chart/model/ChartSet;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/db/chart/model/ChartSet;->setVisible(Z)V

    goto :goto_0

    .line 411
    .end local v0    # "set":Lcom/db/chart/model/ChartSet;
    :cond_0
    invoke-direct {p0}, Lcom/db/chart/view/ChartView;->display()V

    .line 412
    return-void
.end method

.method public show(I)V
    .locals 2
    .param p1, "setIndex"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/db/chart/model/ChartSet;->setVisible(Z)V

    .line 422
    invoke-direct {p0}, Lcom/db/chart/view/ChartView;->display()V

    .line 423
    return-void
.end method

.method public show(Lcom/db/chart/view/animation/Animation;)V
    .locals 0
    .param p1, "anim"    # Lcom/db/chart/view/animation/Animation;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/db/chart/view/ChartView;->mAnim:Lcom/db/chart/view/animation/Animation;

    .line 433
    invoke-virtual {p0}, Lcom/db/chart/view/ChartView;->show()V

    .line 434
    return-void
.end method

.method public showTooltip(Lcom/db/chart/view/Tooltip;Z)V
    .locals 4
    .param p1, "tooltip"    # Lcom/db/chart/view/Tooltip;
    .param p2, "correctPos"    # Z

    .prologue
    .line 601
    if-eqz p2, :cond_0

    .line 602
    iget v0, p0, Lcom/db/chart/view/ChartView;->mChartLeft:I

    iget v1, p0, Lcom/db/chart/view/ChartView;->mChartTop:I

    iget v2, p0, Lcom/db/chart/view/ChartView;->mChartRight:I

    iget v3, p0, Lcom/db/chart/view/ChartView;->mChartBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/db/chart/view/Tooltip;->correctPosition(IIII)V

    .line 608
    :cond_0
    invoke-virtual {p1}, Lcom/db/chart/view/Tooltip;->hasEnterAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    invoke-virtual {p1}, Lcom/db/chart/view/Tooltip;->animateEnter()V

    .line 611
    :cond_1
    invoke-direct {p0, p1}, Lcom/db/chart/view/ChartView;->addTooltip(Lcom/db/chart/view/Tooltip;)V

    .line 613
    return-void
.end method

.method public updateValues(I[F)Lcom/db/chart/view/ChartView;
    .locals 3
    .param p1, "setIndex"    # I
    .param p2, "values"    # [F

    .prologue
    .line 521
    array-length v1, p2

    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0}, Lcom/db/chart/model/ChartSet;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 522
    const-string v0, "chart.view.ChartView"

    const-string v1, "New values size doesn\'t match current dataset size."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/db/chart/view/ChartView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/chart/model/ChartSet;

    invoke-virtual {v0, p2}, Lcom/db/chart/model/ChartSet;->updateValues([F)V

    .line 525
    return-object p0
.end method
