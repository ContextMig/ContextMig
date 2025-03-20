.class public final Landroid/support/v7/appcompat/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abc_action_bar_embed_tabs:I = 0x7f050000

.field public static final abc_allow_stacked_button_bar:I = 0x7f050001

.field public static final abc_config_actionMenuItemAllCaps:I = 0x7f050002

.field public static final abc_config_showMenuShortcutsWhenKeyboardPresent:I = 0x7f050003


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/appcompat/R$bool;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x35ec714893177864L    # -7.145824580592029E48

    const-string/jumbo v2, "android/support/v7/appcompat/R$bool"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/appcompat/R$bool;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v7/appcompat/R$bool;->$jacocoInit()[Z

    move-result-object v0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
