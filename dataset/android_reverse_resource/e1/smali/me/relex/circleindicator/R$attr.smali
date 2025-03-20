.class public final Lme/relex/circleindicator/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ci_animator:I = 0x7f0100b2

.field public static final ci_animator_reverse:I = 0x7f0100b3

.field public static final ci_drawable:I = 0x7f0100b4

.field public static final ci_drawable_unselected:I = 0x7f0100b5

.field public static final ci_gravity:I = 0x7f0100b7

.field public static final ci_height:I = 0x7f0100b0

.field public static final ci_margin:I = 0x7f0100b1

.field public static final ci_orientation:I = 0x7f0100b6

.field public static final ci_width:I = 0x7f0100af


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/relex/circleindicator/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x314896454748c2bbL    # 2.7831491582323172E-71

    const-string v2, "me/relex/circleindicator/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/relex/circleindicator/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/relex/circleindicator/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
