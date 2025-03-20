.class Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;
.super Ljava/lang/Object;
.source "LineChartRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSetImageCache"
.end annotation


# instance fields
.field private circleBitmaps:[Landroid/graphics/Bitmap;

.field private circleColors:[I

.field final synthetic this$0:Lcom/github/mikephil/charting/renderer/LineChartRenderer;


# direct methods
.method private constructor <init>(Lcom/github/mikephil/charting/renderer/LineChartRenderer;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->this$0:Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/mikephil/charting/renderer/LineChartRenderer;Lcom/github/mikephil/charting/renderer/LineChartRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/github/mikephil/charting/renderer/LineChartRenderer;
    .param p2, "x1"    # Lcom/github/mikephil/charting/renderer/LineChartRenderer$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;-><init>(Lcom/github/mikephil/charting/renderer/LineChartRenderer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;I)V
    .locals 0
    .param p0, "x0"    # Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->ensureCircleCache(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;)[I
    .locals 1
    .param p0, "x0"    # Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleColors:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private ensureCircleCache(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 36
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 37
    new-array v2, p1, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    .line 46
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleColors:[I

    if-nez v2, :cond_4

    .line 47
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleColors:[I

    .line 55
    :cond_1
    :goto_1
    return-void

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v2, p1, :cond_0

    .line 39
    new-array v1, p1, [Landroid/graphics/Bitmap;

    .line 40
    .local v1, "tmp":[Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 41
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p1

    aput-object v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 43
    :cond_3
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    .end local v1    # "tmp":[Landroid/graphics/Bitmap;
    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleColors:[I

    array-length v2, v2

    if-ge v2, p1, :cond_1

    .line 49
    new-array v1, p1, [I

    .line 50
    .local v1, "tmp":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleColors:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 51
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleColors:[I

    aget v2, v2, p1

    aput v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 53
    :cond_5
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache;->circleColors:[I

    goto :goto_1
.end method
