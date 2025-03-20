.class public Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CalendarGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private currentMonth:I

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private inflater:Landroid/view/LayoutInflater;

.field private oldColors:Landroid/content/res/ColorStateList;

.field private tasksPerDay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;>;"
        }
    .end annotation
.end field

.field private todoTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "d"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 56
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->tasksPerDay:Ljava/util/HashMap;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private dateToStr(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    .line 119
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 69
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    .line 71
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 75
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 78
    new-instance p2, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;

    const/4 v3, 0x0

    invoke-direct {p2, p0, v3}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;-><init>(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$1;)V

    .line 80
    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0b0025

    invoke-virtual {v3, v4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v3, 0x7f090129

    .line 81
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p2, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;->dayText:Landroid/widget/TextView;

    .line 82
    iget-object v3, p2, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;->dayText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->oldColors:Landroid/content/res/ColorStateList;

    .line 84
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    :goto_0
    const/4 v3, 0x2

    .line 91
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->currentMonth:I

    if-eq v3, v4, :cond_1

    .line 92
    iget-object v1, p2, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;->dayText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060042

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-direct {p0, v2, v1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->sameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p2, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;->dayText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060028

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 96
    :cond_2
    iget-object v1, p2, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;->dayText:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->oldColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 100
    :goto_1
    sget-object v1, Lorg/secuso/privacyfriendlytodolist/model/Helper;->DATE_FORMAT:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->tasksPerDay:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    .line 103
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    .line 105
    invoke-virtual {v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08005c

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 108
    :cond_4
    iget-object p1, p2, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;->dayText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 110
    :cond_5
    iget-object p1, p2, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;->dayText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 113
    :goto_3
    iget-object p1, p2, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter$CalendarDayViewHolder;->dayText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->dateToStr(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public setMonth(I)V
    .locals 0

    .line 128
    iput p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->currentMonth:I

    return-void
.end method

.method public setTodoTasks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
            ">;>;)V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->tasksPerDay:Ljava/util/HashMap;

    return-void
.end method
