.class public final Lpl/com/andrzejgrzyb/shoppinglist/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/com/andrzejgrzyb/shoppinglist/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final array_sort_dialog:I = 0x7f0c0000

.field public static final context_menu_main_activity:I = 0x7f0c0001

.field public static final pref_language_list_titles:I = 0x7f0c0002

.field public static final pref_language_list_values:I = 0x7f0c0003

.field public static final quantity_units_array:I = 0x7f0c0004

.field public static final quantity_units_codes_array:I = 0x7f0c0005


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/R$array;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2bbcee69ced8ab60L    # 5.2908981442401075E-98

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/R$array"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/R$array;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/R$array;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
