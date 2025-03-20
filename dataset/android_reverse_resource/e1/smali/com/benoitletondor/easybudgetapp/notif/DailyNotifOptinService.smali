.class public Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;
.super Landroid/app/IntentService;
.source "DailyNotifOptinService.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final INTENT_OPTIN_ACTION:Ljava/lang/String; = "daily_reminder_optin"

.field public static final INTENT_OPTOUT_ACTION:Ljava/lang/String; = "daily_reminder_optout"

.field public static final INTENT_REDIRECT_ACTION:Ljava/lang/String; = "daily_reminder_redirect"

.field public static final OPTIN_NOTIFICATION_ID:I = 0x273a


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x12bd350327b3d4e4L    # -2.0731043015459166E218

    const-string v2, "com/benoitletondor/easybudgetapp/notif/DailyNotifOptinService"

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    const-string v1, "DailyNotifOptinService"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static hasDailyReminderOptinNotifBeenShown(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;->$jacocoInit()[Z

    move-result-object v0

    .line 151
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "user_saw_daily_push_notif"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x28

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static showDailyReminderOptinNotif(Landroid/content/Context;)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;->$jacocoInit()[Z

    move-result-object v1

    .line 110
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 111
    const-string v2, "daily_reminder_optout"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 112
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 114
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x13

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 115
    const-string v3, "daily_reminder_optin"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x14

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 116
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/16 v3, 0x15

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 118
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x16

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 119
    const-string v4, "daily_reminder_redirect"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x17

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 120
    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/16 v4, 0x18

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 122
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020098

    const/16 v6, 0x19

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    .line 123
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/16 v5, 0x1a

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/16 v5, 0x1b

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const/16 v6, 0x1c

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080072

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f020094

    const/16 v6, 0x1d

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f02009c

    const/16 v6, 0x1e

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080074

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/16 v4, 0x1f

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 129
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 130
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f0e0005

    const/16 v3, 0x21

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 131
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v2, 0x22

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 133
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    const/16 v3, 0x273a

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const/16 v0, 0x23

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 135
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v0

    const-string v2, "user_saw_daily_push_notif"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const/16 v0, 0x24

    aput-boolean v8, v1, v0

    .line 141
    :goto_0
    const/16 v0, 0x27

    aput-boolean v8, v1, v0

    return-void

    .line 137
    :catch_0
    move-exception v0

    const/16 v2, 0x25

    aput-boolean v8, v1, v2

    .line 139
    const-string v2, "Error while showing daily notif optin notif"

    invoke-static {v2, v0}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x26

    aput-boolean v8, v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    if-nez p1, :cond_0

    aput-boolean v3, v0, v3

    .line 72
    const-string v1, "DailyNotifOptinService launched with null intent, abort"

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->error(Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 97
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DailyNotifOptinService: received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 78
    const-string v1, "daily_reminder_optout"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 80
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->setUserAllowDailyReminderPushes(Landroid/content/Context;Z)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 96
    :goto_1
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    const/16 v2, 0x273a

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 97
    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 82
    :cond_1
    const-string v1, "daily_reminder_optin"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 84
    invoke-static {p0, v3}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->setUserAllowDailyReminderPushes(Landroid/content/Context;Z)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 86
    :cond_2
    const-string v1, "daily_reminder_redirect"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 88
    invoke-static {p0, v3}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->setUserAllowDailyReminderPushes(Landroid/content/Context;Z)V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/benoitletondor/easybudgetapp/view/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    .line 91
    const-string v2, "intent.extra.redirecttosettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    .line 92
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0xd

    aput-boolean v3, v0, v2

    .line 93
    invoke-virtual {p0, v1}, Lcom/benoitletondor/easybudgetapp/notif/DailyNotifOptinService;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    goto :goto_1
.end method
