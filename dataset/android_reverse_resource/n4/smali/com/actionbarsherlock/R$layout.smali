.class public final Lcom/actionbarsherlock/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abs__action_bar_home:I = 0x7f030000

.field public static final abs__action_bar_tab:I = 0x7f030001

.field public static final abs__action_bar_tab_bar_view:I = 0x7f030002

.field public static final abs__action_bar_title_item:I = 0x7f030003

.field public static final abs__action_menu_item_layout:I = 0x7f030004

.field public static final abs__action_menu_layout:I = 0x7f030005

.field public static final abs__action_mode_bar:I = 0x7f030006

.field public static final abs__action_mode_close_item:I = 0x7f030007

.field public static final abs__activity_chooser_view:I = 0x7f030008

.field public static final abs__activity_chooser_view_list_item:I = 0x7f030009

.field public static final abs__list_menu_item_checkbox:I = 0x7f03000a

.field public static final abs__list_menu_item_icon:I = 0x7f03000b

.field public static final abs__list_menu_item_radio:I = 0x7f03000c

.field public static final abs__popup_menu_item_layout:I = 0x7f03000d

.field public static final abs__screen_action_bar:I = 0x7f03000e

.field public static final abs__screen_action_bar_overlay:I = 0x7f03000f

.field public static final abs__screen_simple:I = 0x7f030010

.field public static final abs__screen_simple_overlay_action_mode:I = 0x7f030011

.field public static final abs__search_dropdown_item_icons_2line:I = 0x7f030012

.field public static final abs__search_view:I = 0x7f030013

.field public static final abs__simple_dropdown_hint:I = 0x7f030014

.field public static final sherlock_spinner_dropdown_item:I = 0x7f030034

.field public static final sherlock_spinner_item:I = 0x7f030035


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/actionbarsherlock/R$layout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x54c650ba1df21569L    # -1.834827663824644E-100

    const-string v2, "com/actionbarsherlock/R$layout"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/actionbarsherlock/R$layout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/actionbarsherlock/R$layout;->$jacocoInit()[Z

    move-result-object v0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
