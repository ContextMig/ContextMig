.class public Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;
.super Lcom/roomorama/caldroid/CaldroidGridAdapter;
.source "CalendarGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final db:Lcom/benoitletondor/easybudgetapp/model/db/DB;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x64c53763d0fa3249L    # 2.6866956927534313E177

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter"

    const/16 v3, 0x5e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/roomorama/caldroid/CaldroidGridAdapter;-><init>(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 50
    new-instance v1, Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/benoitletondor/easybudgetapp/model/db/DB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    .line 51
    aput-boolean v3, v0, v3

    return-void
.end method

.method private createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040023

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x59

    aput-boolean v4, v1, v0

    .line 229
    new-instance v3, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;

    invoke-direct {v3}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;-><init>()V

    const/16 v0, 0x5a

    aput-boolean v4, v1, v0

    .line 231
    const v0, 0x7f0f00aa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->dayTextView:Landroid/widget/TextView;

    const/16 v0, 0x5b

    aput-boolean v4, v1, v0

    .line 232
    const v0, 0x7f0f00ab

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->amountTextView:Landroid/widget/TextView;

    const/16 v0, 0x5c

    aput-boolean v4, v1, v0

    .line 234
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 236
    const/16 v0, 0x5d

    aput-boolean v4, v1, v0

    return-object v2
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->close()V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 58
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->$jacocoInit()[Z

    move-result-object v7

    .line 66
    if-nez p2, :cond_0

    invoke-direct {p0, p3}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput-boolean v5, v7, v4

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v7, v4

    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;

    const/4 v5, 0x7

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 71
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->datetimeList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhirondelle/date4j/DateTime;

    const/16 v6, 0x8

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 72
    invoke-virtual {p0}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->getToday()Lhirondelle/date4j/DateTime;

    move-result-object v6

    invoke-virtual {v5, v6}, Lhirondelle/date4j/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v6, 0x9

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    .line 73
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    if-nez v6, :cond_1

    const/16 v6, 0xa

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    :goto_1
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    if-nez v6, :cond_3

    const/16 v6, 0xd

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    :goto_2
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->disableDates:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    const/16 v6, 0x10

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    :goto_3
    const/4 v6, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    :goto_4
    const/16 v9, 0x15

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    .line 74
    invoke-virtual {v5}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->month:I

    if-eq v9, v10, :cond_7

    const/4 v2, 0x1

    const/16 v9, 0x16

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    .line 76
    .local v2, "isOutOfMonth":Z
    :goto_5
    iget-object v3, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->dayTextView:Landroid/widget/TextView;

    .line 77
    .local v3, "tv1":Landroid/widget/TextView;
    iget-object v9, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->amountTextView:Landroid/widget/TextView;

    const/16 v10, 0x18

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 80
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lhirondelle/date4j/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    if-eqz v6, :cond_9

    .line 85
    iget-boolean v10, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isDisabled:Z

    if-eqz v10, :cond_8

    const/16 v10, 0x19

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 110
    :goto_6
    if-eqz v6, :cond_b

    const/16 v5, 0x25

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 216
    :goto_7
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    const/16 v4, 0x58

    const/4 v5, 0x1

    aput-boolean v5, v7, v4

    return-object p2

    .line 66
    .end local v2    # "isOutOfMonth":Z
    .end local v3    # "tv1":Landroid/widget/TextView;
    :cond_0
    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v7, v4

    goto/16 :goto_0

    .line 73
    :cond_1
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->minDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v5, v6}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0xb

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    :goto_8
    const/4 v6, 0x1

    const/16 v9, 0x13

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    goto :goto_4

    :cond_2
    const/16 v6, 0xc

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    goto/16 :goto_1

    :cond_3
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->maxDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v5, v6}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0xe

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    goto :goto_8

    :cond_4
    const/16 v6, 0xf

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    goto/16 :goto_2

    :cond_5
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->disableDatesMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const/16 v6, 0x11

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    goto/16 :goto_3

    :cond_6
    const/16 v6, 0x12

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    goto :goto_8

    .line 74
    :cond_7
    const/4 v2, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    goto/16 :goto_5

    .line 85
    .restart local v2    # "isOutOfMonth":Z
    .restart local v3    # "tv1":Landroid/widget/TextView;
    :cond_8
    const/16 v10, 0x1a

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 87
    iget-object v10, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v11, 0x7f0e0027

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x1b

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 88
    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v10, 0x1c

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 89
    const v10, 0x106000b

    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 91
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isDisabled:Z

    const/16 v10, 0x1d

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    goto/16 :goto_6

    .line 94
    :cond_9
    iget-boolean v10, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isDisabled:Z

    if-nez v10, :cond_a

    const/16 v10, 0x1e

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    goto/16 :goto_6

    :cond_a
    const/16 v10, 0x1f

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 96
    iget-object v10, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v11, 0x7f0e0063

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x20

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 97
    iget-object v10, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v11, 0x7f0e006d

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x21

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 98
    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0x22

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 99
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v10, 0x23

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 100
    const v10, 0x7f020070

    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isDisabled:Z

    .line 103
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    .line 104
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    .line 105
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->containsExpenses:Z

    .line 106
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->colorIndicatorMarginForToday:Z

    .line 107
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isOutOfMonth:Z

    const/16 v10, 0x24

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    goto/16 :goto_6

    .line 112
    :cond_b
    if-eqz v2, :cond_d

    .line 114
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isOutOfMonth:Z

    if-eqz v6, :cond_c

    const/16 v6, 0x26

    const/4 v10, 0x1

    aput-boolean v10, v7, v6

    .line 131
    :goto_9
    if-eqz v8, :cond_15

    const/16 v6, 0x2e

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 134
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->selectedDates:Ljava/util/ArrayList;

    if-nez v6, :cond_f

    const/16 v6, 0x2f

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 144
    :goto_a
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    if-nez v6, :cond_13

    const/16 v6, 0x35

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 146
    :goto_b
    const v6, 0x7f02007a

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 148
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    .line 149
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    const/16 v6, 0x38

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 174
    :goto_c
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v5, v8}, Lhirondelle/date4j/DateTime;->getMilliseconds(Ljava/util/TimeZone;)J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    const/16 v5, 0x43

    const/4 v8, 0x1

    aput-boolean v8, v7, v5

    .line 175
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v5, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->hasExpensesForDay(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/16 v5, 0x44

    const/4 v8, 0x1

    aput-boolean v8, v7, v5

    .line 177
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->db:Lcom/benoitletondor/easybudgetapp/model/db/DB;

    invoke-virtual {v5, v6}, Lcom/benoitletondor/easybudgetapp/model/db/DB;->getBalanceForDay(Ljava/util/Date;)D

    move-result-wide v0

    .line 179
    .local v0, "balance":D
    iget-boolean v5, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->containsExpenses:Z

    if-eqz v5, :cond_1c

    const/16 v5, 0x45

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 186
    :goto_d
    double-to-int v5, v0

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const-wide/16 v8, 0x0

    cmpl-double v5, v0, v8

    if-lez v5, :cond_1e

    const/16 v5, 0x48

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 190
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    if-eqz v2, :cond_1d

    const v5, 0x7f0e0017

    const/16 v8, 0x49

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    :goto_e
    invoke-static {v6, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x4b

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 196
    :goto_f
    const/16 v5, 0x4f

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    goto/16 :goto_7

    .line 114
    .end local v0    # "balance":D
    :cond_c
    const/16 v6, 0x27

    const/4 v10, 0x1

    aput-boolean v10, v7, v6

    .line 116
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0e0040

    invoke-static {v6, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x28

    const/4 v10, 0x1

    aput-boolean v10, v7, v6

    .line 117
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0e0040

    invoke-static {v6, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isOutOfMonth:Z

    const/16 v6, 0x29

    const/4 v10, 0x1

    aput-boolean v10, v7, v6

    goto/16 :goto_9

    .line 122
    :cond_d
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isOutOfMonth:Z

    if-nez v6, :cond_e

    const/16 v6, 0x2a

    const/4 v10, 0x1

    aput-boolean v10, v7, v6

    goto/16 :goto_9

    :cond_e
    const/16 v6, 0x2b

    const/4 v10, 0x1

    aput-boolean v10, v7, v6

    .line 124
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0e0063

    invoke-static {v6, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x2c

    const/4 v10, 0x1

    aput-boolean v10, v7, v6

    .line 125
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0e006d

    invoke-static {v6, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isOutOfMonth:Z

    const/16 v6, 0x2d

    const/4 v10, 0x1

    aput-boolean v10, v7, v6

    goto/16 :goto_9

    .line 134
    :cond_f
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->selectedDatesMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const/16 v6, 0x30

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_a

    .line 136
    :cond_10
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    if-nez v6, :cond_11

    const/16 v6, 0x31

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 138
    :goto_10
    const v6, 0x7f02007b

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    .line 141
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    const/16 v6, 0x34

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_c

    .line 136
    :cond_11
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    if-eqz v6, :cond_12

    const/16 v6, 0x32

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_c

    :cond_12
    const/16 v6, 0x33

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto :goto_10

    .line 144
    :cond_13
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    if-nez v6, :cond_14

    const/16 v6, 0x36

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_c

    :cond_14
    const/16 v6, 0x37

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_b

    .line 155
    :cond_15
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->selectedDates:Ljava/util/ArrayList;

    if-nez v6, :cond_16

    const/16 v6, 0x39

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 165
    :goto_11
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    if-eqz v6, :cond_1a

    const/16 v6, 0x3f

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 167
    :goto_12
    const v6, 0x7f020070

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    .line 170
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    const/16 v6, 0x42

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_c

    .line 155
    :cond_16
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->selectedDatesMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const/16 v6, 0x3a

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto :goto_11

    .line 157
    :cond_17
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    if-eqz v6, :cond_18

    const/16 v6, 0x3b

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 159
    :goto_13
    const v6, 0x7f020073

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    .line 162
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    const/16 v6, 0x3e

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_c

    .line 157
    :cond_18
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    if-eqz v6, :cond_19

    const/16 v6, 0x3c

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_c

    :cond_19
    const/16 v6, 0x3d

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto :goto_13

    .line 165
    :cond_1a
    iget-boolean v6, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    if-nez v6, :cond_1b

    const/16 v6, 0x40

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto/16 :goto_c

    :cond_1b
    const/16 v6, 0x41

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto :goto_12

    .line 179
    .restart local v0    # "balance":D
    :cond_1c
    const/16 v5, 0x46

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 181
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->containsExpenses:Z

    const/16 v5, 0x47

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    goto/16 :goto_d

    .line 190
    :cond_1d
    const v5, 0x7f0e0016

    const/16 v8, 0x4a

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    goto/16 :goto_e

    .line 194
    :cond_1e
    iget-object v6, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    if-eqz v2, :cond_1f

    const v5, 0x7f0e0014

    const/16 v8, 0x4c

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    :goto_14
    invoke-static {v6, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x4e

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    goto/16 :goto_f

    :cond_1f
    const v5, 0x7f0e0013

    const/16 v8, 0x4d

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    goto :goto_14

    .line 197
    .end local v0    # "balance":D
    :cond_20
    iget-boolean v5, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->containsExpenses:Z

    if-nez v5, :cond_21

    const/16 v5, 0x50

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    goto/16 :goto_7

    :cond_21
    const/16 v5, 0x51

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 199
    const/4 v5, 0x4

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    if-nez v2, :cond_22

    const/16 v5, 0x52

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 203
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v6, 0x7f0e0063

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x53

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 204
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v6, 0x7f0e006d

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x54

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 212
    :goto_15
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->containsExpenses:Z

    const/16 v5, 0x57

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    goto/16 :goto_7

    .line 208
    :cond_22
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v6, 0x7f0e0040

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x55

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    .line 209
    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;->context:Landroid/content/Context;

    const v6, 0x7f0e0040

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x56

    const/4 v6, 0x1

    aput-boolean v6, v7, v5

    goto :goto_15
.end method
