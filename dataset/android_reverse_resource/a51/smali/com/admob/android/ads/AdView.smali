.class public Lcom/admob/android/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/AdView$g;,
        Lcom/admob/android/ads/AdView$d;,
        Lcom/admob/android/ads/AdView$e;,
        Lcom/admob/android/ads/AdView$a;,
        Lcom/admob/android/ads/AdView$b;,
        Lcom/admob/android/ads/AdView$c;,
        Lcom/admob/android/ads/AdView$f;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static s:Landroid/os/Handler;


# instance fields
.field private b:Lcom/admob/android/ads/k;

.field private c:I

.field private d:Z

.field private e:Lcom/admob/android/ads/AdView$d;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/admob/android/ads/AdListener;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:J

.field private p:Lcom/admob/android/ads/AdView$a;

.field private q:Lcom/admob/android/ads/j$b;

.field private r:Lcom/admob/android/ads/AdView$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/admob/android/ads/AdView$f;->a:Lcom/admob/android/ads/AdView$f;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/admob/android/ads/AdView$f;)V

    .line 309
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/admob/android/ads/AdView$f;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/high16 v0, -0x1000000

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 323
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    iput-boolean v4, p0, Lcom/admob/android/ads/AdView;->m:Z

    .line 325
    sget-object v2, Lcom/admob/android/ads/AdView;->a:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 326
    new-instance v2, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->isInEditMode()Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/admob/android/ads/AdView;->a:Ljava/lang/Boolean;

    .line 330
    :cond_0
    sget-object v2, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    if-nez v2, :cond_1

    sget-object v2, Lcom/admob/android/ads/AdView;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 332
    sput-object v2, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    invoke-static {v2}, Lcom/admob/android/ads/j;->a(Landroid/os/Handler;)V

    .line 335
    :cond_1
    iput-object p4, p0, Lcom/admob/android/ads/AdView;->r:Lcom/admob/android/ads/AdView$f;

    .line 337
    sget-object v2, Lcom/admob/android/ads/AdView$f;->a:Lcom/admob/android/ads/AdView$f;

    if-eq p4, v2, :cond_2

    .line 338
    sget-object v2, Lcom/admob/android/ads/j$b;->a:Lcom/admob/android/ads/j$b;

    iput-object v2, p0, Lcom/admob/android/ads/AdView;->q:Lcom/admob/android/ads/j$b;

    .line 342
    :cond_2
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->setDescendantFocusability(I)V

    .line 343
    invoke-virtual {p0, v4}, Lcom/admob/android/ads/AdView;->setClickable(Z)V

    .line 344
    invoke-virtual {p0, v6}, Lcom/admob/android/ads/AdView;->setLongClickable(Z)V

    .line 347
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->setGravity(I)V

    .line 354
    if-eqz p2, :cond_7

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://schemas.android.com/apk/res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    const-string v2, "testing"

    invoke-interface {p2, v4, v2, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 359
    if-eqz v2, :cond_3

    .line 361
    const-string v2, "AdMobSDK"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    const-string v2, "AdMobSDK"

    const-string v3, "AdView\'s \"testing\" XML attribute has been deprecated and will be ignored.  Please delete it from your XML layout and use AdManager.setTestDevices instead."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_3
    const-string v2, "backgroundColor"

    invoke-interface {p2, v4, v2, v0}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 368
    const-string v0, "textColor"

    invoke-interface {p2, v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 369
    if-ltz v0, :cond_4

    .line 371
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setTextColor(I)V

    .line 374
    :cond_4
    const-string v0, "primaryTextColor"

    invoke-interface {p2, v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 375
    const-string v0, "secondaryTextColor"

    invoke-interface {p2, v4, v0, v1}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 377
    const-string v5, "keywords"

    invoke-interface {p2, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/admob/android/ads/AdView;->i:Ljava/lang/String;

    .line 379
    const-string v5, "refreshInterval"

    invoke-interface {p2, v4, v5, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 380
    invoke-virtual {p0, v5}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 382
    const-string v5, "isGoneWithoutAd"

    invoke-interface {p2, v4, v5, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 383
    if-eqz v4, :cond_5

    .line 385
    invoke-virtual {p0, v4}, Lcom/admob/android/ads/AdView;->setGoneWithoutAd(Z)V

    .line 389
    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Lcom/admob/android/ads/AdView;->setBackgroundColor(I)V

    .line 390
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->setPrimaryTextColor(I)V

    .line 391
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setSecondaryTextColor(I)V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->p:Lcom/admob/android/ads/AdView$a;

    .line 397
    sget-object v0, Lcom/admob/android/ads/AdView;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 400
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 401
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getPrimaryTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 403
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 404
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 405
    const-string v2, "Ads by AdMob"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/admob/android/ads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    :goto_1
    return-void

    .line 409
    :cond_6
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->c()V

    goto :goto_1

    :cond_7
    move v2, v1

    move v3, v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/k;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    return-object v0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/j;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    invoke-interface {v0, p0}, Lcom/admob/android/ads/AdListener;->onReceiveAd(Lcom/admob/android/ads/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception raised in your AdListener.onReceiveAd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    invoke-interface {v0, p0}, Lcom/admob/android/ads/AdListener;->onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception raised in your AdListener.onReceiveRefreshedAd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/k;)V

    return-void
.end method

.method private a(Lcom/admob/android/ads/k;)V
    .locals 3

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    .line 1480
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->l:Z

    if-eqz v0, :cond_0

    .line 1482
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1483
    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1484
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 1485
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1486
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1487
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1489
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    .line 955
    monitor-enter p0

    .line 958
    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 962
    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->d()V

    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/admob/android/ads/AdView$d;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/AdView$d;-><init>(Lcom/admob/android/ads/AdView;)V

    iput-object v1, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    sget-object v1, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    iget-object v2, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "AdMobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad refresh scheduled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from now."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 964
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    if-nez v0, :cond_0

    .line 967
    :cond_2
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;Z)Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    return-object v0
.end method

.method static synthetic b(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    .line 53
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/k;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    const v0, -0x41333333    # -0.4f

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v0, v1

    new-instance v0, Lcom/admob/android/ads/an;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/an;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/an;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/admob/android/ads/an;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/an;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/admob/android/ads/AdView$1;

    invoke-direct {v1, p0, p1}, Lcom/admob/android/ads/AdView$1;-><init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/an;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lcom/admob/android/ads/AdView;Z)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->p:Lcom/admob/android/ads/AdView$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/admob/android/ads/AdView$a;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/AdView$a;-><init>(Lcom/admob/android/ads/AdView;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->p:Lcom/admob/android/ads/AdView$a;

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->p:Lcom/admob/android/ads/AdView$a;

    return-object v0
.end method

.method static synthetic c(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)Lcom/admob/android/ads/k;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    return-object p1
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 607
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 608
    invoke-static {v0}, Lcom/admob/android/ads/c;->a(Landroid/content/Context;)V

    .line 612
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->m:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    const-string v0, "AdMobSDK"

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string v0, "AdMobSDK"

    const-string v1, "Cannot requestFreshAd() when the AdView is not visible.  Call AdView.setVisibility(View.VISIBLE) first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->n:Z

    if-eqz v0, :cond_2

    .line 622
    const-string v0, "AdMobSDK"

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "AdMobSDK"

    const-string v1, "Ignoring requestFreshAd() because we are requesting an ad right now already."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->n:Z

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/AdView;->o:J

    .line 633
    new-instance v0, Lcom/admob/android/ads/AdView$b;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/AdView$b;-><init>(Lcom/admob/android/ads/AdView;)V

    invoke-virtual {v0}, Lcom/admob/android/ads/AdView$b;->start()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->i:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/admob/android/ads/AdView$d;->a:Z

    .line 980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->e:Lcom/admob/android/ads/AdView$d;

    .line 982
    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    const-string v0, "AdMobSDK"

    const-string v1, "Cancelled an ad refresh scheduled for the future."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->j:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->c()Lcom/admob/android/ads/j;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/admob/android/ads/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1037
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    const-string v0, "AdMobSDK"

    const-string v1, "Cannot refresh CPM ads.  Ignoring request to refresh the ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_0
    const/4 v0, 0x0

    .line 1049
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/admob/android/ads/AdView;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/AdView$c;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/AdView$c;-><init>(Lcom/admob/android/ads/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/admob/android/ads/AdView;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/admob/android/ads/AdView;->o:J

    return-wide v0
.end method

.method static synthetic h(Lcom/admob/android/ads/AdView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    return v0
.end method

.method static synthetic i(Lcom/admob/android/ads/AdView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->c()V

    return-void
.end method


# virtual methods
.method final a()Lcom/admob/android/ads/j$b;
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->q:Lcom/admob/android/ads/j$b;

    return-object v0
.end method

.method final a(Lcom/admob/android/ads/j;Lcom/admob/android/ads/k;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 779
    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 782
    invoke-virtual {p1}, Lcom/admob/android/ads/j;->b()D

    move-result-wide v1

    .line 783
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_1

    .line 785
    iput-boolean v6, p0, Lcom/admob/android/ads/AdView;->d:Z

    .line 786
    double-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 789
    invoke-direct {p0, v6}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 798
    :goto_0
    iget-boolean v1, p0, Lcom/admob/android/ads/AdView;->m:Z

    .line 799
    if-eqz v1, :cond_0

    .line 801
    iput-boolean v5, p0, Lcom/admob/android/ads/AdView;->m:Z

    .line 804
    :cond_0
    invoke-virtual {p2, p1}, Lcom/admob/android/ads/k;->a(Lcom/admob/android/ads/j;)V

    .line 805
    invoke-virtual {p2, v0}, Lcom/admob/android/ads/k;->setVisibility(I)V

    .line 806
    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Lcom/admob/android/ads/k;->setGravity(I)V

    .line 807
    invoke-virtual {p1, p2}, Lcom/admob/android/ads/j;->a(Lcom/admob/android/ads/k;)V

    .line 810
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/admob/android/ads/j;->f()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/admob/android/ads/j;->a(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/admob/android/ads/j;->g()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/admob/android/ads/j;->a(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 813
    invoke-virtual {p2, v2}, Lcom/admob/android/ads/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    sget-object v2, Lcom/admob/android/ads/AdView;->s:Landroid/os/Handler;

    new-instance v3, Lcom/admob/android/ads/AdView$e;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/admob/android/ads/AdView$e;-><init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 817
    return-void

    .line 793
    :cond_1
    iput-boolean v5, p0, Lcom/admob/android/ads/AdView;->d:Z

    goto :goto_0
.end method

.method final b()Lcom/admob/android/ads/AdView$f;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->r:Lcom/admob/android/ads/AdView$f;

    return-object v0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->e()V

    .line 1629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    .line 1631
    :cond_0
    return-void
.end method

.method public getAdListener()Lcom/admob/android/ads/AdListener;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Lcom/admob/android/ads/AdView;->f:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .prologue
    .line 1167
    iget v0, p0, Lcom/admob/android/ads/AdView;->g:I

    return v0
.end method

.method public getRequestInterval()I
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Lcom/admob/android/ads/AdView;->c:I

    div-int/lit16 v0, v0, 0x3e8

    .line 889
    return v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/admob/android/ads/AdView;->h:I

    return v0
.end method

.method public getTextColor()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1153
    const-string v0, "AdMobSDK"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    const-string v0, "AdMobSDK"

    const-string v1, "Calling the deprecated method getTextColor!  Please use getPrimaryTextColor and getSecondaryTextColor instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getPrimaryTextColor()I

    move-result v0

    return v0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->c()Lcom/admob/android/ads/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoneWithoutAd()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1310
    const-string v0, "AdMobSDK"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    const-string v0, "AdMobSDK"

    const-string v1, "Deprecated method isGoneWithoutAd was called.  See JavaDoc for instructions to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1453
    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->l:Z

    .line 1454
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1455
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1456
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1464
    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->l:Z

    .line 1465
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1466
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1467
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 419
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 422
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getMeasuredWidth()I

    move-result v0

    .line 423
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getMeasuredHeight()I

    move-result v1

    .line 425
    const-string v2, "AdMobSDK"

    invoke-static {v2, v5}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdView size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    sget-object v1, Lcom/admob/android/ads/AdView;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 433
    int-to-float v0, v0

    invoke-static {}, Lcom/admob/android/ads/k;->d()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 434
    int-to-float v0, v0

    const/high16 v1, 0x439b0000    # 310.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 435
    const-string v0, "AdMobSDK"

    invoke-static {v0, v5}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    const-string v0, "AdMobSDK"

    const-string v1, "We need to have a minimum width of 320 device independent pixels to show an ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/k;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    :cond_2
    :goto_0
    return-void

    .line 450
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getVisibility()I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/k;->setVisibility(I)V

    .line 454
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->b:Lcom/admob/android/ads/k;

    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/k;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 446
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1122
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 1131
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1132
    return-void

    .line 1131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFreshAd()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 564
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->d:Z

    if-eqz v0, :cond_1

    .line 566
    const-string v0, "AdMobSDK"

    invoke-static {v0, v4}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "AdMobSDK"

    const-string v1, "Request interval overridden by the server.  Ignoring requestFreshAd."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/admob/android/ads/AdView;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 576
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0xd

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 578
    const-string v2, "AdMobSDK"

    invoke-static {v2, v4}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring requestFreshAd.  Called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds since last refresh.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Refreshes must be at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apart."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 589
    :cond_2
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->c()V

    goto :goto_0
.end method

.method public setAdListener(Lcom/admob/android/ads/AdListener;)V
    .locals 1

    .prologue
    .line 1406
    monitor-enter p0

    .line 1408
    :try_start_0
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->k:Lcom/admob/android/ads/AdListener;

    .line 1409
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 1227
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->f:I

    .line 1229
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    .line 1230
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 1383
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 1386
    if-eqz p1, :cond_0

    .line 1388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 1394
    :goto_0
    return-void

    .line 1392
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGoneWithoutAd(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1299
    const-string v0, "AdMobSDK"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    const-string v0, "AdMobSDK"

    const-string v1, "Deprecated method setGoneWithoutAd was called.  See JavaDoc for instructions to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->i:Ljava/lang/String;

    .line 1257
    return-void
.end method

.method public setPrimaryTextColor(I)V
    .locals 1

    .prologue
    .line 1183
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->g:I

    .line 1184
    return-void
.end method

.method public setRequestInterval(I)V
    .locals 5

    .prologue
    const/16 v4, 0x258

    const/16 v3, 0xd

    const/4 v2, 0x5

    .line 907
    mul-int/lit16 v0, p1, 0x3e8

    .line 909
    iget v1, p0, Lcom/admob/android/ads/AdView;->c:I

    if-eq v1, v0, :cond_3

    .line 911
    if-lez p1, :cond_1

    .line 915
    if-ge p1, v3, :cond_4

    .line 918
    const-string v0, "AdMobSDK"

    invoke-static {v0, v2}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdView.setRequestInterval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") seconds must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    const/16 v0, 0x32c8

    .line 932
    :cond_1
    :goto_0
    iput v0, p0, Lcom/admob/android/ads/AdView;->c:I

    .line 935
    if-gtz p1, :cond_2

    .line 938
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->d()V

    .line 940
    :cond_2
    const-string v0, "AdMobSDK"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 941
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting fresh ads every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_3
    return-void

    .line 923
    :cond_4
    if-le p1, v4, :cond_1

    .line 926
    const-string v0, "AdMobSDK"

    invoke-static {v0, v2}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 927
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdView.setRequestInterval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") seconds must be <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_5
    const v0, 0x927c0

    goto :goto_0
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->j:Ljava/lang/String;

    .line 1273
    return-void
.end method

.method public setSecondaryTextColor(I)V
    .locals 1

    .prologue
    .line 1211
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->h:I

    .line 1212
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1140
    const-string v0, "AdMobSDK"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    const-string v0, "AdMobSDK"

    const-string v1, "Calling the deprecated method setTextColor!  Please use setPrimaryTextColor and setSecondaryTextColor instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/admob/android/ads/AdView;->setPrimaryTextColor(I)V

    .line 1144
    invoke-virtual {p0, p1}, Lcom/admob/android/ads/AdView;->setSecondaryTextColor(I)V

    .line 1145
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1342
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    .line 1344
    if-eq v1, p1, :cond_1

    .line 1346
    monitor-enter p0

    .line 1349
    :try_start_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1351
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1353
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1354
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1358
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1360
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    .line 1361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    .line 1367
    return-void

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
