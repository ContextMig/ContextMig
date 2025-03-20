.class public Lchan/android/app/pocketnote/util/DateTimeUtility;
.super Ljava/lang/Object;
.source "DateTimeUtility.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final MONTH:[Ljava/lang/String;

.field private static final WEEKDAY:[Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3a904b4081ad7efcL    # -3.0664207044454216E26

    const-string v2, "chan/android/app/pocketnote/util/DateTimeUtility"

    const/16 v3, 0x27

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 7
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Monday"

    aput-object v2, v1, v5

    const-string v2, "Tuesday"

    aput-object v2, v1, v4

    const-string v2, "Wednesday"

    aput-object v2, v1, v6

    const-string v2, "Thursday"

    aput-object v2, v1, v7

    const-string v2, "Friday"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "Saturday"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Sunday"

    aput-object v3, v1, v2

    sput-object v1, Lchan/android/app/pocketnote/util/DateTimeUtility;->WEEKDAY:[Ljava/lang/String;

    .line 16
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "January"

    aput-object v2, v1, v5

    const-string v2, "February"

    aput-object v2, v1, v4

    const-string v2, "March"

    aput-object v2, v1, v6

    const-string v2, "April"

    aput-object v2, v1, v7

    const-string v2, "May"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "June"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "July"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "August"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "September"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "October"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "November"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "December"

    aput-object v3, v1, v2

    sput-object v1, Lchan/android/app/pocketnote/util/DateTimeUtility;->MONTH:[Ljava/lang/String;

    const/16 v1, 0x26

    aput-boolean v4, v0, v1

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 32
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Oh come on"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    aput-boolean v3, v0, v3

    throw v1
.end method

.method public static getAllDaysCycleFrom(Lorg/joda/time/DateTime;)[Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoInit()[Z

    move-result-object v2

    .line 52
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v3

    const/4 v4, 0x6

    aput-boolean v7, v2, v4

    .line 53
    invoke-static {v3}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getNextDay(I)I

    move-result v1

    .line 54
    .local v1, "tomorrow":I
    new-array v3, v9, [Ljava/lang/String;

    aput-boolean v7, v2, v8

    .line 55
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Today - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-boolean v7, v2, v9

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tomorrow - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-static {v5}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 57
    const/4 v0, 0x2

    const/16 v4, 0x9

    aput-boolean v7, v2, v4

    :goto_0
    if-ge v0, v8, :cond_0

    const/16 v4, 0xa

    aput-boolean v7, v2, v4

    .line 58
    invoke-static {v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getNextDay(I)I

    move-result v1

    const/16 v4, 0xb

    aput-boolean v7, v2, v4

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReadableWeekDay(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-static {v5}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v4, 0xc

    aput-boolean v7, v2, v4

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_0
    const-string v4, "Specific date"

    aput-object v4, v3, v8

    .line 62
    const/16 v4, 0xd

    aput-boolean v7, v2, v4

    return-object v3
.end method

.method public static getNextDay(I)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    rem-int/lit8 v1, p0, 0x7

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static getReadableMonth(I)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    sget-object v1, Lchan/android/app/pocketnote/util/DateTimeUtility;->MONTH:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getReadableWeekDay(I)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    sget-object v1, Lchan/android/app/pocketnote/util/DateTimeUtility;->WEEKDAY:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getReadableWeekDay(Lorg/joda/time/DateTime;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    sget-object v1, Lchan/android/app/pocketnote/util/DateTimeUtility;->WEEKDAY:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    .line 67
    invoke-static {p0}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReadableWeekDay(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    .line 68
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    aput-boolean v3, v0, v2

    .line 69
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v2

    invoke-static {v2}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReadableMonth(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    .line 70
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    aput-boolean v3, v0, v2

    .line 71
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    aput-boolean v3, v0, v2

    .line 72
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    aput-boolean v3, v0, v2

    .line 73
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x15

    aput-boolean v3, v0, v2

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getReminderReadableTime(II)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x17

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/DateTimeUtility;->$jacocoInit()[Z

    move-result-object v3

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v1, " AM"

    .line 80
    .local v1, "period":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 81
    const/16 v0, 0xc

    .line 82
    .local v0, "hour":I
    const-string v1, " AM"

    aput-boolean v6, v3, v7

    move p0, v0

    .line 90
    .end local v0    # "hour":I
    :goto_0
    if-lt p0, v5, :cond_4

    const/16 v4, 0x1c

    aput-boolean v6, v3, v4

    .line 94
    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    aput-boolean v6, v3, v4

    .line 95
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    if-lt p1, v5, :cond_5

    const/16 v4, 0x20

    aput-boolean v6, v3, v4

    .line 101
    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    aput-boolean v6, v3, v4

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    aput-boolean v6, v3, v4

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25

    aput-boolean v6, v3, v5

    return-object v4

    .line 83
    :cond_0
    const/16 v4, 0xc

    if-ne p0, v4, :cond_1

    .line 84
    const-string v1, " PM"

    const/16 v4, 0x18

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 85
    :cond_1
    const/16 v4, 0xd

    if-le v4, p0, :cond_2

    const/16 v4, 0x19

    aput-boolean v6, v3, v4

    goto :goto_0

    :cond_2
    if-le p0, v7, :cond_3

    const/16 v4, 0x1a

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 86
    :cond_3
    const-string v1, " PM"

    .line 87
    rem-int/lit8 v0, p0, 0xc

    .restart local v0    # "hour":I
    const/16 v4, 0x1b

    aput-boolean v6, v3, v4

    move p0, v0

    goto :goto_0

    .line 90
    .end local v0    # "hour":I
    :cond_4
    const/16 v4, 0x1d

    aput-boolean v6, v3, v4

    .line 91
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x1e

    aput-boolean v6, v3, v4

    goto :goto_1

    .line 97
    :cond_5
    const/16 v4, 0x21

    aput-boolean v6, v3, v4

    .line 98
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    aput-boolean v6, v3, v4

    goto :goto_2
.end method
