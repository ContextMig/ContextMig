.class public Lbr/com/vansschedule/ScheduleShoppingList;
.super Landroid/app/Dialog;
.source "ScheduleShoppingList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private btDisplayDate:Landroid/widget/TextView;

.field private btDisplayTime:Landroid/widget/TextView;

.field calendar:Ljava/util/Calendar;

.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private idShoppingList:I

.field private timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2148c7639c722441L

    const-string v2, "br/com/vansschedule/ScheduleShoppingList"

    const/16 v3, 0x27

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    aput-boolean v2, v0, v2

    .line 107
    new-instance v1, Lbr/com/vansschedule/ScheduleShoppingList$1;

    invoke-direct {v1, p0}, Lbr/com/vansschedule/ScheduleShoppingList$1;-><init>(Lbr/com/vansschedule/ScheduleShoppingList;)V

    iput-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 113
    new-instance v1, Lbr/com/vansschedule/ScheduleShoppingList$2;

    invoke-direct {v1, p0}, Lbr/com/vansschedule/ScheduleShoppingList$2;-><init>(Lbr/com/vansschedule/ScheduleShoppingList;)V

    iput-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 29
    iput p2, p0, Lbr/com/vansschedule/ScheduleShoppingList;->idShoppingList:I

    .line 30
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lbr/com/vansschedule/ScheduleShoppingList;III)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lbr/com/vansschedule/ScheduleShoppingList;->setDateDisplay(III)V

    const/16 v1, 0x25

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lbr/com/vansschedule/ScheduleShoppingList;II)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    invoke-direct {p0, p1, p2}, Lbr/com/vansschedule/ScheduleShoppingList;->setTimeDisplay(II)V

    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static pad(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 79
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1a

    aput-boolean v3, v1, v0

    .line 80
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b

    aput-boolean v3, v1, v2

    .line 82
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1c

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private setDateDisplay(III)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iget-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x12

    aput-boolean v5, v0, v1

    .line 62
    iget-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x13

    aput-boolean v5, v0, v1

    .line 63
    iget-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x14

    aput-boolean v5, v0, v1

    .line 65
    iget-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->btDisplayDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lbr/com/vansformat/CustomDateFormat;->getFormatedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/16 v1, 0x15

    aput-boolean v5, v0, v1

    return-void
.end method

.method private setTimeDisplay(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    iget-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x16

    aput-boolean v5, v0, v1

    .line 71
    iget-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x17

    aput-boolean v5, v0, v1

    .line 72
    iget-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x18

    aput-boolean v5, v0, v1

    .line 75
    iget-object v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->btDisplayTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f05004f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lbr/com/vansschedule/ScheduleShoppingList;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lbr/com/vansschedule/ScheduleShoppingList;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const/16 v1, 0x19

    aput-boolean v5, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoInit()[Z

    move-result-object v12

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1d

    aput-boolean v5, v12, v0

    .line 105
    :goto_0
    const/16 v0, 0x24

    aput-boolean v5, v12, v0

    return-void

    .line 89
    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbr/com/vansschedule/ScheduleShoppingList;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v3, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 90
    const/16 v0, 0x1e

    aput-boolean v5, v12, v0

    goto :goto_0

    .line 93
    :pswitch_1
    new-instance v6, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lbr/com/vansschedule/ScheduleShoppingList;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v0, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v0, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v0, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-direct/range {v6 .. v11}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->show()V

    .line 94
    const/16 v0, 0x1f

    aput-boolean v5, v12, v0

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->dismiss()V

    .line 97
    const/16 v0, 0x20

    aput-boolean v5, v12, v0

    goto :goto_0

    .line 100
    :pswitch_3
    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lbr/com/vansschedule/ScheduleShoppingList;->idShoppingList:I

    iget-object v2, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    invoke-static {v0, v1, v2}, Lbr/com/vansschedule/AlarmeNotificationShoppingList;->initAlarme(Landroid/content/Context;ILjava/util/Calendar;)V

    const/16 v0, 0x21

    aput-boolean v5, v12, v0

    .line 101
    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lbr/com/vansschedule/ScheduleShoppingList;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lbr/com/vansformat/CustomDateFormat;->getFormatedCompletedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x22

    aput-boolean v5, v12, v0

    .line 102
    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->dismiss()V

    const/16 v0, 0x23

    aput-boolean v5, v12, v0

    goto/16 :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0065
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoInit()[Z

    move-result-object v1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 36
    invoke-virtual {p0, v2}, Lbr/com/vansschedule/ScheduleShoppingList;->setCancelable(Z)V

    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    .line 37
    const v0, 0x7f050041

    invoke-virtual {p0, v0}, Lbr/com/vansschedule/ScheduleShoppingList;->setTitle(I)V

    const/4 v0, 0x6

    aput-boolean v2, v1, v0

    .line 38
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lbr/com/vansschedule/ScheduleShoppingList;->setContentView(I)V

    const/4 v0, 0x7

    aput-boolean v2, v1, v0

    .line 40
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lbr/com/vansschedule/ScheduleShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/vansschedule/ScheduleShoppingList;->btDisplayTime:Landroid/widget/TextView;

    const/16 v0, 0x8

    aput-boolean v2, v1, v0

    .line 41
    iget-object v0, p0, Lbr/com/vansschedule/ScheduleShoppingList;->btDisplayTime:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x9

    aput-boolean v2, v1, v0

    .line 43
    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lbr/com/vansschedule/ScheduleShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/vansschedule/ScheduleShoppingList;->btDisplayDate:Landroid/widget/TextView;

    const/16 v0, 0xa

    aput-boolean v2, v1, v0

    .line 44
    iget-object v0, p0, Lbr/com/vansschedule/ScheduleShoppingList;->btDisplayDate:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xb

    aput-boolean v2, v1, v0

    .line 46
    invoke-virtual {p0}, Lbr/com/vansschedule/ScheduleShoppingList;->setCurrentDateTimeOnView()V

    const/16 v0, 0xc

    aput-boolean v2, v1, v0

    .line 48
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Lbr/com/vansschedule/ScheduleShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xd

    aput-boolean v2, v1, v0

    .line 49
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lbr/com/vansschedule/ScheduleShoppingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const/16 v0, 0xe

    aput-boolean v2, v1, v0

    return-void
.end method

.method public setCurrentDateTimeOnView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansschedule/ScheduleShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xf

    aput-boolean v5, v0, v2

    .line 56
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lbr/com/vansschedule/ScheduleShoppingList;->setDateDisplay(III)V

    const/16 v2, 0x10

    aput-boolean v5, v0, v2

    .line 57
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v2, v1}, Lbr/com/vansschedule/ScheduleShoppingList;->setTimeDisplay(II)V

    .line 58
    const/16 v1, 0x11

    aput-boolean v5, v0, v1

    return-void
.end method
