.class public final Lcom/admob/android/ads/ac;
.super Lcom/admob/android/ads/ab;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Lcom/admob/android/ads/ae;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/ac$e;,
        Lcom/admob/android/ads/ac$h;,
        Lcom/admob/android/ads/ac$f;,
        Lcom/admob/android/ads/ac$g;,
        Lcom/admob/android/ads/ac$d;,
        Lcom/admob/android/ads/ac$b;,
        Lcom/admob/android/ads/ac$i;,
        Lcom/admob/android/ads/ac$c;,
        Lcom/admob/android/ads/ac$a;
    }
.end annotation


# instance fields
.field d:Landroid/view/ViewGroup;

.field e:Landroid/widget/VideoView;

.field f:Lcom/admob/android/ads/d;

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:Lcom/admob/android/ads/aa;

.field private l:J

.field private m:Landroid/widget/Button;

.field private n:Ljava/lang/Runnable;

.field private o:Z

.field private p:Lcom/admob/android/ads/ac$b;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/widget/MediaController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1}, Lcom/admob/android/ads/ab;-><init>(Landroid/content/Context;)V

    .line 202
    iput-boolean v1, p0, Lcom/admob/android/ads/ac;->i:Z

    .line 203
    iput-boolean v1, p0, Lcom/admob/android/ads/ac;->j:Z

    .line 215
    iput-object p2, p0, Lcom/admob/android/ads/ac;->q:Ljava/lang/ref/WeakReference;

    .line 216
    new-instance v0, Lcom/admob/android/ads/ac$c;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ac$c;-><init>(Lcom/admob/android/ads/ac;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac;->n:Ljava/lang/Runnable;

    .line 217
    iput-boolean v1, p0, Lcom/admob/android/ads/ac;->h:Z

    .line 218
    iput-boolean v1, p0, Lcom/admob/android/ads/ac;->i:Z

    .line 219
    iput-boolean v1, p0, Lcom/admob/android/ads/ac;->j:Z

    .line 220
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 305
    iget-object v0, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    .line 306
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    .line 308
    new-instance v1, Lcom/admob/android/ads/ac$a;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/ac$a;-><init>(Lcom/admob/android/ads/ac;)V

    .line 309
    iget-object v2, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 310
    iget-object v2, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 311
    iget-object v2, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    iget-object v0, v0, Lcom/admob/android/ads/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 315
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 326
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 327
    iget-object v1, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/admob/android/ads/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->b()V

    .line 331
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 402
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 403
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 404
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 405
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 407
    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/ac;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/admob/android/ads/ac;->g()V

    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/ac;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/admob/android/ads/ac;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/ac;Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 43
    const-string v0, "AdMobSDK"

    const-string v1, "fadeBars()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/admob/android/ads/ac;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ac;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-boolean v0, v0, Lcom/admob/android/ads/aa;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->b()V

    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ac;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-boolean v0, v0, Lcom/admob/android/ads/aa;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->a()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/admob/android/ads/ac;Z)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/admob/android/ads/ac;->b(Z)V

    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 410
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 411
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 412
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 413
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 415
    return-void
.end method

.method private b(Z)V
    .locals 0

    .prologue
    .line 534
    iput-boolean p1, p0, Lcom/admob/android/ads/ac;->o:Z

    .line 536
    if-nez p1, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/admob/android/ads/ac;->g()V

    .line 539
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/admob/android/ads/ac;->p:Lcom/admob/android/ads/ac$b;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ac;->p:Lcom/admob/android/ads/ac$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/ac;->p:Lcom/admob/android/ads/ac$b;

    .line 546
    :cond_0
    return-void
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 672
    iget-object v0, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    invoke-virtual {v0}, Lcom/admob/android/ads/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 674
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    .line 675
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 677
    iget-object v0, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    invoke-virtual {v0}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_0

    .line 679
    iget-object v2, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-object v2, v2, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-object v2, v2, Lcom/admob/android/ads/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 680
    if-eqz v0, :cond_0

    .line 681
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 682
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 683
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    float-to-double v5, v3

    invoke-static {v4, v5, v6}, Lcom/admob/android/ads/j;->a(ID)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    float-to-double v5, v3

    invoke-static {v0, v5, v6}, Lcom/admob/android/ads/j;->a(ID)I

    move-result v0

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 690
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 691
    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 694
    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 696
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 700
    iget-object v1, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0}, Lcom/admob/android/ads/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/ac;->l:J

    .line 705
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/admob/android/ads/ac;->h:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/ac$f;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/ac$f;-><init>(Lcom/admob/android/ads/ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    :goto_0
    return-void

    .line 386
    :cond_0
    new-instance v0, Lcom/admob/android/ads/ac$g;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ac$g;-><init>(Lcom/admob/android/ads/ac;)V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 390
    iget-wide v3, p0, Lcom/admob/android/ads/ac;->l:J

    sub-long/2addr v1, v3

    .line 391
    iget-object v3, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-object v3, v3, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-wide v3, v3, Lcom/admob/android/ads/p;->g:D

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-long v3, v3

    .line 392
    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 393
    iget-object v5, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    sub-long v1, v3, v1

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 644
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/admob/android/ads/ac;->g:I

    .line 645
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    iget v0, p0, Lcom/admob/android/ads/ac;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-boolean v0, v0, Lcom/admob/android/ads/aa;->b:Z

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->a()V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-boolean v0, v0, Lcom/admob/android/ads/aa;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/admob/android/ads/ac;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->b()V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ac;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, -0x2

    const/16 v3, 0x86

    const/4 v11, 0x0

    const/high16 v10, 0x43060000    # 134.0f

    .line 507
    iget-object v0, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ac;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 509
    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/admob/android/ads/ac;->h()V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->a(Landroid/view/View;)V

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    if-eqz v0, :cond_4

    .line 518
    iget-object v6, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget v7, p0, Lcom/admob/android/ads/ac;->b:F

    iget-object v0, v6, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v0, Lcom/admob/android/ads/ac$h;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ac$h;-><init>(Lcom/admob/android/ads/ac;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v8, v4, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-object v8, v8, Lcom/admob/android/ads/p;->l:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    mul-float v0, v10, v7

    float-to-int v0, v0

    mul-float v9, v10, v7

    float-to-int v9, v9

    invoke-virtual {v8, v11, v11, v0, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    mul-float v0, v10, v7

    float-to-int v0, v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setWidth(I)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setHeight(I)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v8, v10, v7

    float-to-int v8, v8

    mul-float v9, v10, v7

    float-to-int v9, v9

    invoke-direct {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/admob/android/ads/ac$h;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ac$h;-><init>(Lcom/admob/android/ads/ac;)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v5, "Replay"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41600000    # 14.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v0, v11, v11, v11, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xe

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v4, v4, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-object v4, v4, Lcom/admob/android/ads/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    new-instance v0, Lcom/admob/android/ads/x;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/admob/android/ads/x;-><init>(Landroid/content/Context;Landroid/view/View;IILandroid/graphics/Bitmap;)V

    iput-object v0, v6, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    iget-object v0, v6, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/admob/android/ads/ac$h;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/ac$h;-><init>(Lcom/admob/android/ads/ac;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v1, v10, v7

    float-to-int v1, v1

    mul-float v2, v10, v7

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, v6, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0}, Lcom/admob/android/ads/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    :cond_2
    if-eqz p1, :cond_3

    .line 520
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-object v1, v0, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v0, v0, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->a(Landroid/view/View;)V

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-boolean v0, v0, Lcom/admob/android/ads/aa;->b:Z

    if-nez v0, :cond_4

    .line 523
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->b()V

    .line 527
    :cond_4
    iget-boolean v0, p0, Lcom/admob/android/ads/ac;->o:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/admob/android/ads/ac;->p:Lcom/admob/android/ads/ac$b;

    if-nez v0, :cond_5

    .line 528
    new-instance v0, Lcom/admob/android/ads/ac$b;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ac$b;-><init>(Lcom/admob/android/ads/ac;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac;->p:Lcom/admob/android/ads/ac$b;

    .line 529
    iget-object v0, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ac;->p:Lcom/admob/android/ads/ac$b;

    const-wide/16 v2, 0x1d4c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    :cond_5
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->b(Landroid/view/View;)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->b(Landroid/view/View;)V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-boolean v0, v0, Lcom/admob/android/ads/aa;->b:Z

    if-nez v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->b()V

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-object v1, v0, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->b(Landroid/view/View;)V

    .line 434
    :cond_3
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->invalidate()V

    .line 436
    iget v0, p0, Lcom/admob/android/ads/ac;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 437
    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-boolean v0, v0, Lcom/admob/android/ads/aa;->b:Z

    if-eqz v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admob/android/ads/ac;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/admob/android/ads/ac;->a:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/ac$f;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/ac$f;-><init>(Lcom/admob/android/ads/ac;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->f()V

    .line 552
    const/4 v0, 0x0

    .line 554
    iget-boolean v1, p0, Lcom/admob/android/ads/ac;->i:Z

    if-eqz v1, :cond_0

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 556
    const-string v1, "event"

    const-string v2, "completed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/admob/android/ads/ac;->f:Lcom/admob/android/ads/d;

    const-string v2, "done"

    invoke-virtual {v1, v2, v0}, Lcom/admob/android/ads/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 561
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->d()V

    .line 562
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/admob/android/ads/ac;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/admob/android/ads/ac;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 567
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 571
    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 665
    iget-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/ac;->removeView(Landroid/view/View;)V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    .line 669
    :cond_0
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x6

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 640
    iput-object v10, p0, Lcom/admob/android/ads/ac;->p:Lcom/admob/android/ads/ac$b;

    iget-object v0, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    if-nez v0, :cond_1

    const-string v0, "AdMobSDK"

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v1, "openerInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-boolean v0, v0, Lcom/admob/android/ads/r;->l:Z

    invoke-direct {p0, v0}, Lcom/admob/android/ads/ac;->b(Z)V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-object v3, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    if-nez v3, :cond_2

    const-string v0, "AdMobSDK"

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v1, "movieInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/admob/android/ads/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "l"

    if-ne v0, v2, :cond_6

    iput v9, p0, Lcom/admob/android/ads/ac;->g:I

    :goto_1
    new-instance v0, Lcom/admob/android/ads/d;

    iget-object v2, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-object v2, v2, Lcom/admob/android/ads/r;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-object v7, v7, Lcom/admob/android/ads/r;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2, v6, v7, v8}, Lcom/admob/android/ads/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac;->f:Lcom/admob/android/ads/d;

    iget-object v0, p0, Lcom/admob/android/ads/ac;->f:Lcom/admob/android/ads/d;

    const-string v2, "video"

    invoke-virtual {v0, v2, v10}, Lcom/admob/android/ads/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/admob/android/ads/ac;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-boolean v0, v0, Lcom/admob/android/ads/r;->l:Z

    if-eqz v0, :cond_7

    const-string v0, "Skip"

    :goto_2
    invoke-static {v0}, Lcom/admob/android/ads/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/admob/android/ads/p;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/admob/android/ads/ac;->h()V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/admob/android/ads/ac;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->a(Landroid/view/View;)V

    :cond_3
    iget-boolean v0, v3, Lcom/admob/android/ads/p;->j:Z

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/admob/android/ads/p;->c()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    new-instance v6, Lcom/admob/android/ads/ac$i;

    invoke-direct {v6, p0, v4}, Lcom/admob/android/ads/ac$i;-><init>(Lcom/admob/android/ads/ac;Z)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    const v6, 0x1080005

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x42580000    # 54.0f

    iget v7, p0, Lcom/admob/android/ads/ac;->b:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x42100000    # 36.0f

    iget v8, p0, Lcom/admob/android/ads/ac;->b:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v6, 0x40000000    # 2.0f

    iget v7, p0, Lcom/admob/android/ads/ac;->b:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x41000000    # 8.0f

    iget v8, p0, Lcom/admob/android/ads/ac;->b:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v0, v5, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    invoke-virtual {p0, v6, v0}, Lcom/admob/android/ads/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->m:Landroid/widget/Button;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->a(Landroid/view/View;)V

    :cond_5
    iget v0, v3, Lcom/admob/android/ads/p;->c:I

    if-ne v0, v9, :cond_8

    iget-object v0, v3, Lcom/admob/android/ads/p;->m:Ljava/util/Vector;

    if-eqz v0, :cond_8

    iget-object v0, v3, Lcom/admob/android/ads/p;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Lcom/admob/android/ads/aa;

    invoke-direct {v0}, Lcom/admob/android/ads/aa;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget-object v0, p0, Lcom/admob/android/ads/ac;->k:Lcom/admob/android/ads/aa;

    iget v4, p0, Lcom/admob/android/ads/ac;->b:F

    iget-object v6, p0, Lcom/admob/android/ads/ac;->c:Lcom/admob/android/ads/r;

    iget-object v7, p0, Lcom/admob/android/ads/ac;->q:Ljava/lang/ref/WeakReference;

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Lcom/admob/android/ads/aa;->a(Landroid/content/Context;Ljava/lang/String;Lcom/admob/android/ads/p;FLcom/admob/android/ads/ac;Lcom/admob/android/ads/r;Ljava/lang/ref/WeakReference;)V

    goto/16 :goto_0

    :cond_6
    iput v4, p0, Lcom/admob/android/ads/ac;->g:I

    goto/16 :goto_1

    :cond_7
    const-string v0, "Done"

    goto/16 :goto_2

    :cond_8
    iget v0, v3, Lcom/admob/android/ads/p;->c:I

    if-nez v0, :cond_9

    move v1, v4

    :goto_3
    iget-object v0, p0, Lcom/admob/android/ads/ac;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/MediaController;

    invoke-direct {v2, v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/admob/android/ads/ac;->r:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/admob/android/ads/ac;->r:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/admob/android/ads/ac;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/admob/android/ads/ac;->r:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto/16 :goto_0

    :cond_9
    move v1, v5

    goto :goto_3
.end method
