.class public abstract Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsKeys;
.super Ljava/lang/Object;
.source "SettingsKeys.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CHECKBOX_POSITION_PREF:Ljava/lang/String; = "pref_checkbox_position"

.field public static final CURRENCY:Ljava/lang/String; = "pref_currency"

.field public static final LIST_SORT_ASCENDING:Ljava/lang/String; = "sort_asc_dec_key"

.field public static final LIST_SORT_BY:Ljava/lang/String; = "sort_by_key"

.field public static final MOVE_PRODUCTS_PREF:Ljava/lang/String; = "pref_move_products"

.field public static final NOTIFICATIONS_ENABLED:Ljava/lang/String; = "pref_notifications"

.field public static final STATISTICS_DELETE:Ljava/lang/String; = "pref_statistics_delete"

.field public static final STATISTICS_ENABLED:Ljava/lang/String; = "pref_statistics"

.field public static final TUTORIAL_DELETE:Ljava/lang/String; = "pref_tutorial_delete"

.field public static final TUTORIAL_LIST:Ljava/lang/String; = "pref_tutorial_list"

.field public static final TUTORIAL_PREF:Ljava/lang/String; = "pref_tutorial"

.field public static final TUTORIAL_PRODUCT:Ljava/lang/String; = "pref_tutorial_product"

.field public static final WELCOME_PREF:Ljava/lang/String; = "pref_welcome"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsKeys;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x39c566cf0893cc71L    # -2.107342628733365E30

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsKeys"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsKeys;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/settings/SettingsKeys;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
