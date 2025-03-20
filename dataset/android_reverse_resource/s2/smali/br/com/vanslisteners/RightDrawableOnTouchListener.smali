.class public abstract Lbr/com/vanslisteners/RightDrawableOnTouchListener;
.super Ljava/lang/Object;
.source "RightDrawableOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field private fuzz:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xc12cd8a2a8fcd2fL

    const-string v2, "br/com/vanslisteners/RightDrawableOnTouchListener"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->$jacocoInit()[Z

    move-result-object v1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v2, 0xa

    iput v2, p0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->fuzz:I

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    .line 19
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 20
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    aput-boolean v3, v1, v3

    .line 22
    :goto_0
    aput-boolean v3, v1, v5

    return-void

    .line 20
    :cond_0
    array-length v2, v0

    if-eq v2, v5, :cond_1

    aput-boolean v3, v1, v4

    goto :goto_0

    .line 21
    :cond_1
    aget-object v2, v0, v4

    iput-object v2, p0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public abstract onDrawableTouch(Landroid/view/MotionEvent;)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->$jacocoInit()[Z

    move-result-object v1

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    .line 40
    :goto_0
    const/4 v0, 0x0

    const/16 v2, 0x12

    aput-boolean v5, v1, v2

    :goto_1
    return v0

    .line 31
    :cond_0
    iget-object v0, p0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    const/16 v2, 0x8

    aput-boolean v5, v1, v2

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x9

    aput-boolean v5, v1, v3

    .line 34
    iget-object v3, p0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/16 v4, 0xa

    aput-boolean v5, v1, v4

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v4, v3

    iget v4, p0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->fuzz:I

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    const/16 v0, 0xb

    aput-boolean v5, v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->fuzz:I

    add-int/2addr v3, v4

    if-le v0, v3, :cond_3

    const/16 v0, 0xc

    aput-boolean v5, v1, v0

    goto :goto_0

    :cond_3
    const/16 v0, 0xd

    aput-boolean v5, v1, v0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v3, p0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->fuzz:I

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_4

    const/16 v0, 0xe

    aput-boolean v5, v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->fuzz:I

    add-int/2addr v0, v3

    if-le v2, v0, :cond_5

    const/16 v0, 0xf

    aput-boolean v5, v1, v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    aput-boolean v5, v1, v0

    .line 37
    invoke-virtual {p0, p2}, Lbr/com/vanslisteners/RightDrawableOnTouchListener;->onDrawableTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/16 v2, 0x11

    aput-boolean v5, v1, v2

    goto :goto_1
.end method
