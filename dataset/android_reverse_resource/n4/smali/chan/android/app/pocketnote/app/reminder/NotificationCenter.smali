.class public Lchan/android/app/pocketnote/app/reminder/NotificationCenter;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final NOTIFICATION_TITLE:Ljava/lang/String; = "PocketNote reminder"

.field private static center:Lchan/android/app/pocketnote/app/reminder/NotificationCenter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7c93e632e192b0faL

    const-string v2, "chan/android/app/pocketnote/app/reminder/NotificationCenter"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private buildNotification(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)Landroid/app/Notification;
    .locals 6

    .prologue
    const/4 v3, 0x7

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    aput-boolean v5, v0, v3

    .line 41
    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0x8

    aput-boolean v5, v0, v2

    .line 42
    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0x9

    aput-boolean v5, v0, v2

    .line 43
    const-string v2, "PocketNote reminder"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0xa

    aput-boolean v5, v0, v2

    .line 44
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0xb

    aput-boolean v5, v0, v2

    .line 45
    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v2

    invoke-static {v2}, Lchan/android/app/pocketnote/app/AppResources;->getDrawable(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0xc

    aput-boolean v5, v0, v2

    .line 47
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0xd

    aput-boolean v5, v0, v3

    .line 48
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v3, 0xe

    aput-boolean v5, v0, v3

    .line 49
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v3, 0xf

    aput-boolean v5, v0, v3

    .line 50
    const-string v3, "note_bundle_key"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v3, 0x10

    aput-boolean v5, v0, v3

    .line 52
    invoke-static {p1}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v3

    const/16 v4, 0x11

    aput-boolean v5, v0, v4

    .line 53
    const-class v4, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    const/16 v4, 0x12

    aput-boolean v5, v0, v4

    .line 54
    invoke-virtual {v3, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    const/16 v2, 0x13

    aput-boolean v5, v0, v2

    .line 56
    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    const/16 v3, 0x14

    aput-boolean v5, v0, v3

    .line 57
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0x15

    aput-boolean v5, v0, v2

    .line 58
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v5, v0, v2

    return-object v1
.end method


# virtual methods
.method public notify(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->$jacocoInit()[Z

    move-result-object v1

    .line 34
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->buildNotification(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)Landroid/app/Notification;

    move-result-object v2

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 35
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 36
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getId(Lchan/android/app/pocketnote/app/Note;)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 37
    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    return-void
.end method

.method public notifySticky(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->$jacocoInit()[Z

    move-result-object v2

    .line 27
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->buildNotification(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)Landroid/app/Notification;

    move-result-object v0

    .line 28
    .local v0, "n":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    aput-boolean v4, v2, v4

    .line 29
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    .line 30
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getId(Lchan/android/app/pocketnote/app/Note;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 31
    const/4 v1, 0x3

    aput-boolean v4, v2, v1

    return-void
.end method
