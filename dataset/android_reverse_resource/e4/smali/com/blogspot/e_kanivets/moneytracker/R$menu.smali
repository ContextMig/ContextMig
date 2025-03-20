.class public final Lcom/blogspot/e_kanivets/moneytracker/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/e_kanivets/moneytracker/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final menu_account:I = 0x7f0c0000

.field public static final menu_accounts:I = 0x7f0c0001

.field public static final menu_add_account:I = 0x7f0c0002

.field public static final menu_add_exchange_rate:I = 0x7f0c0003

.field public static final menu_add_record:I = 0x7f0c0004

.field public static final menu_archived_account:I = 0x7f0c0005

.field public static final menu_exchange_rate:I = 0x7f0c0006

.field public static final menu_import:I = 0x7f0c0007

.field public static final menu_nav_drawer:I = 0x7f0c0008

.field public static final menu_transfer:I = 0x7f0c0009


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/R$menu;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x24f4ff8f9dd9e5f9L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/R$menu"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/R$menu;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/R$menu;->$jacocoInit()[Z

    move-result-object v0

    .line 3933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
