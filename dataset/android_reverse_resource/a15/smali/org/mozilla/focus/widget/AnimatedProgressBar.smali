.class public final Lorg/mozilla/focus/widget/AnimatedProgressBar;
.super Landroid/widget/ProgressBar;
.source "AnimatedProgressBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedProgressBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedProgressBar.kt\norg/mozilla/focus/widget/AnimatedProgressBar\n*L\n1#1,199:1\n*E\n"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final CLOSING_DELAY:I = 0x12c

# The value of this static final field might be set in the static constructor
.field private static final CLOSING_DURATION:I = 0x12c

.field public static final Companion:Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;

# The value of this static final field might be set in the static constructor
.field private static final DEFAULT_DURATION:I = 0x3e8

.field private static final DEFAULT_RESOURCE_ID:I = 0x0

# The value of this static final field might be set in the static constructor
.field private static final PROGRESS_DURATION:I = 0xc8


# instance fields
.field private final animatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private clipRegion:F

.field private final closingAnimator:Landroid/animation/ValueAnimator;

.field private expectedProgress:I

.field private isRtl:Z

.field private primaryAnimator:Landroid/animation/ValueAnimator;

.field private tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    new-instance v0, Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->Companion:Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;

    .line 191
    const/16 v0, 0xc8

    sput v0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->PROGRESS_DURATION:I

    .line 192
    sput v2, Lorg/mozilla/focus/widget/AnimatedProgressBar;->CLOSING_DELAY:I

    .line 193
    sput v2, Lorg/mozilla/focus/widget/AnimatedProgressBar;->CLOSING_DURATION:I

    .line 195
    const/16 v0, 0x3e8

    sput v0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->DEFAULT_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;-><init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->animatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 37
    invoke-direct {p0, p1, v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;-><init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->animatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    .line 26
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;-><init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->animatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    .line 26
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar$animatorListener$1;-><init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->animatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$getCLOSING_DELAY$cp()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->CLOSING_DELAY:I

    return v0
.end method

.method public static final synthetic access$getCLOSING_DURATION$cp()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->CLOSING_DURATION:I

    return v0
.end method

.method public static final synthetic access$getClipRegion$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;)F
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/widget/AnimatedProgressBar;

    .prologue
    .line 24
    iget v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->clipRegion:F

    return v0
.end method

.method public static final synthetic access$getClosingAnimator$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/widget/AnimatedProgressBar;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_DURATION$cp()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->DEFAULT_DURATION:I

    return v0
.end method

.method public static final synthetic access$getDEFAULT_RESOURCE_ID$cp()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->DEFAULT_RESOURCE_ID:I

    return v0
.end method

.method public static final synthetic access$getPROGRESS_DURATION$cp()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->PROGRESS_DURATION:I

    return v0
.end method

.method public static final synthetic access$getPrimaryAnimator$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/widget/AnimatedProgressBar;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->primaryAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static final synthetic access$setClipRegion$p(Lorg/mozilla/focus/widget/AnimatedProgressBar;F)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/widget/AnimatedProgressBar;
    .param p1, "<set-?>"    # F

    .prologue
    .line 24
    iput p1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->clipRegion:F

    return-void
.end method

.method public static final synthetic access$setProgressImmediately(Lorg/mozilla/focus/widget/AnimatedProgressBar;I)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/widget/AnimatedProgressBar;
    .param p1, "progress"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setProgressImmediately(I)V

    return-void
.end method

.method public static final synthetic access$setVisibilityImmediately(Lorg/mozilla/focus/widget/AnimatedProgressBar;I)V
    .locals 0
    .param p0, "$this"    # Lorg/mozilla/focus/widget/AnimatedProgressBar;
    .param p1, "value"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setVisibilityImmediately(I)V

    return-void
.end method

.method private final animateClosing()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 125
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->isRtl:Z

    .line 127
    iget-object v1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 129
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 130
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    new-instance v1, Lorg/mozilla/focus/widget/AnimatedProgressBar$animateClosing$1;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar$animateClosing$1;-><init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V

    check-cast v1, Ljava/lang/Runnable;

    sget-object v2, Lorg/mozilla/focus/widget/AnimatedProgressBar;->Companion:Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;

    invoke-static {v2}, Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;->access$getCLOSING_DELAY$p(Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    :cond_1
    return-void

    .line 125
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final buildWrapDrawable(Landroid/graphics/drawable/Drawable;ZII)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isWrap"    # Z
    .param p3, "duration"    # I
    .param p4, "resID"    # I

    .prologue
    .line 179
    if-eqz p2, :cond_1

    .line 180
    if-lez p4, :cond_0

    .line 181
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 184
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    new-instance v1, Lorg/mozilla/focus/widget/ShiftDrawable;

    invoke-direct {v1, p1, p3, v0}, Lorg/mozilla/focus/widget/ShiftDrawable;-><init>(Landroid/graphics/drawable/Drawable;ILandroid/view/animation/Interpolator;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 179
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :goto_1
    return-object v1

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 186
    goto :goto_1
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    sget-object v5, Lorg/mozilla/focus/R$styleable;->AnimatedProgressBar:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 139
    .local v1, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lorg/mozilla/focus/widget/AnimatedProgressBar;->Companion:Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;

    invoke-static {v5}, Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;->access$getDEFAULT_DURATION$p(Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;)I

    move-result v5

    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 140
    .local v2, "duration":I
    sget-object v5, Lorg/mozilla/focus/widget/AnimatedProgressBar;->Companion:Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;

    invoke-static {v5}, Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;->access$getDEFAULT_RESOURCE_ID$p(Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;)I

    move-result v5

    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 141
    .local v3, "resID":I
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 143
    .local v4, "wrap":Z
    new-array v5, v6, [I

    invoke-virtual {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getProgress()I

    move-result v6

    aput v6, v5, v7

    invoke-virtual {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getMax()I

    move-result v6

    aput v6, v5, v8

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 144
    .local v0, "$receiver":Landroid/animation/ValueAnimator;
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    sget-object v5, Lorg/mozilla/focus/widget/AnimatedProgressBar;->Companion:Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;

    invoke-static {v5}, Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;->access$getPROGRESS_DURATION$p(Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object v5, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->animatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 147
    nop

    .line 143
    iput-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->primaryAnimator:Landroid/animation/ValueAnimator;

    .line 149
    iget-object v5, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v6, Lorg/mozilla/focus/widget/AnimatedProgressBar;->Companion:Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;

    invoke-static {v6}, Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;->access$getCLOSING_DURATION$p(Lorg/mozilla/focus/widget/AnimatedProgressBar$Companion;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    iget-object v6, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    iget-object v6, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$2;

    invoke-direct {v5, p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$2;-><init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V

    check-cast v5, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    iget-object v6, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$3;

    invoke-direct {v5, p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar$init$3;-><init>(Lorg/mozilla/focus/widget/AnimatedProgressBar;)V

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "progressDrawable"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5, v4, v2, v3}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->buildWrapDrawable(Landroid/graphics/drawable/Drawable;ZII)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    return-void
.end method

.method private final setProgressImmediately(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 135
    return-void
.end method

.method private final setVisibilityImmediately(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-string v2, "canvas"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget v2, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->clipRegion:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 90
    iget-object v2, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->clipRegion:F

    mul-float v0, v2, v3

    .line 91
    .local v0, "clipWidth":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 93
    .local v1, "saveCount":I
    iget-boolean v2, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->isRtl:Z

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 95
    iget-object v3, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 96
    iget-object v4, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    .line 97
    iget-object v5, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 94
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 103
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 100
    iget-object v3, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 101
    iget-object v4, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    .line 102
    iget-object v5, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->tempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    .line 99
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_1
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x0

    .line 62
    move v1, p1

    .line 63
    .local v1, "nextProgress":I
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getMax()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 65
    iput v1, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->expectedProgress:I

    .line 68
    iget v2, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->expectedProgress:I

    if-ge v2, p1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getMax()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 69
    invoke-direct {p0, v3}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setProgressImmediately(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->primaryAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 73
    .local v0, "$receiver":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 74
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 75
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    nop

    .line 72
    if-eqz v0, :cond_2

    .line 78
    .end local v0    # "$receiver":Landroid/animation/ValueAnimator;
    :goto_0
    iget-object v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->closingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 79
    .restart local v0    # "$receiver":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 83
    :goto_1
    nop

    .line 84
    .end local v0    # "$receiver":Landroid/animation/ValueAnimator;
    :cond_1
    return-void

    :cond_2
    move-object v0, p0

    .line 76
    check-cast v0, Lorg/mozilla/focus/widget/AnimatedProgressBar;

    .local v0, "$receiver":Lorg/mozilla/focus/widget/AnimatedProgressBar;
    invoke-direct {v0, v1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setProgressImmediately(I)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 81
    .local v0, "$receiver":Landroid/animation/ValueAnimator;
    :cond_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 82
    const/4 v2, 0x0

    iput v2, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->clipRegion:F

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 109
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 110
    iget v0, p0, Lorg/mozilla/focus/widget/AnimatedProgressBar;->expectedProgress:I

    invoke-virtual {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 111
    invoke-direct {p0}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->animateClosing()V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setVisibilityImmediately(I)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/focus/widget/AnimatedProgressBar;->setVisibilityImmediately(I)V

    goto :goto_0
.end method
