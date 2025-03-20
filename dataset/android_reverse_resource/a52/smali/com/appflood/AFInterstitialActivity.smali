.class public Lcom/appflood/AFInterstitialActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/appflood/c/c$a;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/appflood/c/c;

.field private i:F

.field private j:F

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/AFInterstitialActivity;->h:Lcom/appflood/c/c;

    iput v1, p0, Lcom/appflood/AFInterstitialActivity;->i:F

    iput v1, p0, Lcom/appflood/AFInterstitialActivity;->j:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appflood/AFInterstitialActivity;->k:Z

    const/16 v0, 0x1a2

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->l:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->m:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->n:I

    const/16 v0, 0xca

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->o:I

    const/16 v0, 0xd9

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->p:I

    const/16 v0, 0x74

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->q:I

    const/16 v0, 0x1ea

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->r:I

    const/16 v0, 0xc4

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->s:I

    const/16 v0, 0x2b

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->t:I

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->h:Lcom/appflood/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->h:Lcom/appflood/c/c;

    iput-object v1, v0, Lcom/appflood/c/c;->c:Landroid/view/View;

    iput-object v1, p0, Lcom/appflood/AFInterstitialActivity;->h:Lcom/appflood/c/c;

    :cond_0
    invoke-virtual {p0}, Lcom/appflood/AFInterstitialActivity;->finish()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/appflood/AFInterstitialActivity$1;

    invoke-direct {v0, p0}, Lcom/appflood/AFInterstitialActivity$1;-><init>(Lcom/appflood/AFInterstitialActivity;)V

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v1

    iget v1, v1, Lcom/appflood/c/g;->c:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/appflood/c/f;->a(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final a(Z)V
    .locals 10

    const/high16 v6, 0x3f000000    # 0.5f

    const v1, 0x3dcccccd    # 0.1f

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, p1, v3}, Lcom/appflood/c/e;->a(ZI)V

    if-eqz p1, :cond_0

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/appflood/AFInterstitialActivity;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->h:Lcom/appflood/c/c;

    :try_start_0
    sget v1, Lcom/appflood/e/c;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/appflood/c/c;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/appflood/c/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/appflood/AFInterstitialActivity;->b()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v2, 0x5

    const/4 v8, -0x2

    const/16 v7, 0xe

    const/4 v1, 0x0

    const/4 v6, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appflood/AFInterstitialActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/appflood/AFInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "isFull"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appflood/AFInterstitialActivity;->k:Z

    iget-boolean v0, p0, Lcom/appflood/AFInterstitialActivity;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/appflood/AFInterstitialActivity;->r:I

    invoke-static {p0}, Lcom/appflood/AFListActivity$c$1;->c(Landroid/app/Activity;)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->r:I

    :cond_0
    sget v0, Lcom/appflood/e/c;->g:I

    int-to-float v0, v0

    const/high16 v3, 0x43f00000    # 480.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->i:F

    sget v0, Lcom/appflood/e/c;->h:I

    int-to-float v0, v0

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFInterstitialActivity;->j:F

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Lcom/appflood/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "interstitial_inter_bg.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/appflood/AFInterstitialActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFInterstitialActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->e:Landroid/widget/ImageView;

    const/16 v3, 0x65

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    iget v0, p0, Lcom/appflood/AFInterstitialActivity;->n:I

    int-to-float v0, v0

    iget v3, p0, Lcom/appflood/AFInterstitialActivity;->i:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/appflood/AFInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->e:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/appflood/AFInterstitialActivity;->l:I

    int-to-float v0, v0

    iget v4, p0, Lcom/appflood/AFInterstitialActivity;->i:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget v4, p0, Lcom/appflood/AFInterstitialActivity;->m:I

    int-to-float v4, v4

    iget v5, p0, Lcom/appflood/AFInterstitialActivity;->i:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/appflood/AFInterstitialActivity;->o:I

    int-to-float v0, v0

    iget v4, p0, Lcom/appflood/AFInterstitialActivity;->j:F

    mul-float/2addr v4, v0

    sget v0, Lcom/appflood/e/c;->g:I

    const/16 v5, 0x140

    if-gt v0, v5, :cond_1

    const/16 v0, 0x14

    :goto_0
    int-to-float v0, v0

    sub-float v0, v4, v0

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appflood/AFInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFInterstitialActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->d:Landroid/widget/Button;

    const/16 v3, 0x66

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->d:Landroid/widget/Button;

    const-string v3, "interstitial_download.png"

    const-string v4, "interstitial_download2.png"

    invoke-static {v0, v3, v4}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/appflood/AFInterstitialActivity;->p:I

    int-to-float v0, v0

    iget v4, p0, Lcom/appflood/AFInterstitialActivity;->i:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget v4, p0, Lcom/appflood/AFInterstitialActivity;->q:I

    int-to-float v4, v4

    iget v5, p0, Lcom/appflood/AFInterstitialActivity;->i:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v0, p0, Lcom/appflood/AFInterstitialActivity;->r:I

    int-to-float v0, v0

    iget v4, p0, Lcom/appflood/AFInterstitialActivity;->j:F

    mul-float/2addr v4, v0

    sget v0, Lcom/appflood/e/c;->g:I

    const/16 v5, 0x140

    if-gt v0, v5, :cond_2

    move v0, v2

    :goto_1
    int-to-float v0, v0

    sub-float v0, v4, v0

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appflood/AFInterstitialActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFInterstitialActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->a:Landroid/widget/Button;

    const-string v3, "interstitial_continue_0.png"

    const-string v4, "interstitial_continue_1.png"

    invoke-static {v0, v3, v4}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->a:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/appflood/AFInterstitialActivity;->s:I

    int-to-float v3, v3

    iget v4, p0, Lcom/appflood/AFInterstitialActivity;->i:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/appflood/AFInterstitialActivity;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/appflood/AFInterstitialActivity;->i:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/appflood/AFInterstitialActivity;->d:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appflood/AFInterstitialActivity;->a:Landroid/widget/Button;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/appflood/AFInterstitialActivity;->b:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appflood/AFInterstitialActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x1010079

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/appflood/AFInterstitialActivity;->f:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/appflood/AFInterstitialActivity;->b:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/appflood/AFInterstitialActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFInterstitialActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->g:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/appflood/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->g:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/appflood/AFInterstitialActivity;->b:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/appflood/AFInterstitialActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/appflood/c/c;

    iget-object v2, p0, Lcom/appflood/AFInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-direct {v0, v2, p0}, Lcom/appflood/c/c;-><init>(Landroid/view/View;Lcom/appflood/c/c$a;)V

    iput-object v0, p0, Lcom/appflood/AFInterstitialActivity;->h:Lcom/appflood/c/c;

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->h:Lcom/appflood/c/c;

    iput-boolean v1, v0, Lcom/appflood/c/c;->g:Z

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appflood/AFInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/appflood/AFInterstitialActivity;->b()V

    goto :goto_0
.end method
