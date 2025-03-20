.class public Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;
.super Landroid/app/IntentService;
.source "MonthlyReportNotifService.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final INTENT_ACTION_DISCOVER:Ljava/lang/String; = "intent.action.discover"

.field private static final INTENT_ACTION_NOT_NOW:Ljava/lang/String; = "intent.action.notnow"

.field public static final NOT_PREMIUM_NOTIFICATION_ID:I = 0x273c

.field public static final PREMIUM_NOTIFICATION_ID:I = 0x273b


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4722b866c111c505L    # 4.860072392268215E34

    const-string v2, "com/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService"

    const/16 v3, 0x2b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    const-string v1, "MonthlyReportNotifService"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static hasUserSeenMonthlyReportNotif(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->$jacocoInit()[Z

    move-result-object v0

    .line 154
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_saw_monthly_push_notif"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x29

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private static setUserSawMonthlyReportNotif(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->$jacocoInit()[Z

    move-result-object v0

    .line 164
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_saw_monthly_push_notif"

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    const/16 v1, 0x2a

    aput-boolean v3, v0, v1

    return-void
.end method

.method public static showNotPremiumNotif(Landroid/content/Context;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v6, 0x7f08005a

    const/high16 v5, 0x10000000

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x18

    aput-boolean v7, v0, v2

    .line 122
    const-string v2, "intent.action.notnow"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x19

    aput-boolean v7, v0, v2

    .line 123
    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/16 v2, 0x1a

    aput-boolean v7, v0, v2

    .line 125
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x1b

    aput-boolean v7, v0, v3

    .line 126
    const-string v3, "intent.action.discover"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x1c

    aput-boolean v7, v0, v3

    .line 127
    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/16 v3, 0x1d

    aput-boolean v7, v0, v3

    .line 129
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020098

    const/16 v5, 0x1e

    aput-boolean v7, v0, v5

    .line 130
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/16 v4, 0x1f

    aput-boolean v7, v0, v4

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/16 v4, 0x20

    aput-boolean v7, v0, v4

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const/16 v5, 0x21

    aput-boolean v7, v0, v5

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/16 v4, 0x22

    aput-boolean v7, v0, v4

    .line 134
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f020094

    const/16 v5, 0x23

    aput-boolean v7, v0, v5

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080078

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f02009a

    const/16 v4, 0x24

    aput-boolean v7, v0, v4

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0e0005

    const/16 v3, 0x25

    aput-boolean v7, v0, v3

    .line 137
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x26

    aput-boolean v7, v0, v2

    .line 139
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    const/16 v3, 0x273c

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const/16 v1, 0x27

    aput-boolean v7, v0, v1

    .line 141
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->setUserSawMonthlyReportNotif(Landroid/content/Context;)V

    .line 142
    const/16 v1, 0x28

    aput-boolean v7, v0, v1

    return-void
.end method

.method public static showPremiumNotif(Landroid/content/Context;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v6, 0x7f08005b

    const/high16 v3, 0x10000000

    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-boolean v5, v0, v2

    .line 96
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0xc

    aput-boolean v5, v0, v2

    .line 98
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v5, v0, v2

    .line 100
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020098

    const/16 v4, 0xe

    aput-boolean v5, v0, v4

    .line 101
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/16 v3, 0xf

    aput-boolean v5, v0, v3

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/16 v3, 0x10

    aput-boolean v5, v0, v3

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const/16 v4, 0x11

    aput-boolean v5, v0, v4

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/16 v3, 0x12

    aput-boolean v5, v0, v3

    .line 105
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x13

    aput-boolean v5, v0, v2

    .line 106
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0e0005

    const/16 v3, 0x14

    aput-boolean v5, v0, v3

    .line 107
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x15

    aput-boolean v5, v0, v2

    .line 109
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    const/16 v3, 0x273b

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const/16 v1, 0x16

    aput-boolean v5, v0, v1

    .line 111
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->setUserSawMonthlyReportNotif(Landroid/content/Context;)V

    .line 112
    const/16 v1, 0x17

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->$jacocoInit()[Z

    move-result-object v1

    .line 71
    :try_start_0
    const-string v0, "intent.action.discover"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 85
    :goto_1
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    const/16 v2, 0x273c

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 86
    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    return-void

    .line 71
    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v1, v0

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 74
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 75
    const-string v2, "intent.extra.premiumshow"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 77
    invoke-virtual {p0, v0}, Lcom/benoitletondor/easybudgetapp/notif/MonthlyReportNotifService;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    .line 82
    const-string v2, "Error on non premium monthly report notif intent"

    invoke-static {v2, v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    goto :goto_1
.end method
