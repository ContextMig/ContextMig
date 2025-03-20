.class public final Lcom/kvannli/simonkvannli/dailybudget/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kvannli/simonkvannli/dailybudget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final drawer_activity:I = 0x7f0f0000

.field public static final global:I = 0x7f0f0001

.field public static final main2:I = 0x7f0f0002

.field public static final menu_main:I = 0x7f0f0003


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/R$menu;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x716b301d80176513L

    const-string v2, "com/kvannli/simonkvannli/dailybudget/R$menu"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/R$menu;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/R$menu;->$jacocoInit()[Z

    move-result-object v0

    .line 2402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
