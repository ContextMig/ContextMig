.class public Lcom/fsck/k9/helper/K9AlarmManager;
.super Ljava/lang/Object;
.source "K9AlarmManager.java"


# instance fields
.field private final alarmManager:Landroid/app/AlarmManager;

.field private final dozeChecker:Lcom/fsck/k9/power/DozeChecker;


# direct methods
.method constructor <init>(Landroid/app/AlarmManager;Lcom/fsck/k9/power/DozeChecker;)V
    .locals 0
    .param p1, "alarmManager"    # Landroid/app/AlarmManager;
    .param p2, "dozeChecker"    # Lcom/fsck/k9/power/DozeChecker;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fsck/k9/helper/K9AlarmManager;->alarmManager:Landroid/app/AlarmManager;

    .line 28
    iput-object p2, p0, Lcom/fsck/k9/helper/K9AlarmManager;->dozeChecker:Lcom/fsck/k9/power/DozeChecker;

    .line 29
    return-void
.end method

.method public static getAlarmManager(Landroid/content/Context;)Lcom/fsck/k9/helper/K9AlarmManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 21
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Lcom/fsck/k9/power/DozeChecker;

    invoke-direct {v1, p0}, Lcom/fsck/k9/power/DozeChecker;-><init>(Landroid/content/Context;)V

    .line 22
    .local v1, "dozeChecker":Lcom/fsck/k9/power/DozeChecker;
    new-instance v2, Lcom/fsck/k9/helper/K9AlarmManager;

    invoke-direct {v2, v0, v1}, Lcom/fsck/k9/helper/K9AlarmManager;-><init>(Landroid/app/AlarmManager;Lcom/fsck/k9/power/DozeChecker;)V

    return-object v2
.end method

.method private setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fsck/k9/helper/K9AlarmManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 42
    return-void
.end method


# virtual methods
.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fsck/k9/helper/K9AlarmManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 46
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fsck/k9/helper/K9AlarmManager;->dozeChecker:Lcom/fsck/k9/power/DozeChecker;

    invoke-virtual {v0}, Lcom/fsck/k9/power/DozeChecker;->isDeviceIdleModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/helper/K9AlarmManager;->dozeChecker:Lcom/fsck/k9/power/DozeChecker;

    invoke-virtual {v0}, Lcom/fsck/k9/power/DozeChecker;->isAppWhitelisted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/helper/K9AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/helper/K9AlarmManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
