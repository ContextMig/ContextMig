.class public final Lorg/asdtm/goodweather/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final activity_main_menu:I = 0x7f100000

.field public static final draw_menu:I = 0x7f100001

.field public static final menu_graphs:I = 0x7f100002

.field public static final search:I = 0x7f100003

.field public static final weather_forecast_menu:I = 0x7f100004


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/R$menu;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4b97f9e19e048aafL    # -3.061782601793653E-56

    const-string v2, "org/asdtm/goodweather/R$menu"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/R$menu;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/R$menu;->$jacocoInit()[Z

    move-result-object v0

    .line 3675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
