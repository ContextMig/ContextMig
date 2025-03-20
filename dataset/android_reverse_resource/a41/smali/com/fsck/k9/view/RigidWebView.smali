.class public Lcom/fsck/k9/view/RigidWebView;
.super Landroid/webkit/WebView;
.source "RigidWebView.java"


# static fields
.field private static final MAX_RESIZE_INTERVAL:I = 0x12c

.field private static final MIN_RESIZE_INTERVAL:I = 0xc8

.field private static final NO_THROTTLE:Z


# instance fields
.field private final mClock:Lcom/fsck/k9/Clock;

.field private mIgnoreNext:Z

.field private mLastSizeChangeTime:J

.field private mRealHeight:I

.field private mRealWidth:I

.field private final mThrottle:Lcom/fsck/k9/Throttle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/fsck/k9/view/RigidWebView;->NO_THROTTLE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/fsck/k9/Clock;->INSTANCE:Lcom/fsck/k9/Clock;

    iput-object v0, p0, Lcom/fsck/k9/view/RigidWebView;->mClock:Lcom/fsck/k9/Clock;

    .line 53
    new-instance v0, Lcom/fsck/k9/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/view/RigidWebView$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/view/RigidWebView$1;-><init>(Lcom/fsck/k9/view/RigidWebView;)V

    .line 58
    invoke-static {}, Lcom/fsck/k9/helper/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/fsck/k9/view/RigidWebView;->mThrottle:Lcom/fsck/k9/Throttle;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/view/RigidWebView;->mLastSizeChangeTime:J

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    sget-object v0, Lcom/fsck/k9/Clock;->INSTANCE:Lcom/fsck/k9/Clock;

    iput-object v0, p0, Lcom/fsck/k9/view/RigidWebView;->mClock:Lcom/fsck/k9/Clock;

    .line 53
    new-instance v0, Lcom/fsck/k9/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/view/RigidWebView$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/view/RigidWebView$1;-><init>(Lcom/fsck/k9/view/RigidWebView;)V

    .line 58
    invoke-static {}, Lcom/fsck/k9/helper/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/fsck/k9/view/RigidWebView;->mThrottle:Lcom/fsck/k9/Throttle;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/view/RigidWebView;->mLastSizeChangeTime:J

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget-object v0, Lcom/fsck/k9/Clock;->INSTANCE:Lcom/fsck/k9/Clock;

    iput-object v0, p0, Lcom/fsck/k9/view/RigidWebView;->mClock:Lcom/fsck/k9/Clock;

    .line 53
    new-instance v0, Lcom/fsck/k9/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/view/RigidWebView$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/view/RigidWebView$1;-><init>(Lcom/fsck/k9/view/RigidWebView;)V

    .line 58
    invoke-static {}, Lcom/fsck/k9/helper/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/fsck/k9/view/RigidWebView;->mThrottle:Lcom/fsck/k9/Throttle;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/view/RigidWebView;->mLastSizeChangeTime:J

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/view/RigidWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/view/RigidWebView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fsck/k9/view/RigidWebView;->performSizeChangeDelayed()V

    return-void
.end method

.method private performSizeChange(II)V
    .locals 2
    .param p1, "ow"    # I
    .param p2, "oh"    # I

    .prologue
    .line 99
    iget v0, p0, Lcom/fsck/k9/view/RigidWebView;->mRealWidth:I

    iget v1, p0, Lcom/fsck/k9/view/RigidWebView;->mRealHeight:I

    invoke-super {p0, v0, v1, p1, p2}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 100
    iget-object v0, p0, Lcom/fsck/k9/view/RigidWebView;->mClock:Lcom/fsck/k9/Clock;

    invoke-virtual {v0}, Lcom/fsck/k9/Clock;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fsck/k9/view/RigidWebView;->mLastSizeChangeTime:J

    .line 101
    return-void
.end method

.method private performSizeChangeDelayed()V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/view/RigidWebView;->mIgnoreNext:Z

    .line 105
    invoke-virtual {p0}, Lcom/fsck/k9/view/RigidWebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/fsck/k9/view/RigidWebView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/view/RigidWebView;->performSizeChange(II)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    const/4 v3, 0x0

    .line 68
    sget-boolean v4, Lcom/fsck/k9/view/RigidWebView;->NO_THROTTLE:Z

    if-eqz v4, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 96
    :goto_0
    return-void

    .line 73
    :cond_0
    iput p1, p0, Lcom/fsck/k9/view/RigidWebView;->mRealWidth:I

    .line 74
    iput p2, p0, Lcom/fsck/k9/view/RigidWebView;->mRealHeight:I

    .line 76
    iget-object v4, p0, Lcom/fsck/k9/view/RigidWebView;->mClock:Lcom/fsck/k9/Clock;

    invoke-virtual {v4}, Lcom/fsck/k9/Clock;->getTime()J

    move-result-wide v0

    .line 77
    .local v0, "now":J
    iget-wide v4, p0, Lcom/fsck/k9/view/RigidWebView;->mLastSizeChangeTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    const/4 v2, 0x1

    .line 81
    .local v2, "recentlySized":Z
    :goto_1
    iget-boolean v4, p0, Lcom/fsck/k9/view/RigidWebView;->mIgnoreNext:Z

    if-eqz v4, :cond_2

    .line 82
    iput-boolean v3, p0, Lcom/fsck/k9/view/RigidWebView;->mIgnoreNext:Z

    .line 83
    if-eqz v2, :cond_2

    .line 84
    const-string v4, "Supressing size change in RigidWebView"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v2    # "recentlySized":Z
    :cond_1
    move v2, v3

    .line 77
    goto :goto_1

    .line 89
    .restart local v2    # "recentlySized":Z
    :cond_2
    if-eqz v2, :cond_3

    .line 90
    iget-object v3, p0, Lcom/fsck/k9/view/RigidWebView;->mThrottle:Lcom/fsck/k9/Throttle;

    invoke-virtual {v3}, Lcom/fsck/k9/Throttle;->onEvent()V

    goto :goto_0

    .line 94
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/fsck/k9/view/RigidWebView;->performSizeChange(II)V

    goto :goto_0
.end method
