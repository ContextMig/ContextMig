.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "ReminderReceiver.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private alarmMgr:Landroid/app/AlarmManager;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x194c5c8651ff7a1L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public cancelAlarm(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->$jacocoInit()[Z

    move-result-object v1

    .line 35
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v2, 0x10000000

    invoke-static {p1, v0, p2, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    .line 37
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    .line 38
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->alarmMgr:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 39
    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderSchedulingService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-boolean v3, v0, v3

    .line 21
    invoke-static {p1, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setAlarm(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->$jacocoInit()[Z

    move-result-object v1

    .line 27
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 28
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v2, 0x8000000

    invoke-static {p1, v0, p2, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 29
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/reminder/ReminderReceiver;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3, p4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 30
    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    return-void
.end method
