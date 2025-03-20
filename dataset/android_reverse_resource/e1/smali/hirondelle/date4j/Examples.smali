.class public final Lhirondelle/date4j/Examples;
.super Ljava/lang/Object;
.source "Examples.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ageIfBornOnCertainDate()V
    .locals 6

    .prologue
    .line 68
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v2

    .line 69
    .local v2, "today":Lhirondelle/date4j/DateTime;
    const/16 v3, 0x7cb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lhirondelle/date4j/DateTime;->forDateOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 70
    .local v1, "birthdate":Lhirondelle/date4j/DateTime;
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v0, v3, v4

    .line 71
    .local v0, "age":I
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getDayOfYear()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Lhirondelle/date4j/DateTime;->getDayOfYear()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 74
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Age of someone born May 16, 1995 is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method private currentDateTime()V
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Lhirondelle/date4j/DateTime;->now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 55
    .local v0, "now":Lhirondelle/date4j/DateTime;
    const-string v2, "YYYY-MM-DD hh:mm:ss"

    invoke-virtual {v0, v2}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current date-time in default time zone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method private currentDateTimeInCairo()V
    .locals 4

    .prologue
    .line 61
    const-string v2, "Africa/Cairo"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Lhirondelle/date4j/DateTime;->now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 62
    .local v0, "now":Lhirondelle/date4j/DateTime;
    const-string v2, "YYYY-MM-DD hh:mm:ss (WWWW)"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current date-time in Cairo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private daysTillChristmas()V
    .locals 9

    .prologue
    const/16 v8, 0x19

    const/16 v7, 0xc

    .line 94
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v3

    .line 95
    .local v3, "today":Lhirondelle/date4j/DateTime;
    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lhirondelle/date4j/DateTime;->forDateOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 96
    .local v0, "christmas":Lhirondelle/date4j/DateTime;
    const/4 v2, 0x0

    .line 97
    .local v2, "result":I
    invoke-virtual {v3, v0}, Lhirondelle/date4j/DateTime;->isSameDayAs(Lhirondelle/date4j/DateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of days till Christmas : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 108
    return-void

    .line 100
    :cond_1
    invoke-virtual {v3, v0}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v3, v0}, Lhirondelle/date4j/DateTime;->numDaysFrom(Lhirondelle/date4j/DateTime;)I

    move-result v2

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v3, v0}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lhirondelle/date4j/DateTime;->forDateOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 105
    .local v1, "christmasNextYear":Lhirondelle/date4j/DateTime;
    invoke-virtual {v3, v1}, Lhirondelle/date4j/DateTime;->numDaysFrom(Lhirondelle/date4j/DateTime;)I

    move-result v2

    goto :goto_0
.end method

.method private firstDayOfThisWeek()V
    .locals 7

    .prologue
    .line 158
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v3

    .line 159
    .local v3, "today":Lhirondelle/date4j/DateTime;
    move-object v1, v3

    .line 160
    .local v1, "firstDayThisWeek":Lhirondelle/date4j/DateTime;
    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 161
    .local v4, "todaysWeekday":I
    const/4 v0, 0x1

    .line 162
    .local v0, "SUNDAY":I
    if-le v4, v0, :cond_0

    .line 163
    sub-int v2, v4, v0

    .line 164
    .local v2, "numDaysFromSunday":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lhirondelle/date4j/DateTime;->minusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 166
    .end local v2    # "numDaysFromSunday":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The first day of this week is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method private hoursDifferenceBetweenParisAndPerth()V
    .locals 5

    .prologue
    .line 126
    const-string v3, "Europe/Paris"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Lhirondelle/date4j/DateTime;->now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 127
    .local v0, "paris":Lhirondelle/date4j/DateTime;
    const-string v3, "Australia/Perth"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Lhirondelle/date4j/DateTime;->now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 128
    .local v1, "perth":Lhirondelle/date4j/DateTime;
    invoke-virtual {v1}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v2, v3, v4

    .line 129
    .local v2, "result":I
    if-gez v2, :cond_0

    .line 130
    add-int/lit8 v2, v2, 0x18

    .line 132
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Numbers of hours difference between Paris and Perth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method private imitateISOFormat()V
    .locals 3

    .prologue
    .line 153
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lhirondelle/date4j/DateTime;->now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 154
    .local v0, "now":Lhirondelle/date4j/DateTime;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output using an ISO format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "YYYY-MM-DDThh:mm:ss"

    invoke-virtual {v0, v2}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method private jdkDatesSuctorial()V
    .locals 6

    .prologue
    .line 171
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v2

    .line 172
    .local v2, "today":Lhirondelle/date4j/DateTime;
    const/16 v3, 0x7cc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lhirondelle/date4j/DateTime;->forDateOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 173
    .local v0, "jdkFirstPublished":Lhirondelle/date4j/DateTime;
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v1, v3, v4

    .line 174
    .local v1, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The number of years the JDK date-time API has been suctorial : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method private static log(Ljava/lang/Object;)V
    .locals 2
    .param p0, "aMsg"    # Ljava/lang/Object;

    .prologue
    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .param p0, "aArgs"    # [Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lhirondelle/date4j/Examples;

    invoke-direct {v0}, Lhirondelle/date4j/Examples;-><init>()V

    .line 31
    .local v0, "examples":Lhirondelle/date4j/Examples;
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->currentDateTime()V

    .line 32
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->currentDateTimeInCairo()V

    .line 33
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->ageIfBornOnCertainDate()V

    .line 34
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->optionsExpiry()V

    .line 35
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->daysTillChristmas()V

    .line 36
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->whenIs90DaysFromToday()V

    .line 37
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->whenIs3Months5DaysFromToday()V

    .line 38
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->hoursDifferenceBetweenParisAndPerth()V

    .line 39
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->weeksSinceStart()V

    .line 40
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->timeTillMidnight()V

    .line 41
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->imitateISOFormat()V

    .line 42
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->firstDayOfThisWeek()V

    .line 43
    invoke-direct {v0}, Lhirondelle/date4j/Examples;->jdkDatesSuctorial()V

    .line 44
    return-void
.end method

.method private optionsExpiry()V
    .locals 7

    .prologue
    .line 79
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v3

    .line 80
    .local v3, "today":Lhirondelle/date4j/DateTime;
    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getStartOfMonth()Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 81
    .local v0, "firstOfMonth":Lhirondelle/date4j/DateTime;
    const/4 v1, 0x0

    .line 82
    .local v1, "result":I
    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 83
    const/16 v1, 0x15

    .line 88
    :goto_0
    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lhirondelle/date4j/DateTime;->forDateOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v2

    .line 89
    .local v2, "thirdFriday":Lhirondelle/date4j/DateTime;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The 3rd Friday of this month is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "YYYY-MM-DD"

    invoke-virtual {v2, v5}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 90
    return-void

    .line 86
    .end local v2    # "thirdFriday":Lhirondelle/date4j/DateTime;
    :cond_0
    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getWeekDay()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rsub-int/lit8 v1, v4, 0x15

    goto :goto_0
.end method

.method private timeTillMidnight()V
    .locals 6

    .prologue
    .line 145
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Lhirondelle/date4j/DateTime;->now(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 146
    .local v1, "now":Lhirondelle/date4j/DateTime;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lhirondelle/date4j/DateTime;->getStartOfDay()Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 147
    .local v0, "midnight":Lhirondelle/date4j/DateTime;
    invoke-virtual {v1, v0}, Lhirondelle/date4j/DateTime;->numSecondsFrom(Lhirondelle/date4j/DateTime;)J

    move-result-wide v2

    .line 148
    .local v2, "result":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This many seconds till midnight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method private weeksSinceStart()V
    .locals 6

    .prologue
    .line 137
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v2

    .line 138
    .local v2, "today":Lhirondelle/date4j/DateTime;
    const/16 v3, 0x7da

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lhirondelle/date4j/DateTime;->forDateOnly(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 139
    .local v1, "startOfProject":Lhirondelle/date4j/DateTime;
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getWeekIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Lhirondelle/date4j/DateTime;->getWeekIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v0, v3, v4

    .line 140
    .local v0, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The number of weeks since Sep 6, 2010 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method private whenIs3Months5DaysFromToday()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 118
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 119
    .local v0, "today":Lhirondelle/date4j/DateTime;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->FirstDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v9

    .line 120
    .local v9, "result":Lhirondelle/date4j/DateTime;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3 months and 5 days from today is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "YYYY-MM-DD"

    invoke-virtual {v9, v2}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method private whenIs90DaysFromToday()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 113
    .local v0, "today":Lhirondelle/date4j/DateTime;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "90 days from today is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v2

    const-string v3, "YYYY-MM-DD"

    invoke-virtual {v2, v3}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhirondelle/date4j/Examples;->log(Ljava/lang/Object;)V

    .line 114
    return-void
.end method
