.class public Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;
.super Landroid/content/ContextWrapper;
.source "NotificationHelper.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "my_channel_01"

.field public static final name:Ljava/lang/CharSequence;


# instance fields
.field private manager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Channel"

    .line 52
    sput-object v0, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->name:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->createChannel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public createChannel()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 67
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "my_channel_01"

    sget-object v2, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->name:Ljava/lang/CharSequence;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Test"

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const v2, 0x7f060028

    .line 71
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->getManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public getManager()Landroid/app/NotificationManager;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->manager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 80
    invoke-virtual {p0, v0}, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->manager:Landroid/app/NotificationManager;

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->manager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public getNotification(Ljava/lang/String;Ljava/lang/String;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .line 87
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "my_channel_01"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x108002e

    .line 89
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const v1, 0x7f060028

    .line 91
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x3e8

    const/16 v3, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 94
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "notify"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 95
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 96
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 99
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    .line 101
    invoke-static {p0, v1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "snooze"

    const v4, 0xdbba0

    .line 106
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "taskId"

    .line 107
    invoke-virtual {p3}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "fragment_choice"

    const-string v5, "fragment_selector_key"

    .line 109
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "key_for_parcels"

    .line 110
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p3

    .line 113
    const-class v4, Lorg/secuso/privacyfriendlytodolist/view/MainActivity;

    invoke-virtual {p3, v4}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 114
    invoke-virtual {p3, v3}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 115
    invoke-virtual {p3, p2}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 116
    invoke-virtual {p3, v1, v0}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p2

    const p3, 0x7f08008a

    const-string v0, "Snooze"

    .line 118
    invoke-virtual {p1, p3, v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const p3, 0x7f080066

    const-string v0, "Set done"

    .line 119
    invoke-virtual {p1, p3, v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-object p1
.end method
