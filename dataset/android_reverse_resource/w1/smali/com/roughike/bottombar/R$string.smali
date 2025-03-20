.class public final Lcom/roughike/bottombar/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roughike/bottombar/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abc_action_bar_home_description:I = 0x7f070000

.field public static final abc_action_bar_home_description_format:I = 0x7f070001

.field public static final abc_action_bar_home_subtitle_description_format:I = 0x7f070002

.field public static final abc_action_bar_up_description:I = 0x7f070003

.field public static final abc_action_menu_overflow_description:I = 0x7f070004

.field public static final abc_action_mode_done:I = 0x7f070005

.field public static final abc_activity_chooser_view_see_all:I = 0x7f070006

.field public static final abc_activitychooserview_choose_application:I = 0x7f070007

.field public static final abc_capital_off:I = 0x7f070008

.field public static final abc_capital_on:I = 0x7f070009

.field public static final abc_search_hint:I = 0x7f07000a

.field public static final abc_searchview_description_clear:I = 0x7f07000b

.field public static final abc_searchview_description_query:I = 0x7f07000c

.field public static final abc_searchview_description_search:I = 0x7f07000d

.field public static final abc_searchview_description_submit:I = 0x7f07000e

.field public static final abc_searchview_description_voice:I = 0x7f07000f

.field public static final abc_shareactionprovider_share_with:I = 0x7f070010

.field public static final abc_shareactionprovider_share_with_application:I = 0x7f070011

.field public static final abc_toolbar_collapse_description:I = 0x7f070012

.field public static final app_name:I = 0x7f070018

.field public static final appbar_scrolling_view_behavior:I = 0x7f07007b

.field public static final bottom_sheet_behavior:I = 0x7f07007c

.field public static final character_counter_pattern:I = 0x7f07007d

.field public static final status_bar_notification_info_overflow:I = 0x7f070013


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/roughike/bottombar/R$string;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x181ddb5ca69c2377L    # -2.5867780081570384E192

    const-string v2, "com/roughike/bottombar/R$string"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/roughike/bottombar/R$string;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/roughike/bottombar/R$string;->$jacocoInit()[Z

    move-result-object v0

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
