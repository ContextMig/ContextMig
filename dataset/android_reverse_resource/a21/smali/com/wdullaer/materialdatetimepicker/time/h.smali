.class Lcom/wdullaer/materialdatetimepicker/time/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/f;


# direct methods
.method private constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/f;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/h;->a:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/f;Lcom/wdullaer/materialdatetimepicker/time/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/h;-><init>(Lcom/wdullaer/materialdatetimepicker/time/f;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/h;->a:Lcom/wdullaer/materialdatetimepicker/time/f;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/f;->invalidate()V

    return-void
.end method
