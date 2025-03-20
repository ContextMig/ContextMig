.class public Lcom/benoitletondor/easybudgetapp/helper/DateHelper;
.super Ljava/lang/Object;
.source "DateHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x408ec4f62521cb22L    # -0.0042066941222291526

    const-string v2, "com/benoitletondor/easybudgetapp/helper/DateHelper"

    const/16 v3, 0x2c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static cleanDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p0    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    aput-boolean v3, v0, v3

    .line 49
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 51
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    .line 52
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 53
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    .line 54
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    .line 56
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static cleanGMTDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p0    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v3, v0, v2

    .line 93
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0x15

    aput-boolean v3, v0, v2

    .line 94
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v2, 0x16

    aput-boolean v3, v0, v2

    .line 96
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x17

    aput-boolean v3, v0, v2

    .line 97
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x18

    aput-boolean v3, v0, v2

    .line 98
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x19

    aput-boolean v3, v0, v2

    .line 99
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x1a

    aput-boolean v3, v0, v2

    .line 101
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0x1b

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getListOfMonthsAvailableForUser(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "init_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/16 v1, 0x1c

    aput-boolean v6, v0, v1

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v4, 0x1d

    aput-boolean v6, v0, v4

    .line 115
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0x1e

    aput-boolean v6, v0, v2

    .line 117
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x1f

    aput-boolean v6, v0, v2

    .line 118
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x20

    aput-boolean v6, v0, v2

    .line 119
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x21

    aput-boolean v6, v0, v2

    .line 120
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x22

    aput-boolean v6, v0, v2

    .line 121
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0x23

    aput-boolean v6, v0, v2

    .line 123
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/16 v3, 0x24

    aput-boolean v6, v0, v3

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x25

    aput-boolean v6, v0, v4

    .line 127
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x26

    aput-boolean v6, v0, v4

    .line 129
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x27

    aput-boolean v6, v0, v4

    .line 130
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    const/16 v4, 0x28

    aput-boolean v6, v0, v4

    goto :goto_0

    .line 133
    :cond_0
    const/16 v1, 0x29

    aput-boolean v6, v0, v1

    return-object v3
.end method

.method public static getMonthTitle(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 145
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v2, 0x2a

    aput-boolean v4, v0, v2

    .line 146
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public static getTimestampRangeForDay(Ljava/util/Date;)Landroid/support/v4/util/Pair;
    .locals 8
    .param p0    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/DateHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v6, v0, v2

    .line 68
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0x9

    aput-boolean v6, v0, v2

    .line 69
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v2, 0xa

    aput-boolean v6, v0, v2

    .line 71
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    aput-boolean v6, v0, v5

    .line 72
    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    aput-boolean v6, v0, v4

    .line 73
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    aput-boolean v6, v0, v7

    .line 74
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    aput-boolean v6, v0, v2

    .line 76
    const/16 v2, -0xb

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xf

    aput-boolean v6, v0, v2

    .line 77
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v4, 0x10

    aput-boolean v6, v0, v4

    .line 78
    const/16 v4, 0x17

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v4, 0x11

    aput-boolean v6, v0, v4

    .line 79
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v1, 0x12

    aput-boolean v6, v0, v1

    .line 81
    new-instance v1, Landroid/support/v4/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x13

    aput-boolean v6, v0, v2

    return-object v1
.end method
