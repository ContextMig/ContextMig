.class final Lcom/appflood/AFFullScreenActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFFullScreenActivity;->onFinish(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/appflood/AFFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/appflood/AFFullScreenActivity;ZIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iput-boolean p2, p0, Lcom/appflood/AFFullScreenActivity$1;->a:Z

    iput p3, p0, Lcom/appflood/AFFullScreenActivity$1;->b:I

    iput p4, p0, Lcom/appflood/AFFullScreenActivity$1;->c:I

    iput-object p5, p0, Lcom/appflood/AFFullScreenActivity$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/high16 v6, 0x3f000000    # 0.5f

    const v1, 0x3dcccccd    # 0.1f

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v11, 0xd

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v0, v0, Lcom/appflood/AFFullScreenActivity;->i:I

    int-to-double v3, v0

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    mul-double/2addr v3, v7

    double-to-int v4, v3

    iget-boolean v0, p0, Lcom/appflood/AFFullScreenActivity$1;->a:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/appflood/AFFullScreenActivity$1;->b:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/appflood/AFFullScreenActivity$1;->c:I

    if-lez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/appflood/AFFullScreenActivity$1;->b:I

    iget v2, p0, Lcom/appflood/AFFullScreenActivity$1;->c:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v1, v1, Lcom/appflood/AFFullScreenActivity;->h:Lcom/appflood/f/b;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    new-instance v2, Lcom/appflood/f/b;

    iget-object v3, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v5, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v5, v5, Lcom/appflood/AFFullScreenActivity;->i:I

    invoke-direct {v2, v3, v5}, Lcom/appflood/f/b;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lcom/appflood/AFFullScreenActivity;->h:Lcom/appflood/f/b;

    :cond_0
    iget-object v1, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v1, v1, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v2, v2, Lcom/appflood/AFFullScreenActivity;->h:Lcom/appflood/f/b;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/appflood/AFFullScreenActivity$1;->b:I

    sub-int/2addr v1, v4

    iget v2, p0, Lcom/appflood/AFFullScreenActivity$1;->c:I

    sub-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 666666666   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v2, v2, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v1, v1, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v2, v2, Lcom/appflood/AFFullScreenActivity;->g:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v0, v0, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v0, v0, Lcom/appflood/AFFullScreenActivity;->g:Landroid/view/View;

    instance-of v0, v0, Lcom/appflood/mraid/AFBannerWebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v0, v0, Lcom/appflood/AFFullScreenActivity;->g:Landroid/view/View;

    check-cast v0, Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v3, v0, Lcom/appflood/AFFullScreenActivity;->e:I

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v0, v0, Lcom/appflood/AFFullScreenActivity;->f:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ww "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hh "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v7, "html"

    iget-object v8, p0, Lcom/appflood/AFFullScreenActivity$1;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, -0x1

    const/4 v0, -0x1

    :cond_4
    :goto_1
    if-lez v3, :cond_9

    if-lez v0, :cond_9

    iget-object v7, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v7, v7, Lcom/appflood/AFFullScreenActivity;->h:Lcom/appflood/f/b;

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    new-instance v8, Lcom/appflood/f/b;

    iget-object v9, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v10, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v10, v10, Lcom/appflood/AFFullScreenActivity;->i:I

    invoke-direct {v8, v9, v10}, Lcom/appflood/f/b;-><init>(Landroid/content/Context;I)V

    iput-object v8, v7, Lcom/appflood/AFFullScreenActivity;->h:Lcom/appflood/f/b;

    :cond_5
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v8, v8, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v9, v9, Lcom/appflood/AFFullScreenActivity;->h:Lcom/appflood/f/b;

    invoke-virtual {v8, v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr v3, v4

    sub-int/2addr v0, v4

    move v9, v0

    move v10, v3

    :goto_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v4, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v4, v4, Lcom/appflood/AFFullScreenActivity;->d:Lcom/appflood/c/a;

    iget-object v4, v4, Lcom/appflood/c/a;->f:Landroid/view/View;

    iput-object v4, v3, Lcom/appflood/AFFullScreenActivity;->g:Landroid/view/View;

    iget-object v3, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v3, v3, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget-object v4, v4, Lcom/appflood/AFFullScreenActivity;->g:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-direct {v12, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, v11, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v11, Lcom/appflood/AFFullScreenActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ww "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strokesie "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v1, v1, Lcom/appflood/AFFullScreenActivity;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget v7, p0, Lcom/appflood/AFFullScreenActivity$1;->b:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/appflood/AFFullScreenActivity$1;->c:I

    if-lez v7, :cond_4

    const-string v7, "banner"

    iget-object v8, p0, Lcom/appflood/AFFullScreenActivity$1;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    int-to-float v7, v3

    iget-object v8, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v8, v8, Lcom/appflood/AFFullScreenActivity;->b:F

    int-to-float v9, v4

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v0, v0, Lcom/appflood/AFFullScreenActivity;->b:F

    int-to-float v3, v4

    sub-float/2addr v0, v3

    float-to-int v3, v0

    iget v0, p0, Lcom/appflood/AFFullScreenActivity$1;->c:I

    mul-int/2addr v0, v3

    iget v7, p0, Lcom/appflood/AFFullScreenActivity$1;->b:I

    div-int/2addr v0, v7

    :cond_7
    int-to-float v7, v0

    iget-object v8, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v8, v8, Lcom/appflood/AFFullScreenActivity;->c:F

    int-to-float v9, v4

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    iget-object v0, p0, Lcom/appflood/AFFullScreenActivity$1;->e:Lcom/appflood/AFFullScreenActivity;

    iget v0, v0, Lcom/appflood/AFFullScreenActivity;->c:F

    int-to-float v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iget v3, p0, Lcom/appflood/AFFullScreenActivity$1;->b:I

    mul-int/2addr v3, v0

    iget v7, p0, Lcom/appflood/AFFullScreenActivity$1;->c:I

    div-int/2addr v3, v7

    goto/16 :goto_1

    :cond_8
    iget v3, p0, Lcom/appflood/AFFullScreenActivity$1;->b:I

    iget v0, p0, Lcom/appflood/AFFullScreenActivity$1;->c:I

    goto/16 :goto_1

    :cond_9
    move v9, v0

    move v10, v3

    goto/16 :goto_2
.end method
