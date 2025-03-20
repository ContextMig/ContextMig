.class public Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;
.super Ljava/lang/Object;
.source "PeriodController.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x529801691fa8a9acL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/PeriodController"

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setDayEnd(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    const/16 v3, 0x3b

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v0

    .line 163
    const/16 v1, 0xb

    const/16 v2, 0x17

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 164
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 165
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 166
    const/16 v1, 0xe

    const/16 v2, 0x3e7

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 167
    const/16 v1, 0x20

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setDayStart(Ljava/util/Calendar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    const/16 v1, 0xb

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 157
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 158
    const/16 v1, 0xd

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 159
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 160
    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public allTimePeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v3

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 137
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v4, 0x7d0

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 138
    const/4 v4, 0x0

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 139
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 140
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayStart(Ljava/util/Calendar;)V

    .line 142
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 145
    .local v1, "first":Ljava/util/Date;
    const/16 v4, 0xbb8

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 146
    const/16 v4, 0xb

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 148
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayEnd(Ljava/util/Calendar;)V

    .line 150
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 152
    .local v2, "last":Ljava/util/Date;
    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    const-string/jumbo v5, "all_time"

    invoke-direct {v4, v1, v2, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    const/16 v5, 0x1e

    aput-boolean v6, v3, v5

    return-object v4
.end method

.method public dayPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    .locals 7

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v3

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    .local v0, "cal":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayStart(Ljava/util/Calendar;)V

    .line 67
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 70
    .local v1, "first":Ljava/util/Date;
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayEnd(Ljava/util/Calendar;)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 74
    .local v2, "last":Ljava/util/Date;
    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    const-string/jumbo v5, "day"

    invoke-direct {v4, v1, v2, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    const/16 v5, 0x1a

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    return-object v4
.end method

.method public monthPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x5

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v3

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 99
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 100
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayStart(Ljava/util/Calendar;)V

    .line 102
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 105
    .local v1, "first":Ljava/util/Date;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayEnd(Ljava/util/Calendar;)V

    .line 108
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 110
    .local v2, "last":Ljava/util/Date;
    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    const-string/jumbo v5, "month"

    invoke-direct {v4, v1, v2, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    const/16 v5, 0x1c

    aput-boolean v6, v3, v5

    return-object v4
.end method

.method public readLastUsedPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    .locals 14

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v11

    .line 23
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readFirstTs()J

    move-result-wide v0

    .line 24
    .local v0, "first":J
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readLastTs()J

    move-result-wide v2

    .line 25
    .local v2, "last":J
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readPeriodType()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "type":Ljava/lang/String;
    const-wide/16 v12, -0x1

    cmp-long v5, v0, v12

    if-nez v5, :cond_0

    aput-boolean v6, v11, v6

    :goto_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->weekPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v5

    aput-boolean v6, v11, v9

    .line 49
    :goto_1
    return-object v5

    .line 27
    :cond_0
    const-wide/16 v12, -0x1

    cmp-long v5, v2, v12

    if-nez v5, :cond_1

    aput-boolean v6, v11, v7

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    aput-boolean v6, v11, v8

    goto :goto_0

    .line 29
    :cond_2
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    aput-boolean v6, v11, v10

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 49
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->weekPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v5

    const/16 v7, 0x18

    aput-boolean v6, v11, v7

    goto :goto_1

    .line 29
    :sswitch_0
    const-string/jumbo v7, "day"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x6

    aput-boolean v6, v11, v7

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x7

    aput-boolean v6, v11, v7

    goto :goto_2

    :sswitch_1
    const-string/jumbo v7, "week"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x8

    aput-boolean v6, v11, v7

    goto :goto_2

    :cond_4
    const/16 v5, 0x9

    aput-boolean v6, v11, v5

    move v5, v6

    goto :goto_2

    :sswitch_2
    const-string/jumbo v8, "month"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const/16 v7, 0xa

    aput-boolean v6, v11, v7

    goto :goto_2

    :cond_5
    const/16 v5, 0xb

    aput-boolean v6, v11, v5

    move v5, v7

    goto :goto_2

    :sswitch_3
    const-string/jumbo v7, "year"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/16 v7, 0xc

    aput-boolean v6, v11, v7

    goto :goto_2

    :cond_6
    const/16 v5, 0xd

    aput-boolean v6, v11, v5

    move v5, v8

    goto :goto_2

    :sswitch_4
    const-string/jumbo v7, "all_time"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v7, 0xe

    aput-boolean v6, v11, v7

    goto :goto_2

    :cond_7
    const/16 v5, 0xf

    aput-boolean v6, v11, v5

    move v5, v9

    goto :goto_2

    :sswitch_5
    const-string/jumbo v7, "custom"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const/16 v7, 0x10

    aput-boolean v6, v11, v7

    goto :goto_2

    :cond_8
    const/16 v5, 0x11

    aput-boolean v6, v11, v5

    move v5, v10

    goto/16 :goto_2

    .line 31
    :pswitch_0
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->dayPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v5

    const/16 v7, 0x12

    aput-boolean v6, v11, v7

    goto/16 :goto_1

    .line 34
    :pswitch_1
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->weekPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v5

    const/16 v7, 0x13

    aput-boolean v6, v11, v7

    goto/16 :goto_1

    .line 37
    :pswitch_2
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->monthPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v5

    const/16 v7, 0x14

    aput-boolean v6, v11, v7

    goto/16 :goto_1

    .line 40
    :pswitch_3
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->yearPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v5

    const/16 v7, 0x15

    aput-boolean v6, v11, v7

    goto/16 :goto_1

    .line 43
    :pswitch_4
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->allTimePeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v5

    const/16 v7, 0x16

    aput-boolean v6, v11, v7

    goto/16 :goto_1

    .line 46
    :pswitch_5
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->weekPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    move-result-object v5

    const/16 v7, 0x17

    aput-boolean v6, v11, v7

    goto/16 :goto_1

    .line 29
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_5
        0x1839c -> :sswitch_0
        0x379ff4 -> :sswitch_1
        0x38883d -> :sswitch_3
        0x6342280 -> :sswitch_2
        0x6b2f6eab -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public weekPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    .locals 7

    .prologue
    const/4 v5, 0x7

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v3

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 82
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayStart(Ljava/util/Calendar;)V

    .line 84
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 87
    .local v1, "first":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 88
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayEnd(Ljava/util/Calendar;)V

    .line 90
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 92
    .local v2, "last":Ljava/util/Date;
    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    const-string/jumbo v5, "week"

    invoke-direct {v4, v1, v2, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    const/16 v5, 0x1b

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    return-object v4
.end method

.method public writeLastUsedPeriod(Lcom/blogspot/e_kanivets/moneytracker/entity/Period;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getFirst()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->writeFirstTs(J)V

    .line 57
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getLast()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->writeLastTs(J)V

    .line 58
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->writePeriodType(Ljava/lang/String;)V

    .line 59
    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public yearPeriod()Lcom/blogspot/e_kanivets/moneytracker/entity/Period;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->$jacocoInit()[Z

    move-result-object v3

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 117
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v4, 0x0

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 118
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 119
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayStart(Ljava/util/Calendar;)V

    .line 121
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 124
    .local v1, "first":Ljava/util/Date;
    const/16 v4, 0xb

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 125
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 126
    invoke-direct {p0, v0}, Lcom/blogspot/e_kanivets/moneytracker/controller/PeriodController;->setDayEnd(Ljava/util/Calendar;)V

    .line 128
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 130
    .local v2, "last":Ljava/util/Date;
    new-instance v4, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;

    const-string/jumbo v5, "year"

    invoke-direct {v4, v1, v2, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/Period;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    const/16 v5, 0x1d

    aput-boolean v6, v3, v5

    return-object v4
.end method
