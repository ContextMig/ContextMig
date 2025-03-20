.class public Lbr/com/vansschedule/AlarmeNotificationShoppingList;
.super Landroid/content/BroadcastReceiver;
.source "AlarmeNotificationShoppingList.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ACTION:Ljava/lang/String; = "ACTION"

.field private static final GOTO_TAG:Ljava/lang/String; = "GOTO"

.field private static final ID_TAG:Ljava/lang/String; = "ID"

.field private static final START_TAG:Ljava/lang/String; = "START"

.field private static final STOP_TAG:Ljava/lang/String; = "STOP"


# instance fields
.field private context:Landroid/content/Context;

.field private receiveIntent:Landroid/content/Intent;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6a27980b29eaf775L    # 2.311677252239381E203

    const-string v2, "br/com/vansschedule/AlarmeNotificationShoppingList"

    const/16 v3, 0x28

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static cancelAlarme(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 41
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "STOP"

    invoke-static {p0, p1, v4}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->getPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 42
    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    return-void
.end method

.method private static getPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lbr/com/vansschedule/AlarmeNotificationShoppingList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 46
    const-string v2, "ACTION"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 47
    const-string v2, "ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    .line 48
    const/high16 v2, 0x8000000

    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getShoppingList(Landroid/content/Context;Landroid/content/Intent;)Lbr/com/bean/ShoppingList;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x10

    aput-boolean v3, v1, v0

    .line 73
    :goto_0
    const/4 v0, 0x0

    const/16 v2, 0x15

    aput-boolean v3, v1, v2

    :goto_1
    return-object v0

    .line 66
    :cond_0
    const/16 v0, 0x11

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lbr/com/dao/ShoppingListDAO;->select(Landroid/content/Context;I)Lbr/com/bean/ShoppingList;
    :try_end_0
    .catch Lbr/com/vansexception/VansException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v2, 0x12

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    const/16 v2, 0x13

    aput-boolean v3, v1, v2

    .line 70
    invoke-virtual {v0}, Lbr/com/vansexception/VansException;->printStackTrace()V

    const/16 v0, 0x14

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method private gotoShoppingList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 96
    invoke-direct {p0}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->stopNotification()V

    const/16 v2, 0x20

    aput-boolean v5, v1, v2

    .line 98
    iget-object v2, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    iget-object v3, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->receiveIntent:Landroid/content/Intent;

    invoke-direct {p0, v2, v3}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->getShoppingList(Landroid/content/Context;Landroid/content/Intent;)Lbr/com/bean/ShoppingList;

    move-result-object v0

    .line 99
    .local v0, "shoppingList":Lbr/com/bean/ShoppingList;
    if-nez v0, :cond_0

    const/16 v2, 0x21

    aput-boolean v5, v1, v2

    .line 106
    :goto_0
    const/16 v2, 0x27

    aput-boolean v5, v1, v2

    return-void

    .line 99
    :cond_0
    const/16 v2, 0x22

    aput-boolean v5, v1, v2

    .line 100
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    const-class v4, Lbr/com/vansact/AddItemShoppingList;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x23

    aput-boolean v5, v1, v3

    .line 101
    iget-object v3, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    const v4, 0x7f05005f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v3, 0x24

    aput-boolean v5, v1, v3

    .line 102
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v3, 0x25

    aput-boolean v5, v1, v3

    .line 104
    iget-object v3, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v2, 0x26

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method public static initAlarme(Landroid/content/Context;ILjava/util/Calendar;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 37
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v4, "START"

    invoke-static {p0, p1, v4}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->getPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 38
    aput-boolean v5, v1, v5

    return-void
.end method

.method private notificate()V
    .locals 7

    .prologue
    const/16 v5, 0x3e8

    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoInit()[Z

    move-result-object v2

    .line 77
    iget-object v1, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    iget-object v3, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->receiveIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v3}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->getShoppingList(Landroid/content/Context;Landroid/content/Intent;)Lbr/com/bean/ShoppingList;

    move-result-object v0

    .line 78
    .local v0, "shoppingList":Lbr/com/bean/ShoppingList;
    if-nez v0, :cond_0

    const/16 v1, 0x16

    aput-boolean v6, v2, v1

    .line 86
    :goto_0
    const/16 v1, 0x1c

    aput-boolean v6, v2, v1

    return-void

    .line 78
    :cond_0
    const/16 v1, 0x17

    aput-boolean v6, v2, v1

    .line 79
    iget-object v1, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02003f

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v3, 0x18

    aput-boolean v6, v2, v3

    .line 81
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020040

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lbr/com/bean/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    const v4, 0x7f050032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v3, -0x8000

    invoke-virtual {v1, v3, v5, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    const/16 v4, 0x19

    aput-boolean v6, v2, v4

    .line 82
    invoke-virtual {v0}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v4

    const-string v5, "GOTO"

    invoke-static {v3, v4, v5}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->getPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/16 v1, 0x1a

    aput-boolean v6, v2, v1

    .line 84
    iget-object v1, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v4

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/16 v1, 0x1b

    aput-boolean v6, v2, v1

    goto/16 :goto_0

    .line 82
    nop

    :array_0
    .array-data 8
        0x2
        0x1f4
    .end array-data
.end method

.method private stopNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 89
    iget-object v0, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->receiveIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v0, 0x1d

    aput-boolean v5, v1, v0

    .line 91
    iget-object v0, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v3, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    const-string v4, "STOP"

    invoke-static {v3, v2, v4}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->getPendingIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v0, 0x1e

    aput-boolean v5, v1, v0

    .line 92
    iget-object v0, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 93
    const/16 v0, 0x1f

    aput-boolean v5, v1, v0

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iput-object p1, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->receiveIntent:Landroid/content/Intent;

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ACTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "START"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 57
    invoke-direct {p0}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->notificate()V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 63
    :goto_0
    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    return-void

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ACTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GOTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 59
    invoke-direct {p0}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->gotoShoppingList()V

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ACTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    .line 61
    invoke-direct {p0}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->stopNotification()V

    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
