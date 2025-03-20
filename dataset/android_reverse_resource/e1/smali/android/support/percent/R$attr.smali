.class public final Landroid/support/percent/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/percent/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final layout_aspectRatio:I = 0x7f010114

.field public static final layout_heightPercent:I = 0x7f01010c

.field public static final layout_marginBottomPercent:I = 0x7f010111

.field public static final layout_marginEndPercent:I = 0x7f010113

.field public static final layout_marginLeftPercent:I = 0x7f01010e

.field public static final layout_marginPercent:I = 0x7f01010d

.field public static final layout_marginRightPercent:I = 0x7f010110

.field public static final layout_marginStartPercent:I = 0x7f010112

.field public static final layout_marginTopPercent:I = 0x7f01010f

.field public static final layout_widthPercent:I = 0x7f01010b


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/percent/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6172451afa817a4bL

    const-string v2, "android/support/percent/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/percent/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/percent/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
