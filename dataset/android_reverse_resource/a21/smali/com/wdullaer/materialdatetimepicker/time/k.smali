.class Lcom/wdullaer/materialdatetimepicker/time/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/i;


# direct methods
.method private constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/i;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/k;->a:Lcom/wdullaer/materialdatetimepicker/time/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/i;Lcom/wdullaer/materialdatetimepicker/time/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/k;-><init>(Lcom/wdullaer/materialdatetimepicker/time/i;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/k;->a:Lcom/wdullaer/materialdatetimepicker/time/i;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/i;->invalidate()V

    return-void
.end method
