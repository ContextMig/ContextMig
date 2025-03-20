.class public abstract Lcom/db/chart/view/animation/style/BaseStyleAnimation;
.super Ljava/lang/Object;
.source "BaseStyleAnimation.java"


# static fields
.field private static final DELAY_BETWEEN_UPDATES:J = 0x64L


# instance fields
.field private final mAnimator:Ljava/lang/Runnable;

.field private mChartView:Lcom/db/chart/view/ChartView;

.field private mSet:Lcom/db/chart/model/ChartSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/db/chart/view/animation/style/BaseStyleAnimation$1;

    invoke-direct {v0, p0}, Lcom/db/chart/view/animation/style/BaseStyleAnimation$1;-><init>(Lcom/db/chart/view/animation/style/BaseStyleAnimation;)V

    iput-object v0, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->mAnimator:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/db/chart/view/animation/style/BaseStyleAnimation;)Lcom/db/chart/view/ChartView;
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/animation/style/BaseStyleAnimation;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->mChartView:Lcom/db/chart/view/ChartView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/db/chart/view/animation/style/BaseStyleAnimation;)Lcom/db/chart/model/ChartSet;
    .locals 1
    .param p0, "x0"    # Lcom/db/chart/view/animation/style/BaseStyleAnimation;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->mSet:Lcom/db/chart/model/ChartSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/db/chart/view/animation/style/BaseStyleAnimation;Lcom/db/chart/model/ChartSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/db/chart/view/animation/style/BaseStyleAnimation;
    .param p1, "x1"    # Lcom/db/chart/model/ChartSet;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->getUpdate(Lcom/db/chart/model/ChartSet;)V

    return-void
.end method

.method private getUpdate(Lcom/db/chart/model/ChartSet;)V
    .locals 4
    .param p1, "set"    # Lcom/db/chart/model/ChartSet;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->nextUpdate(Lcom/db/chart/model/ChartSet;)V

    .line 52
    iget-object v0, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->mChartView:Lcom/db/chart/view/ChartView;

    iget-object v1, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->mAnimator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/db/chart/view/ChartView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method


# virtual methods
.method protected abstract nextUpdate(Lcom/db/chart/model/ChartSet;)V
.end method

.method public play(Lcom/db/chart/view/ChartView;Lcom/db/chart/model/ChartSet;)V
    .locals 1
    .param p1, "lineChartView"    # Lcom/db/chart/view/ChartView;
    .param p2, "set"    # Lcom/db/chart/model/ChartSet;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->mChartView:Lcom/db/chart/view/ChartView;

    .line 45
    iput-object p2, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->mSet:Lcom/db/chart/model/ChartSet;

    .line 46
    iget-object v0, p0, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->mSet:Lcom/db/chart/model/ChartSet;

    invoke-direct {p0, v0}, Lcom/db/chart/view/animation/style/BaseStyleAnimation;->getUpdate(Lcom/db/chart/model/ChartSet;)V

    .line 47
    return-void
.end method
