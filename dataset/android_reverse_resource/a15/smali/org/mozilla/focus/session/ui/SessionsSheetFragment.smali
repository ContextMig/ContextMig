.class public Lorg/mozilla/focus/session/ui/SessionsSheetFragment;
.super Lorg/mozilla/focus/locale/LocaleAwareFragment;
.source "SessionsSheetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backgroundView:Landroid/view/View;

.field private cardView:Landroid/view/View;

.field private isAnimating:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/mozilla/focus/locale/LocaleAwareFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Z)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/session/ui/SessionsSheetFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->playAnimation(Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->cardView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/mozilla/focus/session/ui/SessionsSheetFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->isAnimating:Z

    return p1
.end method

.method private playAnimation(Z)Landroid/animation/Animator;
    .locals 12
    .param p1, "reverse"    # Z

    .prologue
    .line 62
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->isAnimating:Z

    .line 64
    invoke-virtual {p0}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070094

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 65
    .local v3, "offset":I
    iget-object v5, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->cardView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v0, v5, v3

    .line 66
    .local v0, "cx":I
    iget-object v5, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->cardView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v1, v5, v3

    .line 69
    .local v1, "cy":I
    iget-object v5, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->cardView:Landroid/view/View;

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v5, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->cardView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 69
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 72
    .local v2, "fullRadius":F
    iget-object v6, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->cardView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v5, v2

    :goto_0
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .end local v2    # "fullRadius":F
    :cond_0
    invoke-static {v6, v0, v1, v5, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    .line 74
    .local v4, "sheetAnimator":Landroid/animation/Animator;
    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 75
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    new-instance v5, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$2;

    invoke-direct {v5, p0, p1}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$2;-><init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Z)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 91
    iget-object v6, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->backgroundView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    .line 92
    iget-object v5, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->backgroundView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_3

    const/4 v5, 0x0

    .line 93
    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    .line 94
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 95
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 97
    return-object v4

    .line 72
    .end local v4    # "sheetAnimator":Landroid/animation/Animator;
    .restart local v2    # "fullRadius":F
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 91
    .end local v2    # "fullRadius":F
    .restart local v4    # "sheetAnimator":Landroid/animation/Animator;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 92
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2
.end method


# virtual methods
.method animateAndDismiss()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 101
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->playAnimation(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 103
    .local v0, "animator":Landroid/animation/Animator;
    new-instance v1, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$3;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$3;-><init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    return-object v0
.end method

.method public applyLocale()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->animateAndDismiss()Landroid/animation/Animator;

    .line 122
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->closeTabsTrayEvent()V

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->isAnimating:Z

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled view in onClick()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0
    invoke-virtual {p0}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->animateAndDismiss()Landroid/animation/Animator;

    .line 140
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->closeTabsTrayEvent()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x7f090028
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 38
    const v3, 0x7f0b003d

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 40
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->backgroundView:Landroid/view/View;

    .line 41
    iget-object v3, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->backgroundView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v3, 0x7f09003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->cardView:Landroid/view/View;

    .line 44
    iget-object v3, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->cardView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$1;

    iget-object v5, p0, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->cardView:Landroid/view/View;

    invoke-direct {v4, p0, v5}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment$1;-><init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 51
    new-instance v1, Lorg/mozilla/focus/session/ui/SessionsAdapter;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/session/ui/SessionsAdapter;-><init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;)V

    .line 52
    .local v1, "sessionsAdapter":Lorg/mozilla/focus/session/ui/SessionsAdapter;
    invoke-static {}, Lorg/mozilla/focus/session/SessionManager;->getInstance()Lorg/mozilla/focus/session/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/focus/session/SessionManager;->getSessions()Lorg/mozilla/focus/architecture/NonNullLiveData;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lorg/mozilla/focus/architecture/NonNullLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 54
    const v3, 0x7f0900ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 55
    .local v0, "sessionView":Landroid/support/v7/widget/RecyclerView;
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 58
    return-object v2
.end method
