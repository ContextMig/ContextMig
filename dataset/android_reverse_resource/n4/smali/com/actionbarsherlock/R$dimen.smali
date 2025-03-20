.class public final Lcom/actionbarsherlock/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abs__action_bar_default_height:I = 0x7f060000

.field public static final abs__action_bar_icon_vertical_padding:I = 0x7f060001

.field public static final abs__action_bar_subtitle_bottom_margin:I = 0x7f060002

.field public static final abs__action_bar_subtitle_text_size:I = 0x7f060003

.field public static final abs__action_bar_subtitle_top_margin:I = 0x7f060004

.field public static final abs__action_bar_title_text_size:I = 0x7f060005

.field public static final abs__action_button_min_width:I = 0x7f060006

.field public static final abs__config_prefDialogWidth:I = 0x7f060016

.field public static final abs__dialog_min_width_major:I = 0x7f060014

.field public static final abs__dialog_min_width_minor:I = 0x7f060015

.field public static final abs__dropdownitem_icon_width:I = 0x7f060017

.field public static final abs__dropdownitem_text_padding_left:I = 0x7f060018

.field public static final abs__dropdownitem_text_padding_right:I = 0x7f060019

.field public static final abs__search_view_preferred_width:I = 0x7f06001a

.field public static final abs__search_view_text_min_width:I = 0x7f06001b


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/actionbarsherlock/R$dimen;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x272d7db11ebea659L    # 5.710327288318293E-120

    const-string v2, "com/actionbarsherlock/R$dimen"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/actionbarsherlock/R$dimen;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/actionbarsherlock/R$dimen;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
