.class public final Lcom/actionbarsherlock/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final abs__action_bar_home_description:I = 0x7f0d0000

.field public static final abs__action_bar_up_description:I = 0x7f0d0001

.field public static final abs__action_menu_overflow_description:I = 0x7f0d0002

.field public static final abs__action_mode_done:I = 0x7f0d0003

.field public static final abs__activity_chooser_view_see_all:I = 0x7f0d0004

.field public static final abs__activitychooserview_choose_application:I = 0x7f0d0005

.field public static final abs__searchview_description_clear:I = 0x7f0d0006

.field public static final abs__searchview_description_query:I = 0x7f0d0007

.field public static final abs__searchview_description_search:I = 0x7f0d0008

.field public static final abs__searchview_description_submit:I = 0x7f0d0009

.field public static final abs__searchview_description_voice:I = 0x7f0d000a

.field public static final abs__shareactionprovider_share_with:I = 0x7f0d000b

.field public static final abs__shareactionprovider_share_with_application:I = 0x7f0d000c


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/actionbarsherlock/R$string;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x10c4262fffb7eca6L    # -6.597735230703013E227

    const-string v2, "com/actionbarsherlock/R$string"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/actionbarsherlock/R$string;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/actionbarsherlock/R$string;->$jacocoInit()[Z

    move-result-object v0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
