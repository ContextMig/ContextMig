.class Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;
.super Ljava/lang/Object;
.source "ResizableKeyboardViewDelegate.java"


# instance fields
.field private decorView:Landroid/view/View;

.field private final delegateView:Landroid/view/View;

.field private final idOfViewToHide:I

.field private isAnimating:Z

.field private final layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final rect:Landroid/graphics/Rect;

.field private final shouldAnimate:Z

.field private viewToHide:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$1;-><init>(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)V

    iput-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 78
    iput-object p1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->delegateView:Landroid/view/View;

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->rect:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lorg/mozilla/focus/R$styleable;->ResizableKeyboardViewDelegate:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "styleAttributeArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->idOfViewToHide:I

    .line 88
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->shouldAnimate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->isAnimating:Z

    return v0
.end method

.method static synthetic access$002(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->isAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->calculateDifferenceBetweenHeightAndUsableArea()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->delegateView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;I)V
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->updateBottomPadding(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->viewToHide:Landroid/view/View;

    return-object v0
.end method

.method private animateBottomPaddingTo(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x1

    .line 121
    iput-boolean v4, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->isAnimating:Z

    .line 123
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->delegateView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    aput v3, v1, v2

    aput p1, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 124
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$2;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$2;-><init>(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 130
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    new-instance v1, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$3;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate$3;-><init>(Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 138
    return-void
.end method

.method private calculateDifferenceBetweenHeightAndUsableArea()I
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->decorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->delegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->decorView:Landroid/view/View;

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->decorView:Landroid/view/View;

    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 148
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->delegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private updateBottomPadding(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-boolean v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->shouldAnimate:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->animateBottomPaddingTo(I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->delegateView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method onAttachedToWindow()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->delegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 97
    iget v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->idOfViewToHide:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->delegateView:Landroid/view/View;

    iget v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->idOfViewToHide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->viewToHide:Landroid/view/View;

    .line 100
    :cond_0
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->delegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->viewToHide:Landroid/view/View;

    .line 106
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/focus/widget/ResizableKeyboardViewDelegate;->updateBottomPadding(I)V

    .line 110
    return-void
.end method
