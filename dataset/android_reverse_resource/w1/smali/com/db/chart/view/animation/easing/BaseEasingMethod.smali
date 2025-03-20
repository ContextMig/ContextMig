.class public abstract Lcom/db/chart/view/animation/easing/BaseEasingMethod;
.super Ljava/lang/Object;
.source "BaseEasingMethod.java"


# static fields
.field public static final ENTER:I = 0x0

.field public static final EXIT:I = 0x2

.field public static final UPDATE:I = 0x1

.field private static mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract easeIn(F)F
.end method

.method protected abstract easeInOut(F)F
.end method

.method protected abstract easeOut(F)F
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->mState:I

    return v0
.end method

.method public next(F)F
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 46
    sget v0, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->mState:I

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->easeOut(F)F

    move-result v0

    .line 52
    :goto_0
    return v0

    .line 48
    :cond_0
    sget v0, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 49
    invoke-virtual {p0, p1}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->easeInOut(F)F

    move-result v0

    goto :goto_0

    .line 50
    :cond_1
    sget v0, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 51
    invoke-virtual {p0, p1}, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->easeIn(F)F

    move-result v0

    goto :goto_0

    .line 52
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 66
    sput p1, Lcom/db/chart/view/animation/easing/BaseEasingMethod;->mState:I

    .line 67
    return-void
.end method
