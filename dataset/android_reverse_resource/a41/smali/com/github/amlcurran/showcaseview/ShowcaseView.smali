.class public Lcom/github/amlcurran/showcaseview/ShowcaseView;
.super Landroid/widget/RelativeLayout;
.source "ShowcaseView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/github/amlcurran/showcaseview/ShowcaseViewApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/amlcurran/showcaseview/ShowcaseView$Builder;,
        Lcom/github/amlcurran/showcaseview/ShowcaseView$TextPosition;
    }
.end annotation


# static fields
.field public static final ABOVE_SHOWCASE:I = 0x1

.field public static final BELOW_SHOWCASE:I = 0x3

.field private static final HOLO_BLUE:I

.field public static final LEFT_OF_SHOWCASE:I = 0x0

.field public static final RIGHT_OF_SHOWCASE:I = 0x2

.field public static final UNDEFINED:I = -0x1


# instance fields
.field private final animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

.field private backgroundColor:I

.field private bitmapBuffer:Landroid/graphics/Bitmap;

.field private blockAllTouches:Z

.field private blockTouches:Z

.field private fadeInMillis:J

.field private fadeOutMillis:J

.field private hasAlteredText:Z

.field private hasCustomClickListener:Z

.field private hasNoTarget:Z

.field private hideOnClickListener:Landroid/view/View$OnClickListener;

.field private hideOnTouch:Z

.field private isShowing:Z

.field private mEndButton:Landroid/widget/Button;

.field private mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

.field private final positionInWindow:[I

.field private scaleMultiplier:F

.field private final shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

.field private shouldCentreText:Z

.field private final showcaseAreaCalculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

.field private showcaseColor:I

.field private showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

.field private showcaseX:I

.field private showcaseY:I

.field private final textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "#33B5E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->HOLO_BLUE:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "newStyle"    # Z

    .prologue
    const v7, 0x10e0001

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    .line 75
    iput v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    .line 76
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->scaleMultiplier:F

    .line 79
    iput-boolean v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasCustomClickListener:Z

    .line 80
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->blockTouches:Z

    .line 81
    iput-boolean v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnTouch:Z

    .line 82
    sget-object v2, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->NONE:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    .line 84
    iput-boolean v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 85
    iput-boolean v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z

    .line 96
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->positionInWindow:[I

    .line 819
    new-instance v2, Lcom/github/amlcurran/showcaseview/ShowcaseView$4;

    invoke-direct {v2, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$4;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnClickListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/github/amlcurran/showcaseview/ApiUtils;

    invoke-direct {v0}, Lcom/github/amlcurran/showcaseview/ApiUtils;-><init>()V

    .line 106
    .local v0, "apiUtils":Lcom/github/amlcurran/showcaseview/ApiUtils;
    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ApiUtils;->isCompatWithHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v2, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;

    invoke-direct {v2}, Lcom/github/amlcurran/showcaseview/AnimatorAnimationFactory;-><init>()V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

    .line 111
    :goto_0
    new-instance v2, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    invoke-direct {v2}, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;-><init>()V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseAreaCalculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    .line 112
    new-instance v2, Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-direct {v2, p1}, Lcom/github/amlcurran/showcaseview/ShotStateStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView:[I

    sget v4, Lcom/github/amlcurran/showcaseview/R$attr;->showcaseViewStyle:I

    sget v5, Lcom/github/amlcurran/showcaseview/R$style;->ShowcaseView:I

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 120
    .local v1, "styled":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeInMillis:J

    .line 121
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeOutMillis:J

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/github/amlcurran/showcaseview/R$layout;->showcase_button:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    .line 124
    if-eqz p4, :cond_1

    .line 125
    new-instance v2, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/github/amlcurran/showcaseview/NewShowcaseDrawer;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    .line 129
    :goto_1
    new-instance v2, Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/github/amlcurran/showcaseview/TextDrawer;-><init>(Landroid/content/res/Resources;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    .line 131
    invoke-direct {p0, v1, v6}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->updateStyle(Landroid/content/res/TypedArray;Z)V

    .line 133
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->init()V

    .line 134
    return-void

    .line 109
    .end local v1    # "styled":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v2, Lcom/github/amlcurran/showcaseview/NoAnimationFactory;

    invoke-direct {v2}, Lcom/github/amlcurran/showcaseview/NoAnimationFactory;-><init>()V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

    goto :goto_0

    .line 127
    .restart local v1    # "styled":Landroid/content/res/TypedArray;
    :cond_1
    new-instance v2, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/github/amlcurran/showcaseview/StandardShowcaseDrawer;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newStyle"    # Z

    .prologue
    .line 99
    const/4 v0, 0x0

    sget v1, Lcom/github/amlcurran/showcaseview/R$styleable;->CustomTheme_showcaseViewStyle:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/ShotStateStore;
    .locals 1
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->canUpdateBitmap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/github/amlcurran/showcaseview/ShowcaseView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setSingleShot(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/text/TextPaint;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Landroid/text/TextPaint;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentTextPaint(Landroid/text/TextPaint;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/text/TextPaint;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Landroid/text/TextPaint;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setContentTitlePaint(Landroid/text/TextPaint;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/widget/Button;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setEndButton(Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setBlockAllTouches(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->updateBitmap()V

    return-void
.end method

.method static synthetic access$302(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z

    return p1
.end method

.method static synthetic access$400(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/AnimationFactory;
    .locals 1
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->clearBitmap()V

    return-void
.end method

.method static synthetic access$602(Lcom/github/amlcurran/showcaseview/ShowcaseView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->isShowing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/github/amlcurran/showcaseview/ShowcaseView;)Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->insertShowcaseView(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/github/amlcurran/showcaseview/ShowcaseView;Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "x1"    # Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)V

    return-void
.end method

.method private canUpdateBitmap()Z
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearBitmap()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    .line 323
    :cond_0
    return-void
.end method

.method private fadeInShowcase()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

    iget-wide v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeInMillis:J

    new-instance v1, Lcom/github/amlcurran/showcaseview/ShowcaseView$3;

    invoke-direct {v1, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$3;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/github/amlcurran/showcaseview/AnimationFactory;->fadeInView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationStartListener;)V

    .line 363
    return-void
.end method

.method private fadeOutShowcase()V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->animationFactory:Lcom/github/amlcurran/showcaseview/AnimationFactory;

    iget-wide v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeOutMillis:J

    new-instance v1, Lcom/github/amlcurran/showcaseview/ShowcaseView$2;

    invoke-direct {v1, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView$2;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/github/amlcurran/showcaseview/AnimationFactory;->fadeOutView(Landroid/view/View;JLcom/github/amlcurran/showcaseview/AnimationFactory$AnimationEndListener;)V

    .line 337
    return-void
.end method

.method private hasShot()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v0

    return v0
.end method

.method private haveBoundsChanged()Z
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideImmediate()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->isShowing:Z

    .line 400
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setVisibility(I)V

    .line 401
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0, p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/github/amlcurran/showcaseview/R$dimen;->button_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 142
    .local v1, "margin":I
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    .local v0, "lps":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 146
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 148
    iget-boolean v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasCustomClickListener:Z

    if-nez v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->addView(Landroid/view/View;)V

    .line 154
    .end local v0    # "lps":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "margin":I
    :cond_1
    return-void
.end method

.method private static insertShowcaseView(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p0, "showcaseView"    # Lcom/github/amlcurran/showcaseview/ShowcaseView;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "parentIndex"    # I

    .prologue
    .line 390
    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 391
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->show()V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideImmediate()V

    goto :goto_0
.end method

.method private recalculateText()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseAreaCalculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    iget v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    invoke-virtual {v4, v5, v6, v7}, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->calculateShowcaseRect(FFLcom/github/amlcurran/showcaseview/ShowcaseDrawer;)Z

    move-result v1

    .line 278
    .local v1, "recalculatedCling":Z
    if-nez v1, :cond_0

    iget-boolean v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 279
    .local v0, "recalculateText":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasShowcaseView()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseAreaCalculator:Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;

    invoke-virtual {v4}, Lcom/github/amlcurran/showcaseview/ShowcaseAreaCalculator;->getShowcaseRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 281
    .local v2, "rect":Landroid/graphics/Rect;
    :goto_1
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v6

    iget-boolean v7, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shouldCentreText:Z

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/github/amlcurran/showcaseview/TextDrawer;->calculateTextPosition(IIZLandroid/graphics/Rect;)V

    .line 283
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    iput-boolean v3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 284
    return-void

    .end local v0    # "recalculateText":Z
    :cond_2
    move v0, v3

    .line 278
    goto :goto_0

    .line 280
    .restart local v0    # "recalculateText":Z
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_1
.end method

.method private setBlockAllTouches(Z)V
    .locals 0
    .param p1, "blockAllTouches"    # Z

    .prologue
    .line 765
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->blockAllTouches:Z

    .line 766
    return-void
.end method

.method private setContentTextPaint(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setContentPaint(Landroid/text/TextPaint;)V

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 686
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 687
    return-void
.end method

.method private setContentTitlePaint(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setTitlePaint(Landroid/text/TextPaint;)V

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 680
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 681
    return-void
.end method

.method private setEndButton(Landroid/widget/Button;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 660
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 661
    .local v0, "copyParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->removeView(Landroid/view/View;)V

    .line 663
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    .line 664
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    invoke-virtual {p0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->addView(Landroid/view/View;)V

    .line 667
    return-void
.end method

.method private setFadeDurations(JJ)V
    .locals 1
    .param p1, "fadeInMillis"    # J
    .param p3, "fadeOutMillis"    # J

    .prologue
    .line 738
    iput-wide p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeInMillis:J

    .line 739
    iput-wide p3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeOutMillis:J

    .line 740
    return-void
.end method

.method private setScaleMultiplier(F)V
    .locals 0
    .param p1, "scaleMultiplier"    # F

    .prologue
    .line 414
    iput p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->scaleMultiplier:F

    .line 415
    return-void
.end method

.method private setShowcaseDrawer(Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;)V
    .locals 2
    .param p1, "showcaseDrawer"    # Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    .line 671
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->backgroundColor:I

    invoke-interface {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->setBackgroundColour(I)V

    .line 672
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseColor:I

    invoke-interface {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->setShowcaseColour(I)V

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 674
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 675
    return-void
.end method

.method private setSingleShot(J)V
    .locals 1
    .param p1, "shotId"    # J

    .prologue
    .line 702
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->setSingleShot(J)V

    .line 703
    return-void
.end method

.method private tintButton(IZ)V
    .locals 3
    .param p1, "showcaseColor"    # I
    .param p2, "tintButton"    # Z

    .prologue
    .line 812
    if-eqz p2, :cond_0

    .line 813
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/github/amlcurran/showcaseview/ShowcaseView;->HOLO_BLUE:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private updateBitmap()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->haveBoundsChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    .line 216
    :cond_2
    return-void
.end method

.method private updateStyle(Landroid/content/res/TypedArray;Z)V
    .locals 8
    .param p1, "styled"    # Landroid/content/res/TypedArray;
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x50

    .line 783
    sget v4, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_backgroundColor:I

    const/16 v5, 0x80

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->backgroundColor:I

    .line 784
    sget v4, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_showcaseColor:I

    sget v5, Lcom/github/amlcurran/showcaseview/ShowcaseView;->HOLO_BLUE:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseColor:I

    .line 785
    sget v4, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_buttonText:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "buttonText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 789
    :cond_0
    sget v4, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_tintButtonColor:I

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 791
    .local v2, "tintButton":Z
    sget v4, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_titleTextAppearance:I

    sget v5, Lcom/github/amlcurran/showcaseview/R$style;->TextAppearance_ShowcaseView_Title:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 793
    .local v3, "titleTextAppearance":I
    sget v4, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView_sv_detailTextAppearance:I

    sget v5, Lcom/github/amlcurran/showcaseview/R$style;->TextAppearance_ShowcaseView_Detail:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 796
    .local v1, "detailTextAppearance":I
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 798
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseColor:I

    invoke-interface {v4, v5}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->setShowcaseColour(I)V

    .line 799
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->backgroundColor:I

    invoke-interface {v4, v5}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->setBackgroundColour(I)V

    .line 800
    iget v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseColor:I

    invoke-direct {p0, v4, v2}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->tintButton(IZ)V

    .line 801
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v4, v3}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setTitleStyling(I)V

    .line 803
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v4, v1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setDetailStyling(I)V

    .line 804
    iput-boolean v7, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 806
    if-eqz p2, :cond_1

    .line 807
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 809
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 289
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 290
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 308
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->erase(Landroid/graphics/Bitmap;)V

    .line 298
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->scaleMultiplier:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->drawShowcase(Landroid/graphics/Bitmap;FFF)V

    .line 300
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->bitmapBuffer:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->drawToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->draw(Landroid/graphics/Canvas;)V

    .line 306
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public forceTextPosition(I)V
    .locals 1
    .param p1, "textPosition"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->forceTextPosition(I)V

    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 745
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 746
    return-void
.end method

.method public getShowcaseX()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    return v0
.end method

.method public getShowcaseY()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    return v0
.end method

.method public hasShowcaseView()Z
    .locals 2

    .prologue
    const v1, 0xf4240

    .line 224
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasNoTarget:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->storeShot()V

    .line 314
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    invoke-interface {v0, p0}, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->onShowcaseViewHide(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    .line 315
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeOutShowcase()V

    .line 316
    return-void
.end method

.method public hideButton()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->isShowing:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v0, 0x1

    .line 367
    iget-boolean v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->blockAllTouches:Z

    if-eqz v5, :cond_1

    .line 368
    iget-object v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    invoke-interface {v5, p2}, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->onShowcaseViewTouchBlocked(Landroid/view/MotionEvent;)V

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 373
    .local v1, "xDelta":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 374
    .local v4, "yDelta":F
    float-to-double v6, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 376
    .local v2, "distanceFromFocus":D
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v0, v5, :cond_2

    iget-boolean v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnTouch:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    invoke-interface {v5}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->getBlockedRadius()F

    move-result v5

    float-to-double v6, v5

    cmpl-double v5, v2, v6

    if-lez v5, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hide()V

    goto :goto_0

    .line 382
    :cond_2
    iget-boolean v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->blockTouches:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseDrawer:Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;

    invoke-interface {v5}, Lcom/github/amlcurran/showcaseview/ShowcaseDrawer;->getBlockedRadius()F

    move-result v5

    float-to-double v6, v5

    cmpl-double v5, v2, v6

    if-lez v5, :cond_3

    .line 383
    .local v0, "blocked":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 384
    iget-object v5, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    invoke-interface {v5, p2}, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->onShowcaseViewTouchBlocked(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 382
    .end local v0    # "blocked":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public overrideButtonClick(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 253
    if-eqz p1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasCustomClickListener:Z

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setBlocksTouches(Z)V
    .locals 0
    .param p1, "blockTouches"    # Z

    .prologue
    .line 761
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->blockTouches:Z

    .line 762
    return-void
.end method

.method public setButtonPosition(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setContentText(Ljava/lang/CharSequence;)V

    .line 411
    return-void
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 406
    return-void
.end method

.method public setDetailTextAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setDetailTextAlignment(Landroid/text/Layout$Alignment;)V

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 722
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 723
    return-void
.end method

.method public setHideOnTouchOutside(Z)V
    .locals 0
    .param p1, "hideOnTouch"    # Z

    .prologue
    .line 753
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hideOnTouch:Z

    .line 754
    return-void
.end method

.method public setOnShowcaseEventListener(Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    sget-object v0, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->NONE:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    goto :goto_0
.end method

.method public setShouldCentreText(Z)V
    .locals 1
    .param p1, "shouldCentreText"    # Z

    .prologue
    .line 693
    iput-boolean p1, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shouldCentreText:Z

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 695
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 696
    return-void
.end method

.method public setShowcase(Lcom/github/amlcurran/showcaseview/targets/Target;Z)V
    .locals 4
    .param p1, "target"    # Lcom/github/amlcurran/showcaseview/targets/Target;
    .param p2, "animate"    # Z

    .prologue
    .line 181
    new-instance v0, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/amlcurran/showcaseview/ShowcaseView$1;-><init>(Lcom/github/amlcurran/showcaseview/ShowcaseView;Lcom/github/amlcurran/showcaseview/targets/Target;Z)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    return-void
.end method

.method setShowcasePosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->shotStateStore:Lcom/github/amlcurran/showcaseview/ShotStateStore;

    invoke-virtual {v0}, Lcom/github/amlcurran/showcaseview/ShotStateStore;->hasShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->positionInWindow:[I

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getLocationInWindow([I)V

    .line 169
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->positionInWindow:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p1, v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    .line 170
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->positionInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v0, p2, v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    .line 172
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->recalculateText()V

    .line 173
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    goto :goto_0
.end method

.method setShowcasePosition(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 161
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcasePosition(II)V

    .line 162
    return-void
.end method

.method public setShowcaseX(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 228
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseY:I

    invoke-virtual {p0, p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcasePosition(II)V

    .line 229
    return-void
.end method

.method public setShowcaseY(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 232
    iget v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->showcaseX:I

    invoke-virtual {p0, v0, p1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcasePosition(II)V

    .line 233
    return-void
.end method

.method public setStyle(I)V
    .locals 3
    .param p1, "theme"    # I

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/github/amlcurran/showcaseview/R$styleable;->ShowcaseView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 774
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->updateStyle(Landroid/content/res/TypedArray;Z)V

    .line 775
    return-void
.end method

.method public setTarget(Lcom/github/amlcurran/showcaseview/targets/Target;)V
    .locals 1
    .param p1, "target"    # Lcom/github/amlcurran/showcaseview/targets/Target;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->setShowcase(Lcom/github/amlcurran/showcaseview/targets/Target;Z)V

    .line 178
    return-void
.end method

.method public setTitleTextAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->textDrawer:Lcom/github/amlcurran/showcaseview/TextDrawer;

    invoke-virtual {v0, p1}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setTitleTextAlignment(Landroid/text/Layout$Alignment;)V

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->hasAlteredText:Z

    .line 731
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->invalidate()V

    .line 732
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->isShowing:Z

    .line 342
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->canUpdateBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->updateBitmap()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEventListener:Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;

    invoke-interface {v0, p0}, Lcom/github/amlcurran/showcaseview/OnShowcaseEventListener;->onShowcaseViewShow(Lcom/github/amlcurran/showcaseview/ShowcaseView;)V

    .line 346
    invoke-direct {p0}, Lcom/github/amlcurran/showcaseview/ShowcaseView;->fadeInShowcase()V

    .line 347
    return-void
.end method

.method public showButton()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/ShowcaseView;->mEndButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    return-void
.end method
