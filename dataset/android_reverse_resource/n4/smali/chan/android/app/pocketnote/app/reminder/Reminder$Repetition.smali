.class public final enum Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;
.super Ljava/lang/Enum;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/reminder/Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Repetition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum DAILY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

.field public static final enum HOURLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

.field public static final enum MONTHLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

.field public static final enum ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

.field public static final enum WEEKLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

.field public static final enum YEARLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;


# instance fields
.field final description:Ljava/lang/String;

.field final milliseconds:J


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x65d999efb2e8486L

    const-string v2, "chan/android/app/pocketnote/app/reminder/Reminder$Repetition"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$jacocoInit()[Z

    move-result-object v6

    .line 109
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const-string v1, "ONE_TIME"

    const/4 v2, 0x0

    const-string v3, "One time event"

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/4 v0, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 110
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const-string v1, "HOURLY"

    const/4 v2, 0x1

    const-string v3, "Hourly"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->HOURLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/4 v0, 0x6

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 111
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const-string v1, "DAILY"

    const/4 v2, 0x2

    const-string v3, "Daily"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->DAILY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/4 v0, 0x7

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 112
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const-string v1, "WEEKLY"

    const/4 v2, 0x3

    const-string v3, "Weekly"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x7

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->WEEKLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/16 v0, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 113
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const-string v1, "MONTHLY"

    const/4 v2, 0x4

    const-string v3, "Monthly"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1e

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->MONTHLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/16 v0, 0x9

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 114
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const-string v1, "YEARLY"

    const/4 v2, 0x5

    const-string v3, "Yearly"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x16d

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->YEARLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/4 v1, 0x0

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->HOURLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->DAILY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->WEEKLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->MONTHLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->YEARLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    aput-object v2, v0, v1

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/16 v0, 0xa

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$jacocoInit()[Z

    move-result-object v0

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput-object p3, p0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->description:Ljava/lang/String;

    .line 121
    iput-wide p4, p0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->milliseconds:J

    .line 122
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$jacocoInit()[Z

    move-result-object v1

    .line 108
    const-class v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$jacocoInit()[Z

    move-result-object v1

    .line 108
    sget-object v0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    invoke-virtual {v0}, [Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public getInterval()J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-wide v2, p0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->milliseconds:J

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->description:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
