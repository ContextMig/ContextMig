.class public final Ldouzifly/list/widget/b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Ldouzifly/list/widget/ColorPicker;

.field private b:Z

.field private final c:Landroid/view/View;

.field private final d:I


# direct methods
.method public constructor <init>(Ldouzifly/list/widget/ColorPicker;Landroid/view/View;I)V
    .locals 2

    const-string v0, "view"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/widget/b;->a:Ldouzifly/list/widget/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldouzifly/list/widget/b;->c:Landroid/view/View;

    iput p3, p0, Ldouzifly/list/widget/b;->d:I

    iget-object v0, p0, Ldouzifly/list/widget/b;->c:Landroid/view/View;

    iget v1, p0, Ldouzifly/list/widget/b;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private final b()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Ldouzifly/list/widget/b;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    iget-object v1, p0, Ldouzifly/list/widget/b;->c:Landroid/view/View;

    const-string v2, "scaleX"

    new-array v3, v6, [F

    aput v0, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Ldouzifly/list/widget/b;->c:Landroid/view/View;

    const-string v3, "scaleY"

    new-array v4, v6, [F

    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    check-cast v0, Landroid/animation/Animator;

    aput-object v0, v3, v5

    move-object v0, v1

    check-cast v0, Landroid/animation/Animator;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ldouzifly/list/widget/b;->d:I

    return v0
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Ldouzifly/list/widget/b;->b:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Ldouzifly/list/widget/b;->b:Z

    invoke-direct {p0}, Ldouzifly/list/widget/b;->b()V

    goto :goto_0
.end method
