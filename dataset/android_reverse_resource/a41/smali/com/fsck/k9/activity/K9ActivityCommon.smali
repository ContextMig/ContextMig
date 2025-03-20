.class public Lcom/fsck/k9/activity/K9ActivityCommon;
.super Ljava/lang/Object;
.source "K9ActivityCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/K9ActivityCommon$K9ActivityMagic;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/fsck/k9/activity/K9ActivityCommon;->mActivity:Landroid/app/Activity;

    .line 74
    iget-object v0, p0, Lcom/fsck/k9/activity/K9ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/fsck/k9/K9;->getK9Language()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/K9ActivityCommon;->setLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/fsck/k9/activity/K9ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/fsck/k9/K9;->getK9ThemeResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 76
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;)Lcom/fsck/k9/activity/K9ActivityCommon;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    new-instance v0, Lcom/fsck/k9/activity/K9ActivityCommon;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/K9ActivityCommon;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static setLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 50
    .local v1, "locale":Ljava/util/Locale;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 51
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 52
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 53
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 54
    return-void

    .line 43
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_1

    .line 45
    new-instance v1, Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 47
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method


# virtual methods
.method public getThemeBackgroundColor()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-object v2, p0, Lcom/fsck/k9/activity/K9ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010031

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "array":Landroid/content/res/TypedArray;
    const v2, 0xff00ff

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 98
    .local v1, "backgroundColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return v1
.end method

.method public preDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fsck/k9/activity/K9ActivityCommon;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fsck/k9/activity/K9ActivityCommon;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public setupGestureDetector(Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;

    .prologue
    .line 111
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/fsck/k9/activity/K9ActivityCommon;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;

    iget-object v3, p0, Lcom/fsck/k9/activity/K9ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lcom/fsck/k9/activity/misc/SwipeGestureDetector;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/misc/SwipeGestureDetector$OnSwipeGestureListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/K9ActivityCommon;->mGestureDetector:Landroid/view/GestureDetector;

    .line 113
    return-void
.end method
