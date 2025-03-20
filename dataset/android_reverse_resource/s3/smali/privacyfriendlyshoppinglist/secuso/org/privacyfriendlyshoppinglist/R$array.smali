.class public final Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final array_dot_active:I = 0x7f0a0006

.field public static final array_dot_inactive:I = 0x7f0a0007

.field public static final shopping_list_priority_spinner:I = 0x7f0a0000

.field public static final shopping_list_reminder_spinner:I = 0x7f0a0001

.field public static final statistics_enabled_text:I = 0x7f0a0002

.field public static final statistics_months:I = 0x7f0a0003

.field public static final statistics_spinner_group_by:I = 0x7f0a0004

.field public static final statistics_spinner_values:I = 0x7f0a0005


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/R$array;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1fdfe3d0faa0cb1dL

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/R$array"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/R$array;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/R$array;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
