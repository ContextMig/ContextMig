.class public final Lcom/caldroid/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caldroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final calendar_gridview:I = 0x7f0f00ac

.field public static final calendar_left_arrow:I = 0x7f0f00a4

.field public static final calendar_month_year_textview:I = 0x7f0f00a5

.field public static final calendar_right_arrow:I = 0x7f0f00a6

.field public static final calendar_title_view:I = 0x7f0f00a3

.field public static final calendar_tv:I = 0x7f0f00ce

.field public static final months_infinite_pager:I = 0x7f0f00a8

.field public static final weekday_gridview:I = 0x7f0f00a7


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/caldroid/R$id;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x33dd31074dd9aa39L    # 7.266370425680295E-59

    const-string v2, "com/caldroid/R$id"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/caldroid/R$id;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/caldroid/R$id;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
