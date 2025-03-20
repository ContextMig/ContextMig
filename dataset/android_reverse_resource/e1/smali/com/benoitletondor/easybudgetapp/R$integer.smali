.class public final Lcom/benoitletondor/easybudgetapp/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abc_config_activityDefaultDur:I = 0x7f0d0001

.field public static final abc_config_activityShortDur:I = 0x7f0d0002

.field public static final app_bar_elevation_anim_duration:I = 0x7f0d0003

.field public static final bottom_sheet_slide_duration:I = 0x7f0d0004

.field public static final cancel_button_image_alpha:I = 0x7f0d0005

.field public static final design_snackbar_text_max_lines:I = 0x7f0d0000

.field public static final google_play_services_version:I = 0x7f0d0006

.field public static final hide_password_duration:I = 0x7f0d0007

.field public static final show_password_duration:I = 0x7f0d0008

.field public static final status_bar_notification_info_maxnum:I = 0x7f0d0009


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/R$integer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x841374c578cf76L

    const-string v2, "com/benoitletondor/easybudgetapp/R$integer"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/R$integer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/R$integer;->$jacocoInit()[Z

    move-result-object v0

    .line 3508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
