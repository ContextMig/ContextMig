.class public Lcom/db/chart/view/animation/style/DashAnimation;
.super Lcom/db/chart/view/animation/style/BaseStyleAnimation;
.source "DashAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/db/chart/view/animation/style/BaseStyleAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public nextUpdate(Lcom/db/chart/model/ChartSet;)V
    .locals 2
    .param p1, "set"    # Lcom/db/chart/model/ChartSet;

    .prologue
    .line 27
    move-object v0, p1

    check-cast v0, Lcom/db/chart/model/LineSet;

    .line 28
    .local v0, "line":Lcom/db/chart/model/LineSet;
    invoke-virtual {v0}, Lcom/db/chart/model/LineSet;->getDashedPhase()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/db/chart/model/LineSet;->setDashedPhase(I)Lcom/db/chart/model/LineSet;

    .line 29
    return-void
.end method
