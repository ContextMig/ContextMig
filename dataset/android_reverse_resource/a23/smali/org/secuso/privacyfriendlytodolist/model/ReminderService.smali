.class public Lorg/secuso/privacyfriendlytodolist/model/ReminderService;
.super Landroid/app/Service;
.source "ReminderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/model/ReminderService$ReminderServiceBinder;
    }
.end annotation


# static fields
.field public static final ALARM_TRIGGERED:Ljava/lang/String; = "ALARM_TRIGGERD"

.field private static final TAG:Ljava/lang/String; = "ReminderService"


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private alreadyRunning:Z

.field private dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

.field private helper:Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;

.field private final mBinder:Landroid/os/IBinder;

.field private mChannel:Landroid/app/NotificationChannel;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->alreadyRunning:Z

    .line 79
    new-instance v0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService$ReminderServiceBinder;

    invoke-direct {v0, p0}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService$ReminderServiceBinder;-><init>(Lorg/secuso/privacyfriendlytodolist/model/ReminderService;)V

    iput-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private handleAlarm(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V
    .locals 6

    .line 145
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->helper:Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDateTime(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0e0041

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->getNotification(Ljava/lang/String;Ljava/lang/String;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->helper:Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;

    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;->getManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result p1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private setAlarmForTask(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V
    .locals 13

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_for_parcels"

    .line 171
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "ALARM_TRIGGERD"

    const/4 v2, 0x1

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v1

    const/high16 v2, 0x8000000

    .line 175
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 177
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getReminderTime()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    .line 179
    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getCurrentTimestamp()J

    move-result-wide v11

    cmp-long v7, v3, v11

    if-gtz v7, :cond_0

    .line 180
    new-instance v3, Ljava/util/Date;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getCurrentTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 181
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 182
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v10, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 184
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alarm set for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDateTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (alarm id: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 186
    new-instance v5, Ljava/util/Date;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 187
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 188
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v10, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 190
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alarm set for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getDateTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (alarm id: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    const-string v0, "onBind() with extra"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_0
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    const-string v0, "onBind()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->close()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 109
    sget-object p2, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    const-string p3, "onStartCommand()"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    move-result-object p2

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    const-string p2, "notification"

    .line 112
    invoke-virtual {p0, p2}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    invoke-static {p0}, Lorg/secuso/privacyfriendlytodolist/model/AlarmManagerHolder;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p2

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->alarmManager:Landroid/app/AlarmManager;

    .line 114
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;

    invoke-direct {p2, p0}, Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->helper:Lorg/secuso/privacyfriendlytodolist/model/NotificationHelper;

    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "ALARM_TRIGGERD"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "key_for_parcels"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 123
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->handleAlarm(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    .line 126
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getCurrentTimestamp()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getNextDueTask(Landroid/database/sqlite/SQLiteDatabase;J)Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 128
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->setAlarmForTask(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    goto :goto_1

    .line 132
    :cond_1
    iget-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->alreadyRunning:Z

    if-nez p1, :cond_2

    .line 133
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->reloadAlarmsFromDB()V

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->alreadyRunning:Z

    .line 135
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    const-string p2, "Service was started the first time."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    :cond_2
    sget-object p1, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    const-string p2, "Service was already running."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 p1, 0x2

    return p1
.end method

.method public processTask(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V
    .locals 3

    .line 201
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 210
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm of task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cancelled. (id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 214
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification of task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deleted (if existed). (id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_0
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No alarm found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (alarm id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->setAlarmForTask(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    return-void
.end method

.method public reloadAlarmsFromDB()V
    .locals 4

    .line 154
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 156
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->dbHelper:Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/model/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lorg/secuso/privacyfriendlytodolist/model/Helper;->getCurrentTimestamp()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/secuso/privacyfriendlytodolist/model/database/DBQueryHandler;->getTasksToRemind(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 160
    invoke-direct {p0, v2}, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->setAlarmForTask(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 164
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/ReminderService;->TAG:Ljava/lang/String;

    const-string v1, "No alarms set."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
