.class public final Lcom/caldroid/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caldroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final state_date_disabled:I = 0x7f0100d6

.field public static final state_date_prev_next_month:I = 0x7f0100d7

.field public static final state_date_selected:I = 0x7f0100d5

.field public static final state_date_today:I = 0x7f0100d4

.field public static final styleCaldroidGridView:I = 0x7f010003

.field public static final styleCaldroidLeftArrow:I = 0x7f010004

.field public static final styleCaldroidMonthName:I = 0x7f010005

.field public static final styleCaldroidNormalCell:I = 0x7f010006

.field public static final styleCaldroidRightArrow:I = 0x7f010007

.field public static final styleCaldroidSquareCell:I = 0x7f010008

.field public static final styleCaldroidViewLayout:I = 0x7f010009

.field public static final styleCaldroidWeekdayView:I = 0x7f01000a


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/caldroid/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x16bdc5340b7ab900L

    const-string v2, "com/caldroid/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/caldroid/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/caldroid/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
