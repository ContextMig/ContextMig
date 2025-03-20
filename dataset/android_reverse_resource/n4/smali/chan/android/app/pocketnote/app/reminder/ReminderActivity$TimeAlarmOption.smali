.class final enum Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;
.super Ljava/lang/Enum;
.source "ReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TimeAlarmOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum HOUR_1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum HOUR_12:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum HOUR_2:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum HOUR_24:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum HOUR_3:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum HOUR_6:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum MINUTE_10:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum MINUTE_15:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum MINUTE_20:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum MINUTE_25:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum MINUTE_30:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum MINUTE_45:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum MINUTE_5:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field public static final enum SPECIFIC:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;


# instance fields
.field final description:Ljava/lang/String;

.field final milliseconds:J


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x130efa4e094b4afdL    # -5.868049616720407E216

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->$jacocoInit()[Z

    move-result-object v6

    .line 551
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "MINUTE_5"

    const/4 v2, 0x0

    const-string v3, "5 minutes"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_5:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-boolean v7, v6, v10

    .line 552
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "MINUTE_10"

    const-string v3, "10 minutes"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_10:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-boolean v7, v6, v11

    .line 553
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "MINUTE_15"

    const/4 v2, 0x2

    const-string v3, "15 minutes"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xf

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_15:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-boolean v7, v6, v12

    .line 554
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "MINUTE_20"

    const/4 v2, 0x3

    const-string v3, "20 minutes"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x14

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_20:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-boolean v7, v6, v13

    .line 555
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "MINUTE_25"

    const-string v3, "25 minutes"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x19

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    move v2, v10

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_25:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0x8

    aput-boolean v7, v6, v0

    .line 556
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "MINUTE_30"

    const-string v3, "30 minutes"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    move v2, v11

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_30:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0x9

    aput-boolean v7, v6, v0

    .line 557
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "MINUTE_45"

    const-string v3, "45 minutes"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2d

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    move v2, v12

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_45:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0xa

    aput-boolean v7, v6, v0

    .line 558
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "HOUR_1"

    const-string v3, "1 hour"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    move v2, v13

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0xb

    aput-boolean v7, v6, v0

    .line 559
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "HOUR_2"

    const/16 v2, 0x8

    const-string v3, "2 hour"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x2

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_2:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0xc

    aput-boolean v7, v6, v0

    .line 560
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "HOUR_3"

    const/16 v2, 0x9

    const-string v3, "3 hour"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x3

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_3:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0xd

    aput-boolean v7, v6, v0

    .line 561
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "HOUR_6"

    const/16 v2, 0xa

    const-string v3, "6 hour"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x6

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_6:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0xe

    aput-boolean v7, v6, v0

    .line 562
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "HOUR_12"

    const/16 v2, 0xb

    const-string v3, "12 hour"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xc

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_12:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0xf

    aput-boolean v7, v6, v0

    .line 563
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "HOUR_24"

    const/16 v2, 0xc

    const-string v3, "24 hour"

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x18

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_24:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0x10

    aput-boolean v7, v6, v0

    .line 564
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const-string v1, "SPECIFIC"

    const/16 v2, 0xd

    const-string v3, "Specific date time"

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->SPECIFIC:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    .line 550
    const/16 v0, 0xe

    new-array v0, v0, [Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/4 v1, 0x0

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_5:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v2, v0, v1

    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_10:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v1, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_15:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_20:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v2, v0, v1

    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_25:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v1, v0, v10

    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_30:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v1, v0, v11

    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_45:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v1, v0, v12

    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v1, v0, v13

    const/16 v1, 0x8

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_2:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_3:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_6:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_12:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_24:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->SPECIFIC:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-object v2, v0, v1

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->$VALUES:[Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v0, 0x11

    aput-boolean v7, v6, v0

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
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->$jacocoInit()[Z

    move-result-object v0

    .line 569
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 570
    iput-object p3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    .line 571
    iput-wide p4, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->milliseconds:J

    .line 572
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->$jacocoInit()[Z

    move-result-object v1

    .line 550
    const-class v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->$jacocoInit()[Z

    move-result-object v1

    .line 550
    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->$VALUES:[Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    invoke-virtual {v0}, [Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public getMilliseconds()J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->$jacocoInit()[Z

    move-result-object v0

    .line 579
    iget-wide v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->milliseconds:J

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method
