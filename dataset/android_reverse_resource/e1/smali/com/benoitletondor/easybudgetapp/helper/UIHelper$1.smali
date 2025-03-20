.class final Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/helper/UIHelper;->animateActivityEnter(Landroid/app/Activity;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x47ffd7ffc6b035b1L    # 6.7724159120122815E38

    const-string v2, "com/benoitletondor/easybudgetapp/helper/UIHelper$1"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/view/View;Landroid/app/Activity;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->$jacocoInit()[Z

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    aput-boolean v6, v0, v6

    .line 138
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "centerX"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    .line 139
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "centerY"

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    aput-boolean v6, v0, v3

    .line 142
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x4

    aput-boolean v6, v0, v4

    .line 145
    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$rootView:Landroid/view/View;

    const/4 v5, 0x0

    int-to-float v3, v3

    invoke-static {v4, v1, v2, v5, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v6, v0, v2

    .line 146
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 147
    new-instance v2, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1$1;

    invoke-direct {v2, p0}, Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1$1;-><init>(Lcom/benoitletondor/easybudgetapp/helper/UIHelper$1;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 155
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 156
    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    return-void
.end method
