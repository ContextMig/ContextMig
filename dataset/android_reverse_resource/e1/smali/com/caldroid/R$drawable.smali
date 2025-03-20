.class public final Lcom/caldroid/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caldroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final calendar_next_arrow:I = 0x7f020059

.field public static final calendar_prev_arrow:I = 0x7f02005a

.field public static final cell_bg:I = 0x7f02005b

.field public static final cell_bg_dark:I = 0x7f02005c

.field public static final disable_cell:I = 0x7f020083

.field public static final disabled_cell_dark:I = 0x7f020084

.field public static final left_arrow:I = 0x7f02009e

.field public static final red_border:I = 0x7f0200ab

.field public static final red_border_dark:I = 0x7f0200ac

.field public static final red_border_gray_bg:I = 0x7f0200ad

.field public static final right_arrow:I = 0x7f0200ae


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/caldroid/R$drawable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5ed9efe470283d18L    # 8.291229710142891E148

    const-string v2, "com/caldroid/R$drawable"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/caldroid/R$drawable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/caldroid/R$drawable;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
