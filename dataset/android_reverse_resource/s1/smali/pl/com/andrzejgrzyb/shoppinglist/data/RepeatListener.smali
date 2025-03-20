.class public Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;
.super Ljava/lang/Object;
.source "RepeatListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final clickListener:Landroid/view/View$OnClickListener;

.field private downView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private handlerRunnable:Ljava/lang/Runnable;

.field private initialInterval:I

.field private final normalInterval:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x13e2d0103dc1d63fL    # 6.985303949718066E-213

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/data/RepeatListener"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(IILandroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 23
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->handler:Landroid/os/Handler;

    aput-boolean v3, v0, v3

    .line 29
    new-instance v1, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;

    invoke-direct {v1, p0}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;-><init>(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)V

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    .line 48
    if-nez p3, :cond_0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null runnable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    throw v1

    .line 50
    :cond_0
    if-gez p1, :cond_1

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 51
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "negative interval"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    throw v1

    .line 50
    :cond_1
    if-gez p2, :cond_2

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 53
    :cond_2
    iput p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->initialInterval:I

    .line 54
    iput p2, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->normalInterval:I

    .line 55
    iput-object p3, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->clickListener:Landroid/view/View$OnClickListener;

    .line 56
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-void
.end method

.method static synthetic access$000(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)I
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->normalInterval:I

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)Landroid/os/Handler;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->handler:Landroid/os/Handler;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->downView:Landroid/view/View;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->clickListener:Landroid/view/View$OnClickListener;

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->$jacocoInit()[Z

    move-result-object v2

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 75
    :pswitch_0
    const/16 v3, 0xe

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 61
    :pswitch_1
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x8

    aput-boolean v0, v2, v1

    .line 62
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->initialInterval:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->downView:Landroid/view/View;

    const/16 v1, 0x9

    aput-boolean v0, v2, v1

    .line 64
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->downView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    const/16 v1, 0xa

    aput-boolean v0, v2, v1

    .line 65
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 66
    const/16 v1, 0xb

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->handlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v3, 0xc

    aput-boolean v0, v2, v3

    .line 70
    iget-object v3, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->downView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->downView:Landroid/view/View;

    .line 72
    const/16 v1, 0xd

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
