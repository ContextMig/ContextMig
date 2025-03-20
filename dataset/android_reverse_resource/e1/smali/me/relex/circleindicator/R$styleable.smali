.class public final Lme/relex/circleindicator/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CircleIndicator:[I

.field public static final CircleIndicator_ci_animator:I = 0x3

.field public static final CircleIndicator_ci_animator_reverse:I = 0x4

.field public static final CircleIndicator_ci_drawable:I = 0x5

.field public static final CircleIndicator_ci_drawable_unselected:I = 0x6

.field public static final CircleIndicator_ci_gravity:I = 0x8

.field public static final CircleIndicator_ci_height:I = 0x1

.field public static final CircleIndicator_ci_margin:I = 0x2

.field public static final CircleIndicator_ci_orientation:I = 0x7

.field public static final CircleIndicator_ci_width:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/relex/circleindicator/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x236675aeccd48c02L    # 3.772036796414539E-138

    const-string v2, "me/relex/circleindicator/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/relex/circleindicator/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/relex/circleindicator/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lme/relex/circleindicator/R$styleable;->CircleIndicator:[I

    aput-boolean v2, v0, v2

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100af
        0x7f0100b0
        0x7f0100b1
        0x7f0100b2
        0x7f0100b3
        0x7f0100b4
        0x7f0100b5
        0x7f0100b6
        0x7f0100b7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/relex/circleindicator/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
