.class public final Lcom/appflood/f/d;
.super Landroid/widget/ImageView;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Lcom/appflood/f/c;

.field private c:Ljava/util/Timer;

.field private d:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/appflood/f/d;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appflood/f/d;->setBackgroundColor(I)V

    new-instance v0, Lcom/appflood/f/c;

    invoke-direct {v0}, Lcom/appflood/f/c;-><init>()V

    iput-object v0, p0, Lcom/appflood/f/d;->b:Lcom/appflood/f/c;

    new-instance v0, Lcom/appflood/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video_loading.gif"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/appflood/f/d$1;

    invoke-direct {v1, p0}, Lcom/appflood/f/d$1;-><init>(Lcom/appflood/f/d;)V

    iput-object v1, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/appflood/f/d;->c:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/appflood/f/d;->c:Ljava/util/Timer;

    new-instance v0, Lcom/appflood/f/d$2;

    invoke-direct {v0, p0}, Lcom/appflood/f/d$2;-><init>(Lcom/appflood/f/d;)V

    iput-object v0, p0, Lcom/appflood/f/d;->d:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/appflood/f/d;->c:Ljava/util/Timer;

    iget-object v1, p0, Lcom/appflood/f/d;->d:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/appflood/f/d;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/f/d;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/appflood/f/d;->c:Ljava/util/Timer;

    iput-object v1, p0, Lcom/appflood/f/d;->d:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/appflood/f/d;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/appflood/f/d;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/appflood/f/d;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/appflood/f/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v4, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/appflood/f/d;->b:Lcom/appflood/f/c;

    iget v1, v0, Lcom/appflood/f/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/appflood/f/c;->a:I

    iget v1, v0, Lcom/appflood/f/c;->a:I

    iget-object v2, v0, Lcom/appflood/f/c;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    iput v3, v0, Lcom/appflood/f/c;->a:I

    :cond_0
    iget-object v1, v0, Lcom/appflood/f/c;->b:Ljava/util/Vector;

    iget v0, v0, Lcom/appflood/f/c;->a:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appflood/f/c$a;

    iget-object v0, v0, Lcom/appflood/f/c$a;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/appflood/f/d;->a:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method
