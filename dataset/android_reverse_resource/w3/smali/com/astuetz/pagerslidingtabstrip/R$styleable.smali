.class public final Lcom/astuetz/pagerslidingtabstrip/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/pagerslidingtabstrip/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final PagerSlidingTabStrip:[I

.field public static final PagerSlidingTabStrip_pstsDividerColor:I = 0x2

.field public static final PagerSlidingTabStrip_pstsDividerPadding:I = 0x5

.field public static final PagerSlidingTabStrip_pstsIndicatorColor:I = 0x0

.field public static final PagerSlidingTabStrip_pstsIndicatorHeight:I = 0x3

.field public static final PagerSlidingTabStrip_pstsScrollOffset:I = 0x7

.field public static final PagerSlidingTabStrip_pstsShouldExpand:I = 0x9

.field public static final PagerSlidingTabStrip_pstsTabBackground:I = 0x8

.field public static final PagerSlidingTabStrip_pstsTabPaddingLeftRight:I = 0x6

.field public static final PagerSlidingTabStrip_pstsTextAllCaps:I = 0xa

.field public static final PagerSlidingTabStrip_pstsUnderlineColor:I = 0x1

.field public static final PagerSlidingTabStrip_pstsUnderlineHeight:I = 0x4


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5fcbff2faad33ec4L    # 2.932624999152565E153

    const-string v2, "com/astuetz/pagerslidingtabstrip/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip:[I

    aput-boolean v2, v0, v2

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100c8
        0x7f0100c9
        0x7f0100ca
        0x7f0100cb
        0x7f0100cc
        0x7f0100cd
        0x7f0100ce
        0x7f0100cf
        0x7f0100d0
        0x7f0100d1
        0x7f0100d2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
