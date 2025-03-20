.class public final Lcom/caldroid/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caldroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final AppBaseTheme:I = 0x7f0b000c

.field public static final CaldroidDefault:I = 0x7f0b00d8

.field public static final CaldroidDefaultArrowButton:I = 0x7f0b00d9

.field public static final CaldroidDefaultCalendarViewLayout:I = 0x7f0b00da

.field public static final CaldroidDefaultCell:I = 0x7f0b00db

.field public static final CaldroidDefaultDark:I = 0x7f0b00dc

.field public static final CaldroidDefaultDarkCalendarViewLayout:I = 0x7f0b00dd

.field public static final CaldroidDefaultDarkCell:I = 0x7f0b00de

.field public static final CaldroidDefaultDarkGridView:I = 0x7f0b00df

.field public static final CaldroidDefaultDarkMonthName:I = 0x7f0b00e0

.field public static final CaldroidDefaultDarkNormalCell:I = 0x7f0b00e1

.field public static final CaldroidDefaultDarkSquareCell:I = 0x7f0b00e2

.field public static final CaldroidDefaultGridView:I = 0x7f0b00e3

.field public static final CaldroidDefaultLeftButton:I = 0x7f0b00e4

.field public static final CaldroidDefaultMonthName:I = 0x7f0b00e5

.field public static final CaldroidDefaultNormalCell:I = 0x7f0b00e6

.field public static final CaldroidDefaultRightButton:I = 0x7f0b00e7

.field public static final CaldroidDefaultSquareCell:I = 0x7f0b00e8

.field public static final CaldroidDefaultWeekday:I = 0x7f0b00e9


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/caldroid/R$style;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7af76e4b8cee36bdL    # 2.177628482485134E284

    const-string v2, "com/caldroid/R$style"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/caldroid/R$style;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/caldroid/R$style;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
