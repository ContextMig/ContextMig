.class public Lchan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x61d99032a111f452L    # 2.30013918927578E163

    const-string v2, "chan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private sendNotification(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/reminder/Reminder;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    new-instance v1, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;

    invoke-direct {v1}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;-><init>()V

    const/16 v2, 0x10

    aput-boolean v4, v0, v2

    .line 46
    invoke-virtual {p3}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getRepetition()Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    if-ne v2, v3, :cond_0

    const/16 v2, 0x11

    aput-boolean v4, v0, v2

    .line 47
    invoke-virtual {v1, p1, p2}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->notifySticky(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)V

    const/16 v1, 0x12

    aput-boolean v4, v0, v1

    .line 51
    :goto_0
    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    return-void

    .line 49
    :cond_0
    invoke-virtual {v1, p1, p2}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->notify(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)V

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver;->$jacocoInit()[Z

    move-result-object v3

    .line 19
    const-string v2, "note_bundle_key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lchan/android/app/pocketnote/app/Note;

    aput-boolean v9, v3, v9

    .line 20
    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder;->fromJson(Ljava/lang/String;)Lchan/android/app/pocketnote/app/reminder/Reminder;

    move-result-object v4

    const/4 v5, 0x2

    aput-boolean v9, v3, v5

    .line 21
    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getEnd()J

    move-result-wide v0

    .line 22
    .local v0, "end":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    aput-boolean v9, v3, v5

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v5, 0x4

    aput-boolean v9, v3, v5

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive() now = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v7}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-boolean v9, v3, v5

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRecieve() end = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0, v1}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    .line 26
    cmp-long v5, v6, v0

    if-lez v5, :cond_0

    const/4 v4, 0x6

    aput-boolean v9, v3, v4

    .line 27
    const-string v4, "onRecieve() remove reminder"

    invoke-static {v4}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-boolean v9, v3, v4

    .line 29
    invoke-static {p1}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->getScheduler(Landroid/content/Context;)Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;

    move-result-object v4

    const/16 v5, 0x8

    aput-boolean v9, v3, v5

    .line 30
    invoke-virtual {v4, v2}, Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;->cancel(Lchan/android/app/pocketnote/app/Note;)V

    const/16 v4, 0x9

    aput-boolean v9, v3, v4

    .line 33
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v4

    const/16 v5, 0xa

    aput-boolean v9, v3, v5

    .line 34
    invoke-virtual {v4, v2}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->removeReminder(Lchan/android/app/pocketnote/app/Note;)V

    .line 36
    const/16 v2, 0xb

    aput-boolean v9, v3, v2

    .line 39
    :goto_0
    const/16 v2, 0xd

    aput-boolean v9, v3, v2

    .line 42
    :goto_1
    const/16 v2, 0xf

    aput-boolean v9, v3, v2

    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1, v2, v4}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver;->sendNotification(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/reminder/Reminder;)V

    const/16 v2, 0xc

    aput-boolean v9, v3, v2

    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver;->sendNotification(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/reminder/Reminder;)V

    const/16 v2, 0xe

    aput-boolean v9, v3, v2

    goto :goto_1
.end method
