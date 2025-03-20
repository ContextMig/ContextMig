.class public final Lcom/roughike/bottombar/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roughike/bottombar/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abc_config_activityDefaultDur:I = 0x7f0b0002

.field public static final abc_config_activityShortDur:I = 0x7f0b0003

.field public static final abc_max_action_buttons:I = 0x7f0b0000

.field public static final bottom_sheet_slide_duration:I = 0x7f0b0004

.field public static final cancel_button_image_alpha:I = 0x7f0b0005

.field public static final design_snackbar_text_max_lines:I = 0x7f0b0001

.field public static final status_bar_notification_info_maxnum:I = 0x7f0b0006


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/roughike/bottombar/R$integer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1b8b24429cf729e9L    # -8.254249916346329E175

    const-string v2, "com/roughike/bottombar/R$integer"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/roughike/bottombar/R$integer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/roughike/bottombar/R$integer;->$jacocoInit()[Z

    move-result-object v0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
