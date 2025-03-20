.class public Lcom/benoitletondor/easybudgetapp/helper/UserHelper;
.super Ljava/lang/Object;
.source "UserHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final BATCH_PREMIUM_FEATURE:Ljava/lang/String; = "PREMIUM"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x44afff929663cc64L    # -5.294508312500069E-23

    const-string v2, "com/benoitletondor/easybudgetapp/helper/UserHelper"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static hasUserCompleteRating(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 134
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "rating_completed"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static hasUserSawMonthlyReportHint(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 155
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_saw_monthly_report_hint"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static isUserAllowingDailyReminderPushes(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_allow_daily_push"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static isUserAllowingMonthlyReminderPushes(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_allow_monthly_push"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static isUserAllowingUpdatePushes(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_allow_update_push"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0xa

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static isUserPremium(Landroid/app/Application;)Z
    .locals 5
    .param p0    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v2

    .line 45
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v3

    const-string v4, "premium"

    invoke-virtual {v3, v4, v0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    aput-boolean v1, v2, v1

    .line 47
    :goto_0
    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    move v0, v1

    .line 45
    :goto_1
    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    .line 46
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v3

    const-string v4, "batch_offer_redeemed"

    invoke-virtual {v3, v4, v0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    .line 47
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v3

    const-string v4, "appturbo_offer"

    invoke-virtual {v3, v4, v0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public static setBatchUserPremium(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "batch_offer_redeemed"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static setUserAllowDailyReminderPushes(Landroid/content/Context;Z)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_allow_daily_push"

    invoke-virtual {v1, v2, p1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static setUserAllowMonthlyReminderPushes(Landroid/content/Context;Z)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_allow_monthly_push"

    invoke-virtual {v1, v2, p1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static setUserAllowUpdatePushes(Landroid/content/Context;Z)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_allow_update_push"

    invoke-virtual {v1, v2, p1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static setUserHasCompleteRating(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 144
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "rating_completed"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static setUserSawMonthlyReportHint(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 165
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_saw_monthly_report_hint"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    return-void
.end method
