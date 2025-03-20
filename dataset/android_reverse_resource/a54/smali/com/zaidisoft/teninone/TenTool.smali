.class public Lcom/zaidisoft/teninone/TenTool;
.super Ljava/lang/Object;
.source "TenTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public round(DI)D
    .locals 9
    .param p1, "val"    # D
    .param p3, "places"    # I

    .prologue
    .line 9
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v0, v4

    .line 12
    .local v0, "factor":J
    long-to-double v4, v0

    mul-double/2addr p1, v4

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 18
    .local v2, "tmp":J
    long-to-double v4, v2

    long-to-double v6, v0

    div-double/2addr v4, v6

    return-wide v4
.end method
