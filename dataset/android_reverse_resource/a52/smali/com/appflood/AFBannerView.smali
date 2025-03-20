.class public Lcom/appflood/AFBannerView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/appflood/c/b;


# instance fields
.field private a:Lcom/appflood/c/a;

.field private b:I

.field private c:I

.field private d:Landroid/view/View;

.field private e:I

.field private f:Ljava/util/Timer;

.field private g:Z

.field private h:Z

.field private i:Lcom/appflood/AppFlood$AFBannerShowDelegate;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lcom/appflood/AFBannerView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/appflood/AFBannerView;->b:I

    iput v1, p0, Lcom/appflood/AFBannerView;->c:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/appflood/AFBannerView;->e:I

    iput-boolean v1, p0, Lcom/appflood/AFBannerView;->g:Z

    iput-boolean v1, p0, Lcom/appflood/AFBannerView;->h:Z

    const/16 v0, 0x1d6

    iput v0, p0, Lcom/appflood/AFBannerView;->j:I

    const/16 v0, 0x49

    iput v0, p0, Lcom/appflood/AFBannerView;->k:I

    invoke-direct {p0, p1}, Lcom/appflood/AFBannerView;->init(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/appflood/AFBannerView;->setType(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0xe

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/appflood/AFBannerView;->b:I

    iput v0, p0, Lcom/appflood/AFBannerView;->c:I

    iput v1, p0, Lcom/appflood/AFBannerView;->e:I

    iput-boolean v0, p0, Lcom/appflood/AFBannerView;->g:Z

    iput-boolean v0, p0, Lcom/appflood/AFBannerView;->h:Z

    const/16 v0, 0x1d6

    iput v0, p0, Lcom/appflood/AFBannerView;->j:I

    const/16 v0, 0x49

    iput v0, p0, Lcom/appflood/AFBannerView;->k:I

    invoke-direct {p0, p1}, Lcom/appflood/AFBannerView;->init(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/appflood/AFBannerView;->setType(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/appflood/AFBannerView;)Lcom/appflood/AppFlood$AFBannerShowDelegate;
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFBannerView;->i:Lcom/appflood/AppFlood$AFBannerShowDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/appflood/AFBannerView;)Lcom/appflood/c/a;
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/appflood/AFBannerView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFBannerView;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/appflood/AFBannerView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFBannerView;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/appflood/AFBannerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appflood/AFBannerView;->g:Z

    return v0
.end method

.method static synthetic access$302(Lcom/appflood/AFBannerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appflood/AFBannerView;->g:Z

    return p1
.end method

.method static synthetic access$400(Lcom/appflood/AFBannerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appflood/AFBannerView;->startFadeOut(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/appflood/AFBannerView;)I
    .locals 1

    iget v0, p0, Lcom/appflood/AFBannerView;->b:I

    return v0
.end method

.method static synthetic access$502(Lcom/appflood/AFBannerView;I)I
    .locals 0

    iput p1, p0, Lcom/appflood/AFBannerView;->b:I

    return p1
.end method

.method static synthetic access$600(Lcom/appflood/AFBannerView;)I
    .locals 1

    iget v0, p0, Lcom/appflood/AFBannerView;->c:I

    return v0
.end method

.method static synthetic access$602(Lcom/appflood/AFBannerView;I)I
    .locals 0

    iput p1, p0, Lcom/appflood/AFBannerView;->c:I

    return p1
.end method

.method static synthetic access$700(Lcom/appflood/AFBannerView;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFBannerView;->f:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/appflood/AFBannerView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFBannerView;->f:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/appflood/AFBannerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appflood/AFBannerView;->startFadeIn(Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized close(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/appflood/AFBannerView;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/appflood/AFBannerView;->h:Z

    iget-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    invoke-virtual {v0}, Lcom/appflood/c/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/appflood/AFBannerView;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appflood/AFBannerView;->d:Landroid/view/View;

    instance-of v0, v0, Lcom/appflood/mraid/AFBannerWebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appflood/AFBannerView;->d:Landroid/view/View;

    check-cast v0, Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->destroy()V

    :cond_3
    invoke-virtual {p0}, Lcom/appflood/AFBannerView;->removeAllViews()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/appflood/AFBannerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appflood/AFBannerView;->f:Ljava/util/Timer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appflood/AFBannerView;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/AFBannerView;->f:Ljava/util/Timer;

    :cond_4
    invoke-virtual {p0}, Lcom/appflood/AFBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appflood/AFBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appflood/AFBannerView;->setBackgroundColor(I)V

    new-instance v0, Lcom/appflood/c/a;

    invoke-direct {v0, p1}, Lcom/appflood/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    iget-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    iput-object p0, v0, Lcom/appflood/c/a;->b:Lcom/appflood/c/b;

    iget-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appflood/c/a;->g:Z

    return-void
.end method

.method private myResolveSizeAndState(III)I
    .locals 4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ooooooooooooo specMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    or-int/2addr v0, p1

    return v0

    :sswitch_1
    if-ge v0, p1, :cond_0

    const/high16 v1, 0x1000000

    or-int p1, v0, v1

    goto :goto_0

    :sswitch_2
    move p1, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveAdjustedSize(II)I
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return p1

    :sswitch_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :sswitch_2
    move p1, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private startFadeIn(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/appflood/AFBannerView$5;

    invoke-direct {v1}, Lcom/appflood/AFBannerView$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    return-void
.end method

.method private startFadeOut(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/appflood/AFBannerView$4;

    invoke-direct {v1, p0, p1}, Lcom/appflood/AFBannerView$4;-><init>(Lcom/appflood/AFBannerView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    return-void
.end method


# virtual methods
.method public getOriginalParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(I)I
    .locals 0

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 6

    const-wide/16 v2, 0x1f4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/appflood/AFBannerView;->f:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/appflood/AFBannerView;->f:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/appflood/AFBannerView;->f:Ljava/util/Timer;

    new-instance v1, Lcom/appflood/AFBannerView$3;

    invoke-direct {v1, p0}, Lcom/appflood/AFBannerView$3;-><init>(Lcom/appflood/AFBannerView;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onClose()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appflood/AFBannerView;->close(Z)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/appflood/AFBannerView;->close(Z)V

    return-void
.end method

.method public onFinish(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const-string v0, "result"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/appflood/AFBannerView$2;

    invoke-direct {v1, p0}, Lcom/appflood/AFBannerView$2;-><init>(Lcom/appflood/AFBannerView;)V

    invoke-static {v1}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/appflood/c/e;->a(ZI)V

    return-void

    :cond_1
    const-string v1, "video_error"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/appflood/AFBannerView;->g:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout  changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " l "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v11, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget v0, p0, Lcom/appflood/AFBannerView;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/appflood/AFBannerView;->k:I

    int-to-float v1, v1

    div-float v6, v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oooooooooooooooo  wid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " heightSpecMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eq v0, v7, :cond_2

    move v4, v3

    :goto_0
    if-eq v1, v7, :cond_3

    move v5, v3

    :goto_1
    if-nez v4, :cond_0

    if-eqz v5, :cond_4

    :cond_0
    iget v0, p0, Lcom/appflood/AFBannerView;->j:I

    invoke-direct {p0, v0, p1}, Lcom/appflood/AFBannerView;->resolveAdjustedSize(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    iget v1, p0, Lcom/appflood/AFBannerView;->k:I

    invoke-direct {p0, v1, p2}, Lcom/appflood/AFBannerView;->resolveAdjustedSize(II)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    int-to-float v7, v0

    int-to-float v8, v1

    div-float/2addr v7, v8

    sub-float/2addr v7, v6

    :try_start_2
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v7, v7, v9

    if-lez v7, :cond_8

    if-eqz v4, :cond_7

    int-to-float v4, v1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    if-gt v4, v0, :cond_7

    move v0, v3

    move v2, v4

    :goto_2
    if-nez v0, :cond_6

    if-eqz v5, :cond_6

    int-to-float v0, v2

    div-float/2addr v0, v6

    float-to-int v0, v0

    if-gt v0, v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/appflood/AFBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v11, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    :cond_1
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v11, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onmeasure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  hhh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-virtual {p0, v1, v0}, Lcom/appflood/AFBannerView;->setMeasuredDimension(II)V

    :goto_4
    return-void

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    move v5, v2

    goto :goto_1

    :cond_4
    :try_start_3
    iget v0, p0, Lcom/appflood/AFBannerView;->j:I

    invoke-virtual {p0}, Lcom/appflood/AFBannerView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/appflood/AFBannerView;->k:I

    invoke-virtual {p0}, Lcom/appflood/AFBannerView;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/appflood/AFBannerView;->myResolveSizeAndState(III)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v3, p2, v0}, Lcom/appflood/AFBannerView;->myResolveSizeAndState(III)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    goto :goto_3

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_4

    :catch_0
    move-exception v0

    move v0, v2

    move v1, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move v1, v0

    move v0, v2

    goto :goto_3

    :catch_2
    move-exception v2

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_3

    :catch_3
    move-exception v0

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_3

    :cond_7
    move v12, v2

    move v2, v0

    move v0, v12

    goto :goto_2

    :cond_8
    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_3
.end method

.method public setAutoFresh(Z)V
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    iput-boolean p1, v0, Lcom/appflood/c/a;->a:Z

    :cond_0
    return-void
.end method

.method public setShowDelegate(Lcom/appflood/AppFlood$AFBannerShowDelegate;)V
    .locals 6

    const-wide/16 v2, 0x1f4

    iput-object p1, p0, Lcom/appflood/AFBannerView;->i:Lcom/appflood/AppFlood$AFBannerShowDelegate;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "banner"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/appflood/AFBannerView$1;

    invoke-direct {v1, p0, v0}, Lcom/appflood/AFBannerView$1;-><init>(Lcom/appflood/AFBannerView;Ljava/util/Timer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setSize(III)V
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appflood/c/a;->a(III)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iput p1, p0, Lcom/appflood/AFBannerView;->e:I

    iget v0, p0, Lcom/appflood/AFBannerView;->e:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/16 v0, 0x316

    iput v0, p0, Lcom/appflood/AFBannerView;->j:I

    const/16 v0, 0x84

    iput v0, p0, Lcom/appflood/AFBannerView;->k:I

    :cond_0
    iget-object v0, p0, Lcom/appflood/AFBannerView;->a:Lcom/appflood/c/a;

    iput p1, v0, Lcom/appflood/c/a;->c:I

    return-void
.end method
