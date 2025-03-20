.class public Lorg/secuso/privacyfriendlytodolist/model/AlarmManagerHolder;
.super Ljava/lang/Object;
.source "AlarmManagerHolder.java"


# static fields
.field private static alarmManager:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    .line 29
    sget-object v0, Lorg/secuso/privacyfriendlytodolist/model/AlarmManagerHolder;->alarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string v0, "alarm"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    sput-object p0, Lorg/secuso/privacyfriendlytodolist/model/AlarmManagerHolder;->alarmManager:Landroid/app/AlarmManager;

    .line 33
    :cond_0
    sget-object p0, Lorg/secuso/privacyfriendlytodolist/model/AlarmManagerHolder;->alarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method
