.class Lcom/wdullaer/materialdatetimepicker/time/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/d;


# direct methods
.method private constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/d;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/e;->a:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/d;Lcom/wdullaer/materialdatetimepicker/time/d$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/e;-><init>(Lcom/wdullaer/materialdatetimepicker/time/d;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/e;->a:Lcom/wdullaer/materialdatetimepicker/time/d;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/d;->invalidate()V

    return-void
.end method
