.class public Lcom/tokenautocomplete/ViewSpan;
.super Landroid/text/style/ReplacementSpan;
.source "ViewSpan.java"


# instance fields
.field private maxWidth:I

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "maxWidth"    # I

    .prologue
    const/4 v2, -0x2

    .line 20
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 21
    iput p2, p0, Lcom/tokenautocomplete/ViewSpan;->maxWidth:I

    .line 22
    iput-object p1, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    return-void
.end method

.method private prepView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 27
    iget v2, p0, Lcom/tokenautocomplete/ViewSpan;->maxWidth:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 28
    .local v1, "widthSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 30
    .local v0, "heightSpec":I
    iget-object v2, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 31
    iget-object v2, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tokenautocomplete/ViewSpan;->prepView()V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    sub-int v1, p8, p6

    iget-object v2, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 40
    .local v0, "padding":I
    iget-object v1, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v1, p8, v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    iget-object v1, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "charSequence"    # Ljava/lang/CharSequence;
    .param p3, "i"    # I
    .param p4, "i2"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/tokenautocomplete/ViewSpan;->prepView()V

    .line 48
    if-eqz p5, :cond_0

    .line 50
    iget-object v3, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 51
    .local v1, "height":I
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    sub-int v2, v1, v3

    .line 52
    .local v2, "need":I
    if-lez v2, :cond_0

    .line 53
    div-int/lit8 v0, v2, 0x2

    .line 55
    .local v0, "ascent":I
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v4, v2, v0

    add-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 56
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v0

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 57
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v4, v2, v0

    add-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 58
    iget v3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 62
    .end local v0    # "ascent":I
    .end local v1    # "height":I
    .end local v2    # "need":I
    :cond_0
    iget-object v3, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    return v3
.end method
