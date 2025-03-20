.class public final Lorg/mozilla/focus/animation/TransitionDrawableGroup;
.super Ljava/lang/Object;
.source "TransitionDrawableGroup.kt"


# instance fields
.field private final transitionDrawables:[Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method public varargs constructor <init>([Landroid/graphics/drawable/TransitionDrawable;)V
    .locals 1
    .param p1, "transitionDrawables"    # [Landroid/graphics/drawable/TransitionDrawable;

    .prologue
    const-string v0, "transitionDrawables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/focus/animation/TransitionDrawableGroup;->transitionDrawables:[Landroid/graphics/drawable/TransitionDrawable;

    return-void
.end method


# virtual methods
.method public final resetTransition()V
    .locals 4

    .prologue
    .line 22
    iget-object v2, p0, Lorg/mozilla/focus/animation/TransitionDrawableGroup;->transitionDrawables:[Landroid/graphics/drawable/TransitionDrawable;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 23
    .local v0, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :cond_0
    return-void
.end method

.method public final startTransition(I)V
    .locals 4
    .param p1, "durationMillis"    # I

    .prologue
    .line 16
    iget-object v2, p0, Lorg/mozilla/focus/animation/TransitionDrawableGroup;->transitionDrawables:[Landroid/graphics/drawable/TransitionDrawable;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 17
    .local v0, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    .end local v0    # "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :cond_0
    return-void
.end method
