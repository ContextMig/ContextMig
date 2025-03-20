.class public Lcom/appflood/AFPanelActivity;
.super Landroid/app/Activity;


# static fields
.field private static u:I


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcom/appflood/f/g;

.field private c:Lcom/appflood/f/h;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:F

.field private t:F

.field private v:I

.field private w:Z

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/appflood/AFPanelActivity;->u:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x3a

    const/16 v3, 0x10

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->b:Lcom/appflood/f/g;

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->c:Lcom/appflood/f/h;

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->d:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->e:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->f:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->g:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, Lcom/appflood/AFPanelActivity;->h:F

    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    iput v4, p0, Lcom/appflood/AFPanelActivity;->j:I

    const/16 v0, 0x46

    iput v0, p0, Lcom/appflood/AFPanelActivity;->k:I

    iput v3, p0, Lcom/appflood/AFPanelActivity;->l:I

    iput v3, p0, Lcom/appflood/AFPanelActivity;->m:I

    iput v4, p0, Lcom/appflood/AFPanelActivity;->p:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/appflood/AFPanelActivity;->q:I

    iput v2, p0, Lcom/appflood/AFPanelActivity;->r:I

    iput v1, p0, Lcom/appflood/AFPanelActivity;->s:F

    iput v1, p0, Lcom/appflood/AFPanelActivity;->t:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appflood/AFPanelActivity;->w:Z

    iput-boolean v2, p0, Lcom/appflood/AFPanelActivity;->x:Z

    return-void
.end method

.method private a()V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget v0, p0, Lcom/appflood/AFPanelActivity;->r:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/appflood/AFPanelActivity;->i:F

    neg-float v1, v1

    sub-float/2addr v1, v3

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_0
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/appflood/AFPanelActivity$2;

    invoke-direct {v0, p0}, Lcom/appflood/AFPanelActivity$2;-><init>(Lcom/appflood/AFPanelActivity;)V

    invoke-static {v0, v5, v6}, Lcom/appflood/c/f;->a(Ljava/util/TimerTask;J)V

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/appflood/c/e;->a(ZLorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/appflood/AFPanelActivity;->i:F

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/appflood/AFPanelActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appflood/AFPanelActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/appflood/AFPanelActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/appflood/AFPanelActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/high16 v5, 0x44480000    # 800.0f

    const/high16 v4, 0x42680000    # 58.0f

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appflood/AFPanelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "showType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/appflood/AFPanelActivity;->r:I

    const-string v1, "isFull"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/appflood/AFPanelActivity;->w:Z

    const-string v1, "isPortrait"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/appflood/AFPanelActivity;->x:Z

    const-string v1, "titlebar"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->v:I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appflood/AFPanelActivity;->requestWindowFeature(I)Z

    iget-boolean v0, p0, Lcom/appflood/AFPanelActivity;->x:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/appflood/e/c;->j:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/appflood/AFPanelActivity;->setRequestedOrientation(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/appflood/AFPanelActivity;->w:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appflood/AFPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/appflood/AFPanelActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/appflood/AFPanelActivity;->h:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    iget-boolean v0, p0, Lcom/appflood/AFPanelActivity;->w:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    iget v1, p0, Lcom/appflood/AFPanelActivity;->v:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    :cond_2
    invoke-virtual {p0}, Lcom/appflood/AFPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-boolean v0, p0, Lcom/appflood/AFPanelActivity;->x:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFPanelActivity;->t:F

    const/high16 v0, 0x42740000    # 61.0f

    iget v1, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->j:I

    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->k:I

    const v0, 0x43c38000    # 391.0f

    iget v1, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/appflood/AFPanelActivity;->o:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->o:F

    const v1, 0x44348000    # 722.0f

    mul-float/2addr v0, v1

    const v1, 0x43c38000    # 391.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/appflood/AFPanelActivity;->n:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFPanelActivity;->s:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->n:F

    iget v1, p0, Lcom/appflood/AFPanelActivity;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const v0, 0x44348000    # 722.0f

    iget v1, p0, Lcom/appflood/AFPanelActivity;->h:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/appflood/AFPanelActivity;->n:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->n:F

    const v1, 0x43c38000    # 391.0f

    mul-float/2addr v0, v1

    const v1, 0x44348000    # 722.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/appflood/AFPanelActivity;->o:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    iget v1, p0, Lcom/appflood/AFPanelActivity;->j:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/appflood/AFPanelActivity;->l:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/appflood/AFPanelActivity;->o:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->k:I

    iget v0, p0, Lcom/appflood/AFPanelActivity;->h:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/appflood/AFPanelActivity;->s:F

    :cond_3
    iget v0, p0, Lcom/appflood/AFPanelActivity;->h:F

    iget v1, p0, Lcom/appflood/AFPanelActivity;->n:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->m:I

    iget v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    iget v1, p0, Lcom/appflood/AFPanelActivity;->o:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/appflood/AFPanelActivity;->j:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->l:I

    iget v0, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->p:I

    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->q:I

    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    const v1, -0xf9eed0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Lcom/appflood/f/h;

    iget v1, p0, Lcom/appflood/AFPanelActivity;->s:F

    invoke-direct {v0, p0, v1}, Lcom/appflood/f/h;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->c:Lcom/appflood/f/h;

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->c:Lcom/appflood/f/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appflood/f/h;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/appflood/AFPanelActivity;->j:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/AFPanelActivity;->c:Lcom/appflood/f/h;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->f:Landroid/widget/RelativeLayout;

    const v1, -0xf9eed0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/AFPanelActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->e:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->g:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/appflood/AFPanelActivity;->q:I

    iget v2, p0, Lcom/appflood/AFPanelActivity;->q:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->g:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/AFPanelActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/appflood/AFPanelActivity$1;

    invoke-direct {v1, p0}, Lcom/appflood/AFPanelActivity$1;-><init>(Lcom/appflood/AFPanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/appflood/AFPanelActivity;->p:I

    iget v2, p0, Lcom/appflood/AFPanelActivity;->p:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/AFPanelActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/appflood/f/g;

    iget-boolean v1, p0, Lcom/appflood/AFPanelActivity;->x:Z

    iget v2, p0, Lcom/appflood/AFPanelActivity;->s:F

    sget v3, Lcom/appflood/AFPanelActivity;->u:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/appflood/f/g;-><init>(Landroid/content/Context;ZFI)V

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->b:Lcom/appflood/f/g;

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->b:Lcom/appflood/f/g;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/appflood/AFPanelActivity;->n:F

    float-to-int v3, v3

    iget v4, p0, Lcom/appflood/AFPanelActivity;->o:F

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/appflood/AFPanelActivity;->m:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/appflood/AFPanelActivity;->l:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFPanelActivity;->d:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/appflood/AFPanelActivity;->n:F

    float-to-int v1, v1

    iget v2, p0, Lcom/appflood/AFPanelActivity;->k:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/appflood/AFPanelActivity;->m:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/appflood/AFPanelActivity;->x:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->d:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/AFPanelActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/appflood/AFPanelActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/appflood/c/d;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/appflood/b/b;

    sget-object v1, Lcom/appflood/c/d;->r:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;B)V

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V

    :cond_5
    new-instance v0, Lcom/appflood/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "closeBtn2.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    new-instance v0, Lcom/appflood/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "slogan.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    new-instance v1, Lcom/appflood/b/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/appflood/AFPanelActivity;->x:Z

    if-eqz v0, :cond_b

    const-string v0, "14K-STAR.jpg"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appflood/AFPanelActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/appflood/AFPanelActivity;->r:I

    if-nez v0, :cond_c

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/appflood/AFPanelActivity;->i:F

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_3
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/appflood/AFPanelActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_4
    return-void

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appflood/AFPanelActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_7
    sget v0, Lcom/appflood/e/c;->j:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/appflood/AFPanelActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/appflood/AFPanelActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/appflood/AFPanelActivity;->h:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFPanelActivity;->t:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->j:I

    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->l:I

    sget v0, Lcom/appflood/AFPanelActivity;->u:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x1c0

    int-to-float v0, v0

    iget v1, p0, Lcom/appflood/AFPanelActivity;->h:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFPanelActivity;->n:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->n:F

    const v1, 0x4423c000    # 655.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43e00000    # 448.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/appflood/AFPanelActivity;->o:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->h:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFPanelActivity;->s:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->o:F

    iget v1, p0, Lcom/appflood/AFPanelActivity;->j:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/appflood/AFPanelActivity;->l:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/appflood/AFPanelActivity;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    sget v0, Lcom/appflood/AFPanelActivity;->u:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x28f

    int-to-float v0, v0

    iget v1, p0, Lcom/appflood/AFPanelActivity;->i:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    iput v0, p0, Lcom/appflood/AFPanelActivity;->o:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->o:F

    const/high16 v1, 0x43e00000    # 448.0f

    mul-float/2addr v0, v1

    const v1, 0x4423c000    # 655.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/appflood/AFPanelActivity;->n:F

    iget v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/appflood/AFPanelActivity;->s:F

    :cond_a
    iget v0, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->j:I

    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->l:I

    iget v0, p0, Lcom/appflood/AFPanelActivity;->h:F

    iget v1, p0, Lcom/appflood/AFPanelActivity;->n:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->m:I

    iget v0, p0, Lcom/appflood/AFPanelActivity;->i:F

    iget v1, p0, Lcom/appflood/AFPanelActivity;->j:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/appflood/AFPanelActivity;->o:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/appflood/AFPanelActivity;->l:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->k:I

    iget v0, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->p:I

    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p0, Lcom/appflood/AFPanelActivity;->t:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/appflood/AFPanelActivity;->q:I

    goto/16 :goto_1

    :cond_b
    const-string v0, "24K-STAR.jpg"

    goto/16 :goto_2

    :cond_c
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/appflood/AFPanelActivity;->i:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/appflood/AFPanelActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
