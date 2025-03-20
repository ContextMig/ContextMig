.class public final Lbr/com/activity/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/activity/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abc_action_bar_embed_tabs:I = 0x7f070002

.field public static final abc_action_bar_embed_tabs_pre_jb:I = 0x7f070000

.field public static final abc_action_bar_expanded_action_views_exclusive:I = 0x7f070003

.field public static final abc_config_actionMenuItemAllCaps:I = 0x7f070004

.field public static final abc_config_allowActionMenuItemTextWithIcon:I = 0x7f070001

.field public static final abc_config_showMenuShortcutsWhenKeyboardPresent:I = 0x7f070005


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/activity/R$bool;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7e8c3ddd63594764L    # 3.782647636222532E301

    const-string v2, "br/com/activity/R$bool"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/activity/R$bool;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/activity/R$bool;->$jacocoInit()[Z

    move-result-object v0

    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
