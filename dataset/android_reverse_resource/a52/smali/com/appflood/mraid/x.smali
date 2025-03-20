.class public final Lcom/appflood/mraid/x;
.super Lcom/appflood/mraid/b;


# instance fields
.field a:Z

.field b:Z

.field c:Landroid/os/Handler;

.field protected d:F

.field protected e:I

.field protected f:I

.field private g:Lcom/appflood/mraid/B;

.field private final h:Lcom/appflood/mraid/u;

.field private final i:Lcom/appflood/mraid/z;

.field private final j:Lcom/appflood/mraid/w;

.field private k:Lcom/appflood/mraid/AFBannerWebView;

.field private l:Landroid/widget/FrameLayout;

.field private m:Ljava/lang/Runnable;

.field private final n:I

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Landroid/widget/ImageView;

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/widget/FrameLayout;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/appflood/mraid/AFBannerWebView;Lcom/appflood/mraid/u;Lcom/appflood/mraid/z;Lcom/appflood/mraid/w;)V
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/appflood/mraid/b;-><init>(Lcom/appflood/mraid/AFBannerWebView;)V

    sget-object v0, Lcom/appflood/mraid/B;->d:Lcom/appflood/mraid/B;

    iput-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appflood/mraid/x;->b:Z

    new-instance v0, Lcom/appflood/mraid/C;

    invoke-direct {v0, p0}, Lcom/appflood/mraid/C;-><init>(Lcom/appflood/mraid/x;)V

    iput-object v0, p0, Lcom/appflood/mraid/x;->m:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appflood/mraid/x;->c:Landroid/os/Handler;

    new-instance v0, Lcom/appflood/mraid/D;

    invoke-direct {v0, p0}, Lcom/appflood/mraid/D;-><init>(Lcom/appflood/mraid/x;)V

    iput-object v0, p0, Lcom/appflood/mraid/x;->o:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appflood/mraid/x;->q:Z

    iput v1, p0, Lcom/appflood/mraid/x;->e:I

    iput v1, p0, Lcom/appflood/mraid/x;->f:I

    iput v1, p0, Lcom/appflood/mraid/x;->r:I

    iput v1, p0, Lcom/appflood/mraid/x;->s:I

    iput v1, p0, Lcom/appflood/mraid/x;->t:I

    iput-object p2, p0, Lcom/appflood/mraid/x;->h:Lcom/appflood/mraid/u;

    iput-object p3, p0, Lcom/appflood/mraid/x;->i:Lcom/appflood/mraid/z;

    iput-object p4, p0, Lcom/appflood/mraid/x;->j:Lcom/appflood/mraid/w;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/appflood/mraid/x;->n:I

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/mraid/x;->w:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/mraid/x;->y:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/mraid/x;->v:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/appflood/mraid/B;->a:Lcom/appflood/mraid/B;

    iput-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-direct {p0}, Lcom/appflood/mraid/x;->f()V

    iget-object v0, p0, Lcom/appflood/mraid/x;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appflood/mraid/x;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/appflood/mraid/x;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appflood/mraid/x;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/x;->o:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/appflood/mraid/x;)I
    .locals 2

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/appflood/mraid/x;II)V
    .locals 2

    iget v0, p0, Lcom/appflood/mraid/x;->s:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/appflood/mraid/x;->t:I

    if-eq p2, v0, :cond_1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/appflood/mraid/x;->s:I

    iput p2, p0, Lcom/appflood/mraid/x;->t:I

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    new-instance v1, Lcom/appflood/mraid/I;

    invoke-direct {v1, p1, p2}, Lcom/appflood/mraid/I;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->b(Lcom/appflood/mraid/G;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/appflood/mraid/x;)V
    .locals 3

    invoke-direct {p0}, Lcom/appflood/mraid/x;->f()V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget v1, p0, Lcom/appflood/mraid/x;->e:I

    iget v2, p0, Lcom/appflood/mraid/x;->f:I

    invoke-static {v1, v2}, Lcom/appflood/mraid/H;->a(II)Lcom/appflood/mraid/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Lcom/appflood/mraid/G;)V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->d()V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->e()V

    return-void
.end method

.method private b(Z)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/appflood/mraid/x;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/appflood/mraid/x;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appflood/mraid/x;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/appflood/mraid/x;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    iget v3, p0, Lcom/appflood/mraid/x;->u:I

    iget-object v4, p0, Lcom/appflood/mraid/x;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/appflood/mraid/x;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/appflood/mraid/x;->q:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    sget-object v2, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    invoke-virtual {p0, v1, v2}, Lcom/appflood/mraid/x;->a(ZLcom/appflood/mraid/B;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/appflood/mraid/x;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/appflood/mraid/x;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/appflood/mraid/x;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appflood/mraid/x;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private c(Z)V
    .locals 2

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    check-cast v0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcom/appflood/mraid/x;->n:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MraidDisplayController"

    const-string v1, "Unable to modify device orientation."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private f()V
    .locals 10

    const-wide/high16 v8, 0x4064000000000000L    # 160.0

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/appflood/mraid/x;->d:F

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v0

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, p0, Lcom/appflood/mraid/x;->e:I

    int-to-double v4, v3

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v0

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, p0, Lcom/appflood/mraid/x;->f:I

    invoke-static {v1}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;)I

    move-result v0

    sub-int v0, v3, v0

    int-to-double v0, v0

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v2, v2

    div-double v2, v8, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/appflood/mraid/x;->r:I

    return-void
.end method

.method private g()V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    if-ne v0, v3, :cond_4

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v5, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iput v2, p0, Lcom/appflood/mraid/x;->u:I

    iget-object v0, p0, Lcom/appflood/mraid/x;->v:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appflood/mraid/x;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appflood/mraid/x;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/appflood/mraid/x;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/appflood/mraid/x;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v1, :cond_3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move-object v3, v1

    move-object v4, v0

    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/appflood/mraid/AFBannerWebView;
    .locals 1

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    return-object v0
.end method

.method protected final a(IIIIZ)V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/appflood/mraid/x;->i:Lcom/appflood/mraid/z;

    sget-object v1, Lcom/appflood/mraid/z;->b:Lcom/appflood/mraid/z;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appflood/mraid/x;->l:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/appflood/mraid/x;->g()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/mraid/x;->z:Landroid/widget/RelativeLayout;

    if-nez p5, :cond_2

    add-int v0, p3, p1

    iget v1, p0, Lcom/appflood/mraid/x;->e:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/appflood/mraid/x;->e:I

    sub-int p1, v0, p3

    :cond_1
    add-int v0, p2, p4

    iget v1, p0, Lcom/appflood/mraid/x;->r:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/appflood/mraid/x;->r:I

    sub-int p2, v0, p4

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v1, p1

    iget v2, p0, Lcom/appflood/mraid/x;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p2

    iget v3, p0, Lcom/appflood/mraid/x;->d:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    int-to-float v1, p3

    iget v2, p0, Lcom/appflood/mraid/x;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v1, p4

    iget v2, p0, Lcom/appflood/mraid/x;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "llllllllll left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " right "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appflood/mraid/x;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mrootw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appflood/mraid/x;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/appflood/mraid/x;->z:Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/appflood/mraid/x;->l:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/appflood/mraid/x;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/appflood/mraid/B;->e:Lcom/appflood/mraid/B;

    iput-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-static {v1}, Lcom/appflood/mraid/J;->a(Lcom/appflood/mraid/B;)Lcom/appflood/mraid/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Lcom/appflood/mraid/G;)V

    goto/16 :goto_0
.end method

.method protected final a(Ljava/lang/String;IIZZ)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/appflood/mraid/x;->h:Lcom/appflood/mraid/u;

    sget-object v1, Lcom/appflood/mraid/u;->b:Lcom/appflood/mraid/u;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    const-string v1, "expand"

    const-string v2, "URL passed to expand() was invalid."

    invoke-virtual {v0, v1, v2}, Lcom/appflood/mraid/AFBannerWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    sget-object v1, Lcom/appflood/mraid/B;->e:Lcom/appflood/mraid/B;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v7}, Lcom/appflood/mraid/x;->b(Z)V

    :cond_2
    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appflood/mraid/x;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p4}, Lcom/appflood/mraid/x;->a(Z)V

    invoke-direct {p0, p5}, Lcom/appflood/mraid/x;->c(Z)V

    invoke-direct {p0}, Lcom/appflood/mraid/x;->g()V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-static {p1}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/appflood/mraid/AFBannerWebView;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/appflood/mraid/u;->b:Lcom/appflood/mraid/u;

    sget-object v3, Lcom/appflood/mraid/z;->a:Lcom/appflood/mraid/z;

    sget-object v4, Lcom/appflood/mraid/w;->c:Lcom/appflood/mraid/w;

    sget-object v5, Lcom/appflood/mraid/y;->a:Lcom/appflood/mraid/y;

    invoke-direct/range {v0 .. v5}, Lcom/appflood/mraid/AFBannerWebView;-><init>(Landroid/content/Context;Lcom/appflood/mraid/u;Lcom/appflood/mraid/z;Lcom/appflood/mraid/w;Lcom/appflood/mraid/y;)V

    iput-object v0, p0, Lcom/appflood/mraid/x;->k:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, p0, Lcom/appflood/mraid/x;->k:Lcom/appflood/mraid/AFBannerWebView;

    new-instance v1, Lcom/appflood/mraid/x$a;

    invoke-direct {v1, p0}, Lcom/appflood/mraid/x$a;-><init>(Lcom/appflood/mraid/x;)V

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->c:Lcom/appflood/mraid/v;

    iput-object v1, v0, Lcom/appflood/mraid/v;->a:Lcom/appflood/mraid/x$a;

    iget-object v0, p0, Lcom/appflood/mraid/x;->k:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0, p1}, Lcom/appflood/mraid/AFBannerWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appflood/mraid/x;->k:Lcom/appflood/mraid/AFBannerWebView;

    :cond_3
    int-to-float v1, p2

    iget v2, p0, Lcom/appflood/mraid/x;->d:F

    mul-float/2addr v1, v2

    float-to-int v3, v1

    int-to-float v1, p3

    iget v2, p0, Lcom/appflood/mraid/x;->d:F

    mul-float/2addr v1, v2

    float-to-int v2, v1

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0x32

    invoke-static {v1, v4}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v1

    if-ge v3, v1, :cond_4

    move v3, v1

    :cond_4
    if-ge v2, v1, :cond_7

    :goto_1
    new-instance v2, Landroid/view/View;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Lcom/appflood/mraid/x$1;

    invoke-direct {v4}, Lcom/appflood/mraid/x$1;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/appflood/mraid/x;->y:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/appflood/mraid/x;->w:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/mraid/x;->y:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/mraid/x;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/mraid/x;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appflood/mraid/x;->y:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/mraid/x;->j:Lcom/appflood/mraid/w;

    sget-object v1, Lcom/appflood/mraid/w;->a:Lcom/appflood/mraid/w;

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/appflood/mraid/x;->q:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/appflood/mraid/x;->j:Lcom/appflood/mraid/w;

    sget-object v1, Lcom/appflood/mraid/w;->b:Lcom/appflood/mraid/w;

    if-eq v0, v1, :cond_6

    :cond_5
    sget-object v0, Lcom/appflood/mraid/B;->c:Lcom/appflood/mraid/B;

    invoke-virtual {p0, v7, v0}, Lcom/appflood/mraid/x;->a(ZLcom/appflood/mraid/B;)V

    :cond_6
    sget-object v0, Lcom/appflood/mraid/B;->c:Lcom/appflood/mraid/B;

    iput-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-static {v1}, Lcom/appflood/mraid/J;->a(Lcom/appflood/mraid/B;)Lcom/appflood/mraid/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Lcom/appflood/mraid/G;)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method protected final a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useCustomClose "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/appflood/mraid/x;->q:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    sget-object v1, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    invoke-virtual {p0, v0, v1}, Lcom/appflood/mraid/x;->a(ZLcom/appflood/mraid/B;)V

    :cond_0
    iput-boolean p1, p0, Lcom/appflood/mraid/x;->q:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(ZLcom/appflood/mraid/B;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNativeCloseButtonEnabled enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v1, v6, [I

    const v2, -0x10100a7

    aput v2, v1, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v6, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    new-instance v0, Lcom/appflood/b/b;

    const-string v1, "http://test2.papayamobile.com:8080/engine/demo/assets/close-button.png"

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/appflood/mraid/x$2;

    invoke-direct {v1, p0}, Lcom/appflood/mraid/x$2;-><init>(Lcom/appflood/mraid/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lcom/appflood/mraid/B;->c:Lcom/appflood/mraid/B;

    if-ne p2, v1, :cond_3

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/appflood/mraid/x;->w:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v1, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    if-eq p2, v1, :cond_4

    sget-object v1, Lcom/appflood/mraid/B;->e:Lcom/appflood/mraid/B;

    if-ne p2, v1, :cond_2

    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_7

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    :cond_5
    :goto_1
    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appflood/mraid/AFBannerWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDefaultLayout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/appflood/mraid/x;->z:Landroid/widget/RelativeLayout;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appflood/mraid/x;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    sget-object v0, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    if-ne p2, v0, :cond_2

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/appflood/mraid/x;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appflood/mraid/x;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/x;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0
.end method

.method public final c()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/appflood/mraid/x;->e:I

    iget v2, p0, Lcom/appflood/mraid/x;->f:I

    invoke-static {v1, v2}, Lcom/appflood/mraid/H;->a(II)Lcom/appflood/mraid/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/appflood/mraid/x;->a:Z

    invoke-static {v1}, Lcom/appflood/mraid/K;->a(Z)Lcom/appflood/mraid/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appflood/mraid/AFBannerWebView;->a(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    iput-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/x;->a(Z)V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-static {v1}, Lcom/appflood/mraid/J;->a(Lcom/appflood/mraid/B;)Lcom/appflood/mraid/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Lcom/appflood/mraid/G;)V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget v1, p0, Lcom/appflood/mraid/x;->e:I

    iget v2, p0, Lcom/appflood/mraid/x;->r:I

    invoke-virtual {v0, v1, v2}, Lcom/appflood/mraid/AFBannerWebView;->a(II)V

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->d()V

    return-void
.end method

.method protected final d()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    sget-object v3, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    if-ne v0, v3, :cond_4

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/appflood/mraid/AFBannerWebView;->setVisibility(I)V

    sget-object v0, Lcom/appflood/mraid/B;->d:Lcom/appflood/mraid/B;

    iput-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/appflood/mraid/x;->x:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-static {v1}, Lcom/appflood/mraid/J;->a(Lcom/appflood/mraid/B;)Lcom/appflood/mraid/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Lcom/appflood/mraid/G;)V

    invoke-virtual {p0}, Lcom/appflood/mraid/x;->b()V

    iput-boolean v2, p0, Lcom/appflood/mraid/x;->b:Z

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->g:Lcom/appflood/c/b;

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->g:Lcom/appflood/c/b;

    invoke-interface {v0}, Lcom/appflood/c/b;->onClose()V

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->c:Lcom/appflood/mraid/v;

    iget-object v0, v0, Lcom/appflood/mraid/v;->a:Lcom/appflood/mraid/x$a;

    if-eqz v0, :cond_3

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->c:Lcom/appflood/mraid/v;

    iget-object v0, v0, Lcom/appflood/mraid/v;->a:Lcom/appflood/mraid/x$a;

    invoke-virtual {v0}, Lcom/appflood/mraid/x$a;->a()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    sget-object v3, Lcom/appflood/mraid/B;->e:Lcom/appflood/mraid/B;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    sget-object v3, Lcom/appflood/mraid/B;->c:Lcom/appflood/mraid/B;

    if-ne v0, v3, :cond_2

    :cond_5
    iget-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    sget-object v3, Lcom/appflood/mraid/B;->e:Lcom/appflood/mraid/B;

    if-ne v0, v3, :cond_6

    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/appflood/mraid/x;->b(Z)V

    invoke-direct {p0, v1}, Lcom/appflood/mraid/x;->c(Z)V

    sget-object v0, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    iput-object v0, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/x;->g:Lcom/appflood/mraid/B;

    invoke-static {v1}, Lcom/appflood/mraid/J;->a(Lcom/appflood/mraid/B;)Lcom/appflood/mraid/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Lcom/appflood/mraid/G;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final e()Z
    .locals 1

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/appflood/mraid/b;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
