.class public Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;
.super Landroid/widget/LinearLayout;
.source "CalendarView.java"


# static fields
.field private static final MAX_DAY_COUNT:I = 0x2a


# instance fields
.field private buttonNextMonth:Landroid/widget/ImageView;

.field private buttonPrevMonth:Landroid/widget/ImageView;

.field private calendarGrid:Landroid/widget/GridView;

.field private currentDate:Ljava/util/Calendar;

.field private gridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

.field private tvCurrentMonth:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->initGui(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->initGui(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->initGui(Landroid/content/Context;)V

    return-void
.end method

.method private getMonth(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN MONTH"

    return-object p1

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e008e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 152
    :pswitch_2
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e008f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_3
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e00a8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :pswitch_4
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :pswitch_5
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0071

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 144
    :pswitch_6
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0072

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 142
    :pswitch_7
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0078

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :pswitch_8
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0031

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 138
    :pswitch_9
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0077

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 136
    :pswitch_a
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0056

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 134
    :pswitch_b
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initGui(Landroid/content/Context;)V
    .locals 1

    const-string v0, "layout_inflater"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0024

    .line 89
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->currentDate:Ljava/util/Calendar;

    const p1, 0x7f090097

    .line 94
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->buttonPrevMonth:Landroid/widget/ImageView;

    const p1, 0x7f090095

    .line 95
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->buttonNextMonth:Landroid/widget/ImageView;

    const p1, 0x7f09012a

    .line 96
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->tvCurrentMonth:Landroid/widget/TextView;

    const p1, 0x7f090088

    .line 97
    invoke-virtual {p0, p1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->calendarGrid:Landroid/widget/GridView;

    return-void
.end method


# virtual methods
.method public incMonth(I)V
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    return-void
.end method

.method public refresh()V
    .locals 8

    .line 103
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x2

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 108
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x7

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v5, v4

    neg-int v5, v5

    .line 112
    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 115
    iget-object v5, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->gridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    invoke-virtual {v5}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->clear()V

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x2a

    if-ge v5, v6, :cond_0

    .line 118
    iget-object v6, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->gridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->insert(Ljava/lang/Object;I)V

    .line 119
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->gridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    invoke-virtual {v0, v2}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->setMonth(I)V

    .line 123
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->gridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    invoke-virtual {v0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;->notifyDataSetChanged()V

    .line 126
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->tvCurrentMonth:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->getMonth(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDayOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->calendarGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setGridAdapter(Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->gridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    .line 65
    iget-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->calendarGrid:Landroid/widget/GridView;

    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->gridAdapter:Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarGridAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-virtual {p0}, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->refresh()V

    return-void
.end method

.method public setNextMonthOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->buttonNextMonth:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPrevMontOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/secuso/privacyfriendlytodolist/view/calendar/CalendarView;->buttonPrevMonth:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
