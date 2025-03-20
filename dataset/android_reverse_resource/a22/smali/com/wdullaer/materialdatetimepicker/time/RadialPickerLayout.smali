.class public Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private A:Landroid/view/accessibility/AccessibilityManager;

.field private B:Landroid/animation/AnimatorSet;

.field private C:Landroid/os/Handler;

.field private final a:I

.field private final b:I

.field private c:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private d:Lcom/wdullaer/materialdatetimepicker/time/i;

.field private e:Lcom/wdullaer/materialdatetimepicker/time/c;

.field private f:Z

.field private g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private h:Z

.field private i:I

.field private j:Lcom/wdullaer/materialdatetimepicker/time/b;

.field private k:Lcom/wdullaer/materialdatetimepicker/time/a;

.field private l:Lcom/wdullaer/materialdatetimepicker/time/f;

.field private m:Lcom/wdullaer/materialdatetimepicker/time/f;

.field private n:Lcom/wdullaer/materialdatetimepicker/time/f;

.field private o:Lcom/wdullaer/materialdatetimepicker/time/d;

.field private p:Lcom/wdullaer/materialdatetimepicker/time/d;

.field private q:Lcom/wdullaer/materialdatetimepicker/time/d;

.field private r:Landroid/view/View;

.field private s:[I

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    invoke-virtual {p0, p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->b:I

    iput-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->v:Z

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/b;

    invoke-direct {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->j:Lcom/wdullaer/materialdatetimepicker/time/b;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->j:Lcom/wdullaer/materialdatetimepicker/time/b;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-direct {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-direct {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-direct {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-direct {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-direct {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-direct {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-direct {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->c:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->t:Z

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    sget v1, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_transparent_black:I

    invoke-static {p1, v1}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->A:Landroid/view/accessibility/AccessibilityManager;

    iput-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->f:Z

    return-void
.end method

.method private a(FFZ[Ljava/lang/Boolean;)I
    .locals 1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(II)I
    .locals 4

    const/16 v2, 0x1e

    div-int v0, p0, v2

    mul-int/2addr v0, v2

    add-int v1, v0, v2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    if-ne p0, v0, :cond_0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    sub-int v2, p0, v0

    sub-int v3, v1, p0

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 7

    const/4 v3, 0x6

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x168

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v5

    if-nez p3, :cond_4

    if-eq v5, v4, :cond_1

    if-ne v5, v6, :cond_4

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->b(I)I

    move-result v0

    :goto_2
    packed-switch v5, :pswitch_data_0

    :goto_3
    :pswitch_0
    if-nez v5, :cond_8

    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-eqz v6, :cond_7

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    move v0, v1

    :cond_2
    :goto_4
    div-int v3, v0, v3

    if-nez v5, :cond_3

    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-eqz v6, :cond_3

    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    add-int/lit8 v3, v3, 0xc

    :cond_3
    packed-switch v5, :pswitch_data_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    invoke-static {p1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(II)I

    move-result v0

    goto :goto_2

    :pswitch_1
    const/16 v3, 0x1e

    goto :goto_3

    :cond_6
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_2

    move v0, v2

    goto :goto_4

    :cond_7
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_4

    :cond_8
    if-ne v0, v1, :cond_2

    if-eq v5, v4, :cond_9

    if-ne v5, v6, :cond_2

    :cond_9
    move v0, v2

    goto :goto_4

    :pswitch_2
    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v5

    if-ne v5, v4, :cond_a

    if-eq v0, v1, :cond_a

    add-int/lit8 v3, v3, 0xc

    :cond_a
    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-nez v4, :cond_b

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v4

    if-nez v4, :cond_b

    if-ne v0, v1, :cond_b

    move v3, v2

    :cond_b
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v2

    invoke-direct {v0, v3, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->c:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object p1
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 2

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/n;->a:Lcom/wdullaer/materialdatetimepicker/time/n;

    invoke-interface {v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/time/i;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/n;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/n;->b:Lcom/wdullaer/materialdatetimepicker/time/n;

    invoke-interface {v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/time/i;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/n;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/n;->c:Lcom/wdullaer/materialdatetimepicker/time/n;

    invoke-interface {v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/time/i;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/n;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a()V
    .locals 7

    const/16 v6, 0x169

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-array v1, v6, [I

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->s:[I

    const/16 v1, 0x8

    move v4, v0

    move v3, v0

    move v0, v1

    move v1, v2

    :goto_0
    if-ge v4, v6, :cond_3

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->s:[I

    aput v3, v5, v4

    if-ne v1, v0, :cond_2

    add-int/lit8 v1, v3, 0x6

    const/16 v0, 0x168

    if-ne v1, v0, :cond_0

    const/4 v0, 0x7

    :goto_1
    move v3, v1

    move v1, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    rem-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_1

    const/16 v0, 0xe

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(ILcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 2

    invoke-direct {p0, p2, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    return-void
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    return-void
.end method

.method private a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V
    .locals 4

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(I)Z

    move-result v1

    rem-int/lit8 v2, v0, 0xc

    mul-int/lit16 v2, v2, 0x168

    div-int/lit8 v2, v2, 0xc

    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-nez v3, :cond_1

    rem-int/lit8 v0, v0, 0xc

    :cond_1
    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    add-int/lit8 v0, v0, 0xc

    :cond_2
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v3, v2, v1, p2}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(IZZ)V

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->setSelection(I)V

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x3c

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v2, v0, v1, p2}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(IZZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->setSelection(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x3c

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v2, v0, v1, p2}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(IZZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/f;->setSelection(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v1, v0, v2, p2}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(IZZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/f;->setSelection(I)V

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v1, v0, v2, p2}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(IZZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/f;->setSelection(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v1, v0, v2, p2}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(IZZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/f;->setSelection(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->invalidate()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->invalidate()V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->invalidate()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->invalidate()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->invalidate()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->invalidate()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->v:Z

    return p1
.end method

.method private b(I)I
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->s:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->s:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method static synthetic b(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/i;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    return-object v0
.end method

.method static synthetic c(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    return v0
.end method

.method static synthetic e(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/a;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    return-object v0
.end method

.method static synthetic f(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->x:I

    return v0
.end method

.method static synthetic g(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->c:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method private getCurrentlyShowingValue()I
    .locals 1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic h(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/c;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e:Lcom/wdullaer/materialdatetimepicker/time/c;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p1, v4, :cond_0

    const-string v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimePicker does not support view at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->i:I

    if-eqz p2, :cond_8

    if-eq p1, v2, :cond_8

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/d;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v5

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->B:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    if-ne v2, v0, :cond_4

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/d;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v5

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/d;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v5

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/d;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v5

    goto/16 :goto_1

    :cond_6
    if-ne p1, v4, :cond_7

    if-ne v2, v0, :cond_7

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/d;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v5

    goto/16 :goto_1

    :cond_7
    if-ne p1, v4, :cond_1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/d;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v5

    goto/16 :goto_1

    :cond_8
    if-nez p1, :cond_9

    move v3, v0

    :goto_2
    if-ne p1, v0, :cond_a

    move v2, v0

    :goto_3
    if-ne p1, v4, :cond_b

    :goto_4
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    int-to-float v4, v3

    invoke-virtual {v1, v4}, Lcom/wdullaer/materialdatetimepicker/time/f;->setAlpha(F)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/wdullaer/materialdatetimepicker/time/d;->setAlpha(F)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Lcom/wdullaer/materialdatetimepicker/time/f;->setAlpha(F)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/d;->setAlpha(F)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->setAlpha(F)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->setAlpha(F)V

    goto/16 :goto_0

    :cond_9
    move v3, v1

    goto :goto_2

    :cond_a
    move v2, v1

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_4
.end method

.method public a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/j;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->f:Z

    if-eqz v2, :cond_0

    const-string v2, "RadialPickerLayout"

    const-string v3, "Time has already been initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->A:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->j:Lcom/wdullaer/materialdatetimepicker/time/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/b;->a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/i;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->j:Lcom/wdullaer/materialdatetimepicker/time/b;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/b;->invalidate()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v2}, Lcom/wdullaer/materialdatetimepicker/time/a;->a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/i;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/a;->invalidate()V

    :cond_2
    new-instance v9, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$1;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    new-instance v10, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    new-instance v7, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/16 v2, 0xc

    new-array v11, v2, [I

    fill-array-data v11, :array_0

    const/16 v2, 0xc

    new-array v6, v2, [I

    fill-array-data v6, :array_1

    const/16 v2, 0xc

    new-array v8, v2, [I

    fill-array-data v8, :array_2

    const/16 v2, 0xc

    new-array v12, v2, [I

    fill-array-data v12, :array_3

    const/16 v2, 0xc

    new-array v4, v2, [Ljava/lang/String;

    const/16 v2, 0xc

    new-array v5, v2, [Ljava/lang/String;

    const/16 v2, 0xc

    new-array v13, v2, [Ljava/lang/String;

    const/16 v2, 0xc

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    const/16 v2, 0xc

    if-ge v3, v2, :cond_6

    if-eqz p4, :cond_5

    const-string v2, "%02d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget v17, v6, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v4, v3

    const-string v2, "%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget v17, v11, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    const-string v2, "%02d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget v17, v8, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v3

    const-string v2, "%02d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget v17, v12, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_5
    const-string v2, "%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget v17, v11, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    if-eqz p4, :cond_7

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    const/4 v8, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/wdullaer/materialdatetimepicker/time/f;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/time/i;Lcom/wdullaer/materialdatetimepicker/time/h;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    if-eqz p4, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v2

    :goto_6
    invoke-virtual {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->l:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v7, v10

    invoke-virtual/range {v2 .. v8}, Lcom/wdullaer/materialdatetimepicker/time/f;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/time/i;Lcom/wdullaer/materialdatetimepicker/time/h;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/f;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->m:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object v4, v14

    move-object v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/wdullaer/materialdatetimepicker/time/f;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/time/i;Lcom/wdullaer/materialdatetimepicker/time/h;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/f;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->n:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/f;->invalidate()V

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v2

    rem-int/lit8 v2, v2, 0xc

    mul-int/lit8 v7, v2, 0x1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->o:Lcom/wdullaer/materialdatetimepicker/time/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    const/4 v6, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(I)Z

    move-result v8

    move-object/from16 v3, p1

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v8}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/i;ZZIZ)V

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v2

    mul-int/lit8 v7, v2, 0x6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->p:Lcom/wdullaer/materialdatetimepicker/time/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/i;ZZIZ)V

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v2

    mul-int/lit8 v7, v2, 0x6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->q:Lcom/wdullaer/materialdatetimepicker/time/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/wdullaer/materialdatetimepicker/time/d;->a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/i;ZZIZ)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->f:Z

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v2

    rem-int/lit8 v2, v2, 0xc

    aget v2, v11, v2

    goto/16 :goto_6

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public a(Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->w:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->t:Z

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->r:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x81

    :goto_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 3

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current item showing was unfortunately set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->i:I

    goto :goto_0
.end method

.method public getHours()I
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v0

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinutes()I
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v0

    return v0
.end method

.method public getTime()Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    new-array v4, v1, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    :cond_1
    :goto_1
    return v1

    :pswitch_0
    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->t:Z

    if-eqz v5, :cond_1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->y:F

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->z:F

    iput-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->c:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->v:Z

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->w:Z

    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v5, v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/a;->a(FF)I

    move-result v5

    iput v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    :goto_2
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-ne v5, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/time/i;->e()V

    iput v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->x:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$4;

    invoke-direct {v2, p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$4;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->b:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iput v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->A:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    invoke-direct {p0, v0, v3, v5, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->x:I

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->x:I

    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/i;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->x:I

    :cond_5
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->x:I

    if-eq v0, v8, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/time/i;->e()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;

    invoke-direct {v2, p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->b:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_1
    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->t:Z

    if-nez v5, :cond_6

    const-string v0, "RadialPickerLayout"

    const-string v2, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->z:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->y:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-boolean v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->v:Z

    if-nez v7, :cond_7

    iget v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_7

    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    :cond_7
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-ne v5, v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v1, v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/a;->a(FF)I

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v0, v8}, Lcom/wdullaer/materialdatetimepicker/time/a;->setAmOrPmPressed(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/a;->invalidate()V

    iput v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    goto/16 :goto_0

    :cond_9
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->x:I

    if-eq v5, v8, :cond_0

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->v:Z

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    if-eq v0, v8, :cond_1

    aget-object v3, v4, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v0, v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->c:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->c:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->d:Lcom/wdullaer/materialdatetimepicker/time/i;

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/time/i;->e()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->c:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e:Lcom/wdullaer/materialdatetimepicker/time/c;

    invoke-interface {v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/c;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    goto/16 :goto_1

    :pswitch_2
    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->t:Z

    if-nez v5, :cond_a

    const-string v0, "RadialPickerLayout"

    const-string v2, "Input was disabled, but received ACTION_UP."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e:Lcom/wdullaer/materialdatetimepicker/time/c;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/time/c;->a()V

    goto/16 :goto_1

    :cond_a
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->C:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->w:Z

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-ne v5, v1, :cond_f

    :cond_b
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v4, v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/a;->a(FF)I

    move-result v0

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v3, v8}, Lcom/wdullaer/materialdatetimepicker/time/a;->setAmOrPmPressed(I)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/a;->invalidate()V

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-ne v0, v3, :cond_d

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/a;->setAmOrPm(I)V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v3

    if-eq v3, v0, :cond_d

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-nez v3, :cond_e

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->f()V

    :cond_c
    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e:Lcom/wdullaer/materialdatetimepicker/time/c;

    invoke-interface {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/c;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    :cond_d
    iput v8, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    goto/16 :goto_0

    :cond_e
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->u:I

    if-ne v3, v1, :cond_c

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->g()V

    goto :goto_3

    :cond_f
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->x:I

    if-eq v5, v8, :cond_10

    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->v:Z

    invoke-direct {p0, v0, v3, v5, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(FFZ[Ljava/lang/Boolean;)I

    move-result v3

    if-eq v3, v8, :cond_10

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->v:Z

    if-nez v0, :cond_11

    move v0, v1

    :goto_4
    invoke-direct {p0, v3, v4, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e:Lcom/wdullaer/materialdatetimepicker/time/c;

    invoke-interface {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/c;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e:Lcom/wdullaer/materialdatetimepicker/time/c;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/c;->a(I)V

    :cond_10
    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->v:Z

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_4

    move v4, v3

    :goto_1
    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v5

    if-nez v5, :cond_5

    const/16 v0, 0x1e

    rem-int/lit8 v2, v2, 0xc

    :cond_2
    :goto_2
    mul-int/2addr v2, v0

    invoke-static {v2, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(II)I

    move-result v2

    div-int/2addr v2, v0

    if-nez v5, :cond_7

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->h:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x17

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_3
    if-le v2, v1, :cond_8

    move v1, v0

    :cond_3
    :goto_4
    packed-switch v5, :pswitch_data_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    :goto_5
    invoke-direct {p0, v5, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(ILcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e:Lcom/wdullaer/materialdatetimepicker/time/c;

    invoke-interface {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/c;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    move v1, v3

    goto :goto_0

    :cond_4
    const/16 v2, 0x2000

    if-ne p1, v2, :cond_9

    const/4 v2, -0x1

    move v4, v2

    goto :goto_1

    :cond_5
    if-eq v5, v3, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    move v0, v1

    goto :goto_2

    :cond_6
    const/16 v1, 0xc

    move v0, v3

    goto :goto_3

    :cond_7
    const/16 v0, 0x37

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3

    :cond_8
    if-lt v2, v0, :cond_3

    move v1, v2

    goto :goto_4

    :pswitch_0
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v2

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    goto :goto_5

    :pswitch_1
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v2

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v4

    invoke-direct {v0, v2, v1, v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    goto :goto_5

    :pswitch_2
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->a()I

    move-result v2

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v4

    invoke-direct {v0, v2, v4, v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    goto :goto_5

    :cond_9
    move v4, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAmOrPm(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/a;->setAmOrPm(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->k:Lcom/wdullaer/materialdatetimepicker/time/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/a;->invalidate()V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->f()V

    :cond_0
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->g:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e:Lcom/wdullaer/materialdatetimepicker/time/c;

    invoke-interface {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/c;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->g()V

    goto :goto_0
.end method

.method public setOnValueSelectedListener(Lcom/wdullaer/materialdatetimepicker/time/c;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->e:Lcom/wdullaer/materialdatetimepicker/time/c;

    return-void
.end method

.method public setTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(ILcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    return-void
.end method
