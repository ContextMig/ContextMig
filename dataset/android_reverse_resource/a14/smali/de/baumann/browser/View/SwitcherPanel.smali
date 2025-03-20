.class public Lde/baumann/browser/View/SwitcherPanel;
.super Landroid/view/ViewGroup;
.source "SwitcherPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/baumann/browser/View/SwitcherPanel$LayoutParams;,
        Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;,
        Lde/baumann/browser/View/SwitcherPanel$StatusListener;,
        Lde/baumann/browser/View/SwitcherPanel$Status;
    }
.end annotation


# static fields
.field private static final STATUS_DEFAULT:Lde/baumann/browser/View/SwitcherPanel$Status;


# instance fields
.field private coverHeight:F

.field private final dragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private interceptX:F

.field private interceptY:F

.field private keyBoardShowing:Z

.field private mainView:Landroid/view/View;

.field private omnibox:Landroid/widget/RelativeLayout;

.field private slideOffset:F

.field private slideRange:F

.field private status:Lde/baumann/browser/View/SwitcherPanel$Status;

.field private statusListener:Lde/baumann/browser/View/SwitcherPanel$StatusListener;

.field private switcherView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->EXPANDED:Lde/baumann/browser/View/SwitcherPanel$Status;

    sput-object v0, Lde/baumann/browser/View/SwitcherPanel;->STATUS_DEFAULT:Lde/baumann/browser/View/SwitcherPanel$Status;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0}, Lde/baumann/browser/View/SwitcherPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lde/baumann/browser/View/SwitcherPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lde/baumann/browser/View/SwitcherPanel;->slideRange:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 24
    iput p3, p0, Lde/baumann/browser/View/SwitcherPanel;->slideOffset:F

    .line 25
    iput p2, p0, Lde/baumann/browser/View/SwitcherPanel;->interceptX:F

    .line 26
    iput p2, p0, Lde/baumann/browser/View/SwitcherPanel;->interceptY:F

    .line 29
    iput p2, p0, Lde/baumann/browser/View/SwitcherPanel;->coverHeight:F

    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lde/baumann/browser/View/SwitcherPanel;->keyBoardShowing:Z

    .line 53
    sget-object p3, Lde/baumann/browser/View/SwitcherPanel;->STATUS_DEFAULT:Lde/baumann/browser/View/SwitcherPanel$Status;

    iput-object p3, p0, Lde/baumann/browser/View/SwitcherPanel;->status:Lde/baumann/browser/View/SwitcherPanel$Status;

    .line 129
    new-instance p3, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;-><init>(Lde/baumann/browser/View/SwitcherPanel;Lde/baumann/browser/View/SwitcherPanel$1;)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Lde/baumann/browser/View/SwitcherPanel;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 130
    invoke-direct {p0}, Lde/baumann/browser/View/SwitcherPanel;->setFlingVelocity()V

    .line 131
    invoke-virtual {p0, p2}, Lde/baumann/browser/View/SwitcherPanel;->setWillNotDraw(Z)V

    .line 133
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070088

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 134
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07008b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    int-to-float p3, p3

    .line 135
    invoke-static {p1}, Lde/baumann/browser/Unit/ViewUnit;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    .line 136
    invoke-static {p1}, Lde/baumann/browser/Unit/ViewUnit;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    sub-float/2addr p1, p2

    sub-float/2addr p1, p3

    .line 138
    iput p1, p0, Lde/baumann/browser/View/SwitcherPanel;->coverHeight:F

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/View/SwitcherPanel;)Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lde/baumann/browser/View/SwitcherPanel;)F
    .locals 0

    .line 17
    iget p0, p0, Lde/baumann/browser/View/SwitcherPanel;->slideRange:F

    return p0
.end method

.method static synthetic access$200(Lde/baumann/browser/View/SwitcherPanel;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SwitcherPanel;->fling(I)V

    return-void
.end method

.method static synthetic access$300(Lde/baumann/browser/View/SwitcherPanel;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 0

    .line 17
    iget-object p0, p0, Lde/baumann/browser/View/SwitcherPanel;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object p0
.end method

.method static synthetic access$400(Lde/baumann/browser/View/SwitcherPanel;)F
    .locals 0

    .line 17
    iget p0, p0, Lde/baumann/browser/View/SwitcherPanel;->slideOffset:F

    return p0
.end method

.method static synthetic access$402(Lde/baumann/browser/View/SwitcherPanel;F)F
    .locals 0

    .line 17
    iput p1, p0, Lde/baumann/browser/View/SwitcherPanel;->slideOffset:F

    return p1
.end method

.method static synthetic access$500(Lde/baumann/browser/View/SwitcherPanel;I)F
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SwitcherPanel;->computeSlideOffset(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lde/baumann/browser/View/SwitcherPanel;)Lde/baumann/browser/View/SwitcherPanel$Status;
    .locals 0

    .line 17
    iget-object p0, p0, Lde/baumann/browser/View/SwitcherPanel;->status:Lde/baumann/browser/View/SwitcherPanel$Status;

    return-object p0
.end method

.method static synthetic access$602(Lde/baumann/browser/View/SwitcherPanel;Lde/baumann/browser/View/SwitcherPanel$Status;)Lde/baumann/browser/View/SwitcherPanel$Status;
    .locals 0

    .line 17
    iput-object p1, p0, Lde/baumann/browser/View/SwitcherPanel;->status:Lde/baumann/browser/View/SwitcherPanel$Status;

    return-object p1
.end method

.method static synthetic access$700(Lde/baumann/browser/View/SwitcherPanel;)Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lde/baumann/browser/View/SwitcherPanel;->switcherView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lde/baumann/browser/View/SwitcherPanel;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lde/baumann/browser/View/SwitcherPanel;->dispatchOnCollapsed()V

    return-void
.end method

.method private computeSlideOffset(I)F
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0}, Lde/baumann/browser/View/SwitcherPanel;->computeTopPosition(F)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lde/baumann/browser/View/SwitcherPanel;->slideRange:F

    div-float/2addr p1, v0

    return p1
.end method

.method private computeTopPosition(F)I
    .locals 2

    .line 256
    iget v0, p0, Lde/baumann/browser/View/SwitcherPanel;->slideRange:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 257
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lde/baumann/browser/View/SwitcherPanel;->coverHeight:F

    add-float/2addr v0, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private dispatchOnCollapsed()V
    .locals 1

    .line 372
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->statusListener:Lde/baumann/browser/View/SwitcherPanel$StatusListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->statusListener:Lde/baumann/browser/View/SwitcherPanel$StatusListener;

    invoke-interface {v0}, Lde/baumann/browser/View/SwitcherPanel$StatusListener;->onCollapsed()V

    :cond_0
    return-void
.end method

.method private fling(I)V
    .locals 4

    .line 355
    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->FLING:Lde/baumann/browser/View/SwitcherPanel$Status;

    iput-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->status:Lde/baumann/browser/View/SwitcherPanel$Status;

    .line 356
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SwitcherPanel;->computeSlideOffset(I)F

    move-result v0

    iput v0, p0, Lde/baumann/browser/View/SwitcherPanel;->slideOffset:F

    .line 358
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->switcherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;

    .line 359
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lde/baumann/browser/View/SwitcherPanel;->coverHeight:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 361
    iget v2, p0, Lde/baumann/browser/View/SwitcherPanel;->slideOffset:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 362
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iput v1, v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->height:I

    goto :goto_0

    .line 363
    :cond_0
    iget p1, v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->height:I

    if-eq p1, v1, :cond_1

    .line 364
    iput v1, v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->height:I

    .line 368
    :cond_1
    :goto_0
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel;->switcherView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setFlingVelocity()V
    .locals 3

    .line 36
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43800000    # 256.0f

    invoke-static {v1, v2}, Lde/baumann/browser/Unit/ViewUnit;->dp2px(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    :cond_0
    return-void
.end method

.method private shouldCollapsed()Z
    .locals 8

    const/4 v0, 0x2

    .line 304
    new-array v0, v0, [I

    .line 305
    iget-object v1, p0, Lde/baumann/browser/View/SwitcherPanel;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 307
    aget v2, v0, v1

    .line 308
    iget-object v3, p0, Lde/baumann/browser/View/SwitcherPanel;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x1

    .line 309
    aget v0, v0, v4

    .line 310
    iget-object v5, p0, Lde/baumann/browser/View/SwitcherPanel;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    .line 312
    iget-object v6, p0, Lde/baumann/browser/View/SwitcherPanel;->status:Lde/baumann/browser/View/SwitcherPanel$Status;

    sget-object v7, Lde/baumann/browser/View/SwitcherPanel$Status;->EXPANDED:Lde/baumann/browser/View/SwitcherPanel$Status;

    if-ne v6, v7, :cond_0

    int-to-float v2, v2

    iget v6, p0, Lde/baumann/browser/View/SwitcherPanel;->interceptX:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_0

    iget v2, p0, Lde/baumann/browser/View/SwitcherPanel;->interceptX:F

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    int-to-float v0, v0

    iget v2, p0, Lde/baumann/browser/View/SwitcherPanel;->interceptY:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lde/baumann/browser/View/SwitcherPanel;->interceptY:F

    int-to-float v2, v5

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private shouldExpanded(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 320
    new-array v0, v0, [I

    .line 321
    iget-object v1, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 323
    aget v2, v0, v1

    .line 324
    iget-object v3, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x1

    .line 325
    aget v0, v0, v4

    .line 326
    iget-object v5, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    .line 328
    iget-object v6, p0, Lde/baumann/browser/View/SwitcherPanel;->status:Lde/baumann/browser/View/SwitcherPanel$Status;

    sget-object v7, Lde/baumann/browser/View/SwitcherPanel$Status;->COLLAPSED:Lde/baumann/browser/View/SwitcherPanel$Status;

    if-ne v6, v7, :cond_0

    int-to-float v2, v2

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    int-to-float v0, v0

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    int-to-float v0, v5

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private smoothSlideTo(F)V
    .locals 3

    .line 378
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SwitcherPanel;->computeTopPosition(F)I

    move-result p1

    .line 383
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    iget-object v2, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 384
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 158
    instance-of v0, p1, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public collapsed()V
    .locals 2

    .line 346
    :try_start_0
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->switcherView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, v0}, Lde/baumann/browser/View/SwitcherPanel;->smoothSlideTo(F)V

    .line 348
    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->COLLAPSED:Lde/baumann/browser/View/SwitcherPanel$Status;

    iput-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->status:Lde/baumann/browser/View/SwitcherPanel$Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 266
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    return-void

    .line 271
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public expanded()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 337
    :try_start_0
    invoke-direct {p0, v0}, Lde/baumann/browser/View/SwitcherPanel;->smoothSlideTo(F)V

    .line 338
    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->EXPANDED:Lde/baumann/browser/View/SwitcherPanel$Status;

    iput-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->status:Lde/baumann/browser/View/SwitcherPanel$Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 143
    new-instance v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;-><init>(Lde/baumann/browser/View/SwitcherPanel$1;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 153
    new-instance v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;

    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lde/baumann/browser/View/SwitcherPanel$1;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 148
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1, v1}, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;Lde/baumann/browser/View/SwitcherPanel$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;

    invoke-direct {v0, p1, v1}, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;Lde/baumann/browser/View/SwitcherPanel$1;)V

    :goto_0
    return-object v0
.end method

.method public getStatus()Lde/baumann/browser/View/SwitcherPanel$Status;
    .locals 1

    .line 55
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->status:Lde/baumann/browser/View/SwitcherPanel$Status;

    return-object v0
.end method

.method public isKeyBoardShowing()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lde/baumann/browser/View/SwitcherPanel;->keyBoardShowing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 278
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lde/baumann/browser/View/SwitcherPanel;->interceptX:F

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lde/baumann/browser/View/SwitcherPanel;->interceptY:F

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 286
    iget-boolean v0, p0, Lde/baumann/browser/View/SwitcherPanel;->keyBoardShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->omnibox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lde/baumann/browser/View/SwitcherPanel;->shouldCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lde/baumann/browser/View/SwitcherPanel;->interceptY:F

    sub-float/2addr v0, v2

    .line 288
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lde/baumann/browser/Unit/ViewUnit;->dp2px(Landroid/content/Context;F)F

    move-result v2

    neg-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 289
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->collapsed()V

    return v1

    .line 295
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SwitcherPanel;->shouldExpanded(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->expanded()V

    return v1

    .line 300
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 279
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 231
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingLeft()I

    move-result p1

    .line 232
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingTop()I

    move-result p2

    const/4 p3, 0x0

    .line 234
    :goto_0
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 235
    invoke-virtual {p0, p3}, Lde/baumann/browser/View/SwitcherPanel;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 236
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;

    .line 239
    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    if-ne p4, v0, :cond_0

    .line 240
    iget v0, p0, Lde/baumann/browser/View/SwitcherPanel;->slideOffset:F

    invoke-direct {p0, v0}, Lde/baumann/browser/View/SwitcherPanel;->computeTopPosition(F)I

    move-result v0

    goto :goto_1

    :cond_0
    move v0, p2

    .line 242
    :goto_1
    iget-object v1, p0, Lde/baumann/browser/View/SwitcherPanel;->switcherView:Landroid/view/View;

    if-ne p4, v1, :cond_1

    .line 243
    iget v0, p0, Lde/baumann/browser/View/SwitcherPanel;->slideOffset:F

    invoke-direct {p0, v0}, Lde/baumann/browser/View/SwitcherPanel;->computeTopPosition(F)I

    move-result v0

    iget-object v1, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 248
    iget p5, p5, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->leftMargin:I

    add-int/2addr p5, p1

    .line 249
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p5

    .line 251
    invoke-virtual {p4, p5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 163
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 164
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Width must have an exact value or MATCH_PARENT."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 166
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Height must have an exact value or MATCH_PARENT."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getChildCount()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 168
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SwitcherPanel layout must have exactly 2 children!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lde/baumann/browser/View/SwitcherPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lde/baumann/browser/View/SwitcherPanel;->switcherView:Landroid/view/View;

    const/4 v2, 0x1

    .line 172
    invoke-virtual {p0, v2}, Lde/baumann/browser/View/SwitcherPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    .line 173
    iget-object v3, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    const v4, 0x7f090090

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lde/baumann/browser/View/SwitcherPanel;->omnibox:Landroid/widget/RelativeLayout;

    .line 175
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 176
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 177
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 178
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingTop()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    .line 180
    :goto_0
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 181
    invoke-virtual {p0, v5}, Lde/baumann/browser/View/SwitcherPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 182
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;

    .line 186
    iget-object v8, p0, Lde/baumann/browser/View/SwitcherPanel;->switcherView:Landroid/view/View;

    if-ne v6, v8, :cond_3

    int-to-float v8, v4

    .line 187
    iget v9, p0, Lde/baumann/browser/View/SwitcherPanel;->coverHeight:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 188
    iget v9, v7, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->leftMargin:I

    sub-int v9, v3, v9

    iget v10, v7, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    goto :goto_1

    .line 189
    :cond_3
    iget-object v8, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    if-ne v6, v8, :cond_4

    .line 190
    iget v8, v7, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->topMargin:I

    sub-int v8, v4, v8

    move v9, v3

    goto :goto_1

    :cond_4
    move v9, v3

    move v8, v4

    .line 194
    :goto_1
    iget v10, v7, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->width:I

    const/high16 v11, -0x80000000

    packed-switch v10, :pswitch_data_0

    .line 202
    iget v9, v7, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->width:I

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_2

    .line 199
    :pswitch_0
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_2

    .line 196
    :pswitch_1
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 207
    :goto_2
    iget v10, v7, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->height:I

    packed-switch v10, :pswitch_data_1

    .line 215
    iget v7, v7, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->height:I

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_3

    .line 212
    :pswitch_2
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_3

    .line 209
    :pswitch_3
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 219
    :goto_3
    invoke-virtual {v6, v9, v7}, Landroid/view/View;->measure(II)V

    .line 220
    iget-object v7, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    if-ne v6, v7, :cond_5

    .line 221
    iget-object v6, p0, Lde/baumann/browser/View/SwitcherPanel;->mainView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lde/baumann/browser/View/SwitcherPanel;->coverHeight:F

    sub-float/2addr v6, v7

    iput v6, p0, Lde/baumann/browser/View/SwitcherPanel;->slideRange:F

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    :cond_6
    invoke-virtual {p0, p1, p2}, Lde/baumann/browser/View/SwitcherPanel;->setMeasuredDimension(II)V

    .line 226
    invoke-virtual {p0}, Lde/baumann/browser/View/SwitcherPanel;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Lde/baumann/browser/View/SwitcherPanel;->keyBoardShowing:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setCoverHeight(F)V
    .locals 0

    .line 31
    iput p1, p0, Lde/baumann/browser/View/SwitcherPanel;->coverHeight:F

    return-void
.end method

.method public setStatusListener(Lde/baumann/browser/View/SwitcherPanel$StatusListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lde/baumann/browser/View/SwitcherPanel;->statusListener:Lde/baumann/browser/View/SwitcherPanel$StatusListener;

    return-void
.end method
