.class public Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;
.super Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;
.source "NoteReminderScheduler.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final PREFIX:Ljava/lang/String; = "pocketnote://"

.field private static scheduler:Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xd979c9e3e8e20b3L

    const-string v2, "chan/android/app/pocketnote/app/reminder/NoteReminderScheduler"

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private buildNoteIntent(Lchan/android/app/pocketnote/app/Note;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v5, v0, v2

    .line 79
    invoke-virtual {v1, p1}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getId(Lchan/android/app/pocketnote/app/Note;)I

    move-result v1

    const/16 v2, 0x15

    aput-boolean v5, v0, v2

    .line 80
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->context:Landroid/content/Context;

    const-class v4, Lchan/android/app/pocketnote/app/reminder/alarm/AlarmReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x16

    aput-boolean v5, v0, v3

    .line 81
    const-string v3, "note_bundle_key"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v3, 0x17

    aput-boolean v5, v0, v3

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pocketnote://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v3, 0x18

    aput-boolean v5, v0, v3

    .line 83
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/16 v1, 0x19

    aput-boolean v5, v0, v1

    return-object v2
.end method

.method public static getScheduler(Landroid/content/Context;)Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->scheduler:Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;

    if-eqz v1, :cond_0

    aput-boolean v3, v0, v3

    .line 34
    :goto_0
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->scheduler:Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    return-object v1

    .line 31
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 32
    new-instance v1, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->scheduler:Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cancel(Lchan/android/app/pocketnote/app/Note;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->buildNoteIntent(Lchan/android/app/pocketnote/app/Note;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    .line 67
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->context:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/16 v2, 0x12

    aput-boolean v3, v0, v2

    .line 68
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 69
    const/16 v1, 0x13

    aput-boolean v3, v0, v1

    return-void
.end method

.method public schedule(Lchan/android/app/pocketnote/app/Note;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->$jacocoInit()[Z

    move-result-object v8

    .line 43
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "json":Ljava/lang/String;
    if-nez v7, :cond_0

    const/4 v0, 0x5

    aput-boolean v9, v8, v0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t schedule a note with NO reminder. I\'m mad bro!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v9, v8, v1

    throw v0

    .line 48
    :cond_0
    invoke-static {v7}, Lchan/android/app/pocketnote/app/reminder/Reminder;->fromJson(Ljava/lang/String;)Lchan/android/app/pocketnote/app/reminder/Reminder;

    move-result-object v4

    const/4 v0, 0x7

    aput-boolean v9, v8, v0

    .line 49
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->buildNoteIntent(Lchan/android/app/pocketnote/app/Note;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x8

    aput-boolean v9, v8, v2

    .line 50
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->context:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/16 v0, 0x9

    aput-boolean v9, v8, v0

    .line 51
    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getRepetition()Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    move-result-object v0

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    if-ne v0, v2, :cond_1

    const/16 v0, 0xa

    aput-boolean v9, v8, v0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule ONE-TIME event to be start at: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getBegin()J

    move-result-wide v2

    invoke-static {v2, v3}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v0, 0xb

    aput-boolean v9, v8, v0

    .line 53
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getBegin()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/16 v0, 0xc

    aput-boolean v9, v8, v0

    .line 59
    :goto_0
    const/16 v0, 0x10

    aput-boolean v9, v8, v0

    return-void

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule REPEATING event to be start at: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getBegin()J

    move-result-wide v2

    invoke-static {v2, v3}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v0, 0xd

    aput-boolean v9, v8, v0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "with interval = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getRepetition()Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    move-result-object v3

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->getInterval()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v0, 0xe

    aput-boolean v9, v8, v0

    .line 57
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getBegin()J

    move-result-wide v2

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getRepetition()Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    move-result-object v4

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->getInterval()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const/16 v0, 0xf

    aput-boolean v9, v8, v0

    goto :goto_0
.end method
