.class Landroid/support/v4/a/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/a/i;->a(Landroid/support/v4/a/d;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/d;

.field final synthetic b:Landroid/support/v4/a/i;


# direct methods
.method constructor <init>(Landroid/support/v4/a/i;Landroid/support/v4/a/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/i$1;->b:Landroid/support/v4/a/i;

    iput-object p2, p0, Landroid/support/v4/a/i$1;->a:Landroid/support/v4/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/a/i$1;->a:Landroid/support/v4/a/d;

    iget-object v1, p0, Landroid/support/v4/a/i$1;->b:Landroid/support/v4/a/i;

    invoke-interface {v0, v1}, Landroid/support/v4/a/d;->onAnimationUpdate(Landroid/support/v4/a/j;)V

    return-void
.end method
