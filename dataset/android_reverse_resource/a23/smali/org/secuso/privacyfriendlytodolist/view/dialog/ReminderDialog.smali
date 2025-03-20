.class public Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;
.super Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;
.source "ReminderDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;
    }
.end annotation


# instance fields
.field private callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 3

    const v0, 0x7f0b0052

    .line 39
    invoke-direct {p0, p1, v0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 42
    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    cmp-long p2, p4, v0

    if-eqz p2, :cond_1

    .line 43
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :goto_0
    const p2, 0x7f090069

    .line 46
    invoke-virtual {p0, p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/DatePicker;

    const/4 p3, 0x1

    .line 48
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    const/4 p5, 0x2

    invoke-virtual {p1, p5}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v1, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$1;

    invoke-direct {v1, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$1;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;)V

    invoke-virtual {p2, p4, p5, v0, v1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    const p2, 0x7f090121

    .line 58
    invoke-virtual {p0, p2}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TimePicker;

    .line 59
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    const/16 p4, 0xb

    .line 60
    invoke-virtual {p1, p4}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    const/16 p4, 0xc

    .line 61
    invoke-virtual {p1, p4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    const p1, 0x7f090038

    .line 63
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 64
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$2;

    invoke-direct {p2, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$2;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09003b

    .line 73
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 74
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$3;

    invoke-direct {p2, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$3;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09003a

    .line 84
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 85
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$4;

    invoke-direct {p2, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$4;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090039

    .line 98
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 99
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$5;

    invoke-direct {p2, p0}, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$5;-><init>(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;)Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;

    return-object p0
.end method


# virtual methods
.method public setCallback(Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog;->callback:Lorg/secuso/privacyfriendlytodolist/view/dialog/ReminderDialog$ReminderCallback;

    return-void
.end method
