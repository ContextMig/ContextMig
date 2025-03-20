.class final Lhirondelle/date4j/DateTimeInterval;
.super Ljava/lang/Object;
.source "DateTimeInterval.java"


# static fields
.field private static final MAX:I = 0x270f

.field private static final MAX_NANOS:I = 0x3b9ac9ff

.field private static final MIN:I = 0x0

.field private static final MINUS:Z = false

.field private static final MIN_NANOS:I = 0x0

.field private static final PLUS:Z = true


# instance fields
.field private fDay:Ljava/lang/Integer;

.field private fDayIncr:I

.field private fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

.field private final fFrom:Lhirondelle/date4j/DateTime;

.field private fHour:Ljava/lang/Integer;

.field private fHourIncr:I

.field private fIsPlus:Z

.field private fMinute:Ljava/lang/Integer;

.field private fMinuteIncr:I

.field private fMonth:Ljava/lang/Integer;

.field private fMonthIncr:I

.field private fNanosecond:Ljava/lang/Integer;

.field private fNanosecondIncr:I

.field private fSecond:Ljava/lang/Integer;

.field private fSecondIncr:I

.field private fYear:Ljava/lang/Integer;

.field private fYearIncr:I


# direct methods
.method constructor <init>(Lhirondelle/date4j/DateTime;Lhirondelle/date4j/DateTime$DayOverflow;)V
    .locals 3
    .param p1, "aFrom"    # Lhirondelle/date4j/DateTime;
    .param p2, "aMonthOverflow"    # Lhirondelle/date4j/DateTime$DayOverflow;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    .line 15
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->checkUnits()V

    .line 16
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    .line 17
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    .line 18
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    .line 19
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    .line 20
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    .line 21
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    .line 22
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    .line 23
    iput-object p2, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    .line 24
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 20
    :cond_4
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 21
    :cond_5
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getSecond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    .line 22
    :cond_6
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getNanoseconds()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6
.end method

.method private changeDay()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "count":I
    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fDayIncr:I

    if-ge v0, v1, :cond_0

    .line 149
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepDay()V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method private changeHour()V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "count":I
    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fHourIncr:I

    if-ge v0, v1, :cond_0

    .line 157
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepHour()V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method private changeMinute()V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "count":I
    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fMinuteIncr:I

    if-ge v0, v1, :cond_0

    .line 165
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMinute()V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method private changeMonth()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "count":I
    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fMonthIncr:I

    if-ge v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method private changeNanosecond()V
    .locals 3

    .prologue
    const v2, 0x3b9ac9ff

    .line 184
    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecondIncr:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    .line 190
    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 191
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepSecond()V

    .line 192
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecondIncr:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepSecond()V

    .line 196
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    goto :goto_1
.end method

.method private changeSecond()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "count":I
    :goto_0
    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fSecondIncr:I

    if-ge v0, v1, :cond_0

    .line 173
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepSecond()V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method private changeYear()V
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fYearIncr:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lhirondelle/date4j/DateTimeInterval;->fYearIncr:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private checkRange(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .param p1, "aValue"    # Ljava/lang/Integer;
    .param p2, "aName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x270f

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    return-void
.end method

.method private checkRangeNanos(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/Integer;

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x3b9ac9ff

    if-le v0, v1, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nanosecond interval is not in the range 0..999999999"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    return-void
.end method

.method private checkUnits()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "success":Z
    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    const/4 v2, 0x6

    new-array v2, v2, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v5

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v6

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v7

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v8

    const/4 v3, 0x4

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 81
    :goto_0
    if-nez v0, :cond_3

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "For interval calculations, DateTime must have year-month-day, or hour-minute-second, or both."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    new-array v2, v8, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v5

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v6

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    new-array v2, v8, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v5

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v6

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    new-array v2, v8, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->YEAR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v5

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->MONTH:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v6

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->DAY:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lhirondelle/date4j/DateTime;->unitsAllAbsent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fFrom:Lhirondelle/date4j/DateTime;

    new-array v2, v8, [Lhirondelle/date4j/DateTime$Unit;

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->HOUR:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v5

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->MINUTE:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v6

    sget-object v3, Lhirondelle/date4j/DateTime$Unit;->SECOND:Lhirondelle/date4j/DateTime$Unit;

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lhirondelle/date4j/DateTime;->unitsAllPresent([Lhirondelle/date4j/DateTime$Unit;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_3
    return-void
.end method

.method private handleMonthOverflow()V
    .locals 5

    .prologue
    .line 310
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->numDaysInMonth()I

    move-result v0

    .line 311
    .local v0, "daysInMonth":I
    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 312
    sget-object v2, Lhirondelle/date4j/DateTime$DayOverflow;->Abort:Lhirondelle/date4j/DateTime$DayOverflow;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    if-ne v2, v3, :cond_0

    .line 313
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Day Overflow: Year:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Month:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " days, but day has value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " To avoid these exceptions, please specify a different DayOverflow policy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    sget-object v2, Lhirondelle/date4j/DateTime$DayOverflow;->FirstDay:Lhirondelle/date4j/DateTime$DayOverflow;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    if-ne v2, v3, :cond_2

    .line 319
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    .line 320
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    .line 331
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    sget-object v2, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    if-ne v2, v3, :cond_3

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    goto :goto_0

    .line 325
    :cond_3
    sget-object v2, Lhirondelle/date4j/DateTime$DayOverflow;->Spillover:Lhirondelle/date4j/DateTime$DayOverflow;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeInterval;->fDayOverflow:Lhirondelle/date4j/DateTime$DayOverflow;

    if-ne v2, v3, :cond_1

    .line 326
    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v1, v2, v0

    .line 327
    .local v1, "overflowAmount":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    .line 328
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    goto :goto_0
.end method

.method private numDaysInMonth()I
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private numDaysInPreviousMonth()I
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "result":I
    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 250
    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lhirondelle/date4j/DateTime;->getNumDaysInMonth(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private plusOrMinus(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;
    .locals 8
    .param p1, "aIsPlus"    # Z
    .param p2, "aYear"    # Ljava/lang/Integer;
    .param p3, "aMonth"    # Ljava/lang/Integer;
    .param p4, "aDay"    # Ljava/lang/Integer;
    .param p5, "aHour"    # Ljava/lang/Integer;
    .param p6, "aMinute"    # Ljava/lang/Integer;
    .param p7, "aSecond"    # Ljava/lang/Integer;
    .param p8, "aNanosecond"    # Ljava/lang/Integer;

    .prologue
    .line 87
    iput-boolean p1, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    .line 88
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYearIncr:I

    .line 89
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonthIncr:I

    .line 90
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDayIncr:I

    .line 91
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHourIncr:I

    .line 92
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinuteIncr:I

    .line 93
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecondIncr:I

    .line 94
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecondIncr:I

    .line 96
    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYearIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Year"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonthIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Month"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDayIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Day"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHourIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Hour"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinuteIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Minute"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecondIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Second"

    invoke-direct {p0, v0, v1}, Lhirondelle/date4j/DateTimeInterval;->checkRange(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecondIncr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lhirondelle/date4j/DateTimeInterval;->checkRangeNanos(Ljava/lang/Integer;)V

    .line 104
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeYear()V

    .line 105
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeMonth()V

    .line 106
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->handleMonthOverflow()V

    .line 107
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeDay()V

    .line 108
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeHour()V

    .line 109
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeMinute()V

    .line 110
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeSecond()V

    .line 111
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->changeNanosecond()V

    .line 113
    new-instance v0, Lhirondelle/date4j/DateTime;

    iget-object v1, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    iget-object v2, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    iget-object v3, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    iget-object v4, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    iget-object v5, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    iget-object v6, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    iget-object v7, p0, Lhirondelle/date4j/DateTimeInterval;->fNanosecond:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private stepDay()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 227
    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    .line 233
    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->numDaysInMonth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    .line 235
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    .line 241
    :cond_0
    :goto_1
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 238
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->numDaysInPreviousMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fDay:Ljava/lang/Integer;

    .line 239
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMonth()V

    goto :goto_1
.end method

.method private stepHour()V
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 259
    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    .line 265
    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 266
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    .line 267
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepDay()V

    .line 273
    :cond_0
    :goto_1
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fHour:Ljava/lang/Integer;

    .line 271
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepDay()V

    goto :goto_1
.end method

.method private stepMinute()V
    .locals 2

    .prologue
    const/16 v1, 0x3b

    .line 276
    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    .line 282
    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 283
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    .line 284
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepHour()V

    .line 290
    :cond_0
    :goto_1
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMinute:Ljava/lang/Integer;

    .line 288
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepHour()V

    goto :goto_1
.end method

.method private stepMonth()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x1

    .line 210
    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    .line 216
    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    .line 218
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepYear()V

    .line 224
    :cond_0
    :goto_1
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fMonth:Ljava/lang/Integer;

    .line 222
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepYear()V

    goto :goto_1
.end method

.method private stepSecond()V
    .locals 2

    .prologue
    const/16 v1, 0x3b

    .line 293
    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    .line 299
    :goto_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 300
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    .line 301
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMinute()V

    .line 307
    :cond_0
    :goto_1
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fSecond:Ljava/lang/Integer;

    .line 305
    invoke-direct {p0}, Lhirondelle/date4j/DateTimeInterval;->stepMinute()V

    goto :goto_1
.end method

.method private stepYear()V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lhirondelle/date4j/DateTimeInterval;->fIsPlus:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhirondelle/date4j/DateTimeInterval;->fYear:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method minus(IIIIIII)Lhirondelle/date4j/DateTime;
    .locals 9
    .param p1, "aYear"    # I
    .param p2, "aMonth"    # I
    .param p3, "aDay"    # I
    .param p4, "aHour"    # I
    .param p5, "aMinute"    # I
    .param p6, "aSecond"    # I
    .param p7, "aNanosecond"    # I

    .prologue
    .line 31
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lhirondelle/date4j/DateTimeInterval;->plusOrMinus(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method

.method plus(IIIIIII)Lhirondelle/date4j/DateTime;
    .locals 9
    .param p1, "aYear"    # I
    .param p2, "aMonth"    # I
    .param p3, "aDay"    # I
    .param p4, "aHour"    # I
    .param p5, "aMinute"    # I
    .param p6, "aSecond"    # I
    .param p7, "aNanosecond"    # I

    .prologue
    .line 27
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lhirondelle/date4j/DateTimeInterval;->plusOrMinus(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    return-object v0
.end method
