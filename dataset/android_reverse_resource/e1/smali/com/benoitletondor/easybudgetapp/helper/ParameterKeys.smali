.class public Lcom/benoitletondor/easybudgetapp/helper/ParameterKeys;
.super Ljava/lang/Object;
.source "ParameterKeys.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ANIMATIONS_ENABLED:Ljava/lang/String; = "animation_enabled"

.field public static final APP_TURBO_PREMIUM:Ljava/lang/String; = "appturbo_offer"

.field public static final APP_VERSION:Ljava/lang/String; = "appversion"

.field public static final BATCH_OFFER_REDEEMED:Ljava/lang/String; = "batch_offer_redeemed"

.field public static final CURRENCY_ISO:Ljava/lang/String; = "currency_iso"

.field public static final DAILY_PUSH_NOTIF_SHOWN:Ljava/lang/String; = "user_saw_daily_push_notif"

.field public static final INIT_DATE:Ljava/lang/String; = "init_date"

.field public static final INSTALLATION_REFERRER:Ljava/lang/String; = "installation_referrer"

.field public static final INSTALLATION_SOURCE:Ljava/lang/String; = "installation_source"

.field public static final INVITATION_ID:Ljava/lang/String; = "invitation_id"

.field public static final LAST_OPEN_DATE:Ljava/lang/String; = "last_open_date"

.field public static final LOCAL_ID:Ljava/lang/String; = "local_id"

.field public static final LOW_MONEY_WARNING_AMOUNT:Ljava/lang/String; = "low_money_warning_amount"

.field public static final MONTHLY_PUSH_NOTIF_SHOWN:Ljava/lang/String; = "user_saw_monthly_push_notif"

.field public static final NUMBER_OF_DAILY_OPEN:Ljava/lang/String; = "number_of_daily_open"

.field public static final NUMBER_OF_INVITATIONS:Ljava/lang/String; = "number_of_invitations"

.field public static final NUMBER_OF_OPEN:Ljava/lang/String; = "number_of_open"

.field public static final ONBOARDING_STEP:Ljava/lang/String; = "onboarding_step"

.field public static final PREMIUM:Ljava/lang/String; = "premium"

.field public static final PREMIUM_POPUP_COMPLETE:Ljava/lang/String; = "premium_popup_complete"

.field public static final PREMIUM_POPUP_LAST_AUTO_SHOW:Ljava/lang/String; = "premium_popup_last_auto_show"

.field public static final RATING_COMPLETED:Ljava/lang/String; = "rating_completed"

.field public static final RATING_POPUP_LAST_AUTO_SHOW:Ljava/lang/String; = "rating_popup_last_auto_show"

.field public static final RATING_STEP:Ljava/lang/String; = "rating_step"

.field public static final USER_ALLOW_DAILY_PUSH:Ljava/lang/String; = "user_allow_daily_push"

.field public static final USER_ALLOW_MONTHLY_PUSH:Ljava/lang/String; = "user_allow_monthly_push"

.field public static final USER_ALLOW_UPDATE_PUSH:Ljava/lang/String; = "user_allow_update_push"

.field public static final USER_SAW_MONTHLY_REPORT_HINT:Ljava/lang/String; = "user_saw_monthly_report_hint"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/ParameterKeys;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x600357329378c930L    # 3.2414407199431884E154

    const-string v2, "com/benoitletondor/easybudgetapp/helper/ParameterKeys"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/ParameterKeys;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/ParameterKeys;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
