.class public abstract Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;
.super Ljava/lang/Object;
.source "AbstractReminderScheduler.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field protected alarmIntent:Landroid/app/PendingIntent;

.field protected alarmManager:Landroid/app/AlarmManager;

.field protected context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x773230e9cb83ddc6L

    const-string v2, "chan/android/app/pocketnote/app/reminder/AbstractReminderScheduler"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;->context:Landroid/content/Context;

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 22
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;->alarmManager:Landroid/app/AlarmManager;

    .line 23
    aput-boolean v2, v1, v2

    return-void
.end method


# virtual methods
.method public abstract cancel(Lchan/android/app/pocketnote/app/Note;)V
.end method

.method public abstract schedule(Lchan/android/app/pocketnote/app/Note;)V
.end method
